<?php 
$USERNAME        = $_POST['username'];
$PASSWORD_STRING = $_POST["password"]; 
$PASSWORD_HASH   = password_hash($PASSWORD_STRING, PASSWORD_BCRYPT);
$DATABASE_HOST   = 'localhost';
$DATABASE_USER   = 'root';
$DATABASE_PASS   = '';
$DATABASE_NAME   = 'phpucp';
// Establish connection to the DB
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ( mysqli_connect_errno() ) {
	// If there is an error with the connection, stop the script and display the error.
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());
}
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