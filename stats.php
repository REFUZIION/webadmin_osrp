<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'osrp';
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());
}
$stmt = $con->prepare('SELECT `level`, `exp`, `hours`, `cash`, `bank`, `skin`, `weed`, `cocaine`, `meth`, `materials` FROM `users`');
// $stmt->bind_param('i', $_SESSION['id']);
$stmt->execute();
$stmt->bind_result($level, $experience, $hours, $cash, $bank, $skin, $weed, $cocaine, $meth, $materials);
$stmt->fetch();
$stmt->close();
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>My Profile</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
		<link href="css/stats.css" rel="stylesheet" type="text/css">
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
			<h2>Player stats and Inventory</h2>
			<div>
				<img class="skin" src="img/skins/Skin_<?=$skin?>.png" width="110px" height="200px">
				<table>
					<tr>
						<td>Level:</td>
						<td><?=$level?></td>
					<tr>
					<tr>
						<td>Experience:</td>
						<td><?=$experience?></td>
					<tr>
					<tr>
						<td>Hours:</td>
						<td><?=$hours?></td>
					<tr>
					<tr>
						<td>Cash:</td>
						<td>$<?=number_format("$cash")?></td>
					<tr>
					<tr>
						<td>Bank balance:</td>
						<td>$<?=number_format("$bank")?></td>
					<tr>
					<tr>
						<td>Cocaine:</td>
						<td><?=number_format("$weed")?>g</td>
					<tr>
					<tr>
						<td>Weed:</td>
						<td><?=number_format("$cocaine")?>g</td>
					<tr>
					<tr>
						<td>Meth:</td>
						<td><?=number_format("$meth")?>g</td>
					<tr>
					<tr>
						<td>Materials:</td>
						<td><?=number_format("$materials")?></td>
					<tr>
				</table>
			</div>
		</div>
    </body>
</html>
