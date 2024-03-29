<?php
session_start();
// establish DB connection
require "../config/userdbconn.php";
// Check if the data from the login form was submitted, isset() will check if the data exists.
if ( !isset($_POST['username'], $_POST['password']) ) {
	// Could not get the data that should have been sent.
	die ('Please fill both the username and password field!');
}
// SQL injection prevention.
if ($stmt = $con->prepare('SELECT id, password FROM accounts WHERE username = ?')) {
	$stmt->bind_param('s', $_POST['username']);
	$stmt->execute();
	// Stores the result so it can check if the account exists in the database.
	$stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($id, $password);
        $stmt->fetch();
        // Account exists, now verify the password.
        if (password_verify($_POST['password'], $password)) {
            // Verification success! User has loggedin!
            session_regenerate_id();
            $_SESSION['loggedin'] = TRUE;
            $_SESSION['name'] = $_POST['username'];
            $_SESSION['id'] = $id;
            header('Location: ../home.php');
        } else {
            echo 'Incorrect password! You will be redirected in 5 seconds.';
            header('Refresh: 5; ../index.html');
        }
    } else {
        echo 'Incorrect username! You will be redirected in 5 seconds.';
        header('Refresh: 5; ../index.html');
    }

	$stmt->close();
}
?>