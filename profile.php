<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
require "config/userdbconn.php";
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
				<a href="stats.php"><i class="fas fa-address-card"></i>Ingame Stats</a>
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
		</div>
    </body>
</html>