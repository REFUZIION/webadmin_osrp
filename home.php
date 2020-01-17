<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Home Page</title>
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
    <div class="sidebar">
        <a href="logs/ban_logs.php"><i class="fas fa-scroll"></i>Ban Logs</a><br>
        <a href="logs/kill_logs.php"><i class="fas fa-scroll"></i>Kill Logs</a><br>
        <a href="logs/kick_logs.php"><i class="fas fa-scroll"></i>Kick Logs</a><br>
        <a href="logs/admin_logs.php"><i class="fas fa-scroll"></i>Admin Logs</a><br>
        <a href="logs/pay_logs.php"><i class="fas fa-scroll"></i>Pay Logs</a><br>
        <a href="logs/dicebet_logs.php"><i class="fas fa-scroll"></i>Dicebet Logs</a><br>
        <a href="logs/givegun_logs.php"><i class="fas fa-scroll"></i>Givegun Logs</a><br>
    </div>
    <div class="content">
        <h2>Home Page</h2>
        <p>Welcome back, <?=$_SESSION['name']?>!</p>
        <br>
        <p>Changelog:<br><br>
        - UCP has been updated to version 1.0!<br>
        </p>
    </div>
</body>
</html>