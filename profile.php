<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'phpucp';
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());
}
$stmt = $con->prepare('SELECT password, regdate, ingame_name FROM accounts WHERE id = ?');
$stmt->bind_param('i', $_SESSION['id']);
$stmt->execute();
$stmt->bind_result($password, $regdate, $ign);
$stmt->fetch();
$stmt->close();
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>My Profile</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1>Narcotic Roleplay UCP</h1>
				<a href="home.php"><i class="fas fa-home"></i>Home</a>
				<a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
		</nav>
		<div class="content">
			<h2>Profile Page</h2>
			<div>
				<p>Your account details are below:</p>
				<table>
					<tr>
						<td>Username:</td>
						<td><?=$_SESSION['name']?></td>
                    </tr>
                    <tr>
                        <td>Registration Date:</td>
                        <td><?=$regdate?></td>
                    </tr>
					<tr>
						<td>Ingame name:</td>
						<td><?=$ign?></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td>*********</td>
				</table>
			</div>
			<h2>Player stats</h2>
			<div>
				<table>
					<tr>
						<td>Level:</td>
						<td></td>
					<tr>
					<tr>
						<td>Experience:</td>
						<td></td>
					<tr>
					<tr>
						<td>Hours:</td>
						<td></td>
					<tr>
					<tr>
						<td>Total wealth:</td>
						<td></td>
					<tr>
				</table>
			</div>
		</div>
    </body>
</html>