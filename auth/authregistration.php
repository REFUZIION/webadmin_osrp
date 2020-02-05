<?php
// establish DB connection
require "../config/userdbconn.php";
if ( !isset($_POST['username'], $_POST['password']) ) {
	// Could not get the data that should have been sent.
    die ('Please fill both the username and password field!');
    header('Refresh: 5; ../index.html');
}
// create query
$sql = "INSERT INTO `accounts`(`username`, `password`, `regdate`) VALUES ('$USERNAME', '$PASSWORD_HASH', now())";
// attempting to execute the query
if ($con->query($sql) === TRUE) {
    // executed query successfully
    echo "Account successfully created, you will be redirected in 5 seconds.";
    header('Refresh: 5; ../index.html');
} else {
    // Failed executing query
    echo "Error: " . $sql . "<br>" . $con->error;
    header('Refresh: 5; ../index.html');
    }
// Closing connection
$con->close(); 
?>