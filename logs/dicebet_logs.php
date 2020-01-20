<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
 $val = "";
 if( isset($_POST['characters']) ) {
   $val = $_POST['characters'];
 }
 $servername = "localhost";
 $dbname     = "cms";
 $username   = "root";
 $password   = "";
 $conn = new mysqli($servername, $username, $password, $dbname);
 if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
 }
 // Formuleer hieronder de query
       // 1) Begin met het opstellen van een query die alle gebruikers ophaalt (testen in phpmyadmin, tabje SQL)
       // 2) Maak daarna de stap waarin je de query verfijnd met behulp van een LIKE (zie presentatie, daarna testen in phpmyadmin, tabje SQL)
 $sql = "SELECT * FROM `log_dicebet` WHERE `description` LIKE '%$val%' ORDER BY 'date'";
 if ($result = $conn->query($sql)) {
   $str = ""; // Leeg gemaakt zodat de geanimeerde achtergrond werkt.
   while ($row = $result->fetch_assoc()) {
     // Pas hieronder de $row variabele aan, zodat de juiste waarden worden opgehaald (zie presentatie en demo)
                       // De $row variabele is een associatieve array met waarden uit de database, die waarden kan je ophalen met behulp van kolomnamen
                       // Als je niet weet hoe een associatieve array werkt in PHP, doe daar dan onderzoek naar!
     $str .= "<div class='listitem' style='border:1px solid black; margin:3px; padding:2px;'>" . $row['date'] . " " . $row['discription'] . "</div>";
   }
   $str .= ""; // Leeg gemaakt zodat de geanimeerde achtergrond werkt.
   $result->free();
 }
 $conn->close();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Home Page</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
</head>
<body class="loggedin">
    <nav class="navtop">
        <div>
            <h1>Narcotic Roleplay UCP</h1>
            <a href="../home.php"><i class="fas fa-home"></i>Home</a>
            <a href="../profile.php"><i class="fas fa-user-circle"></i>Profile</a>
            <a href="../stats.php"><i class="fas fa-address-card"></i>Ingame Stats</a>
            <a href="../logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
        </div>
    </nav>
    <div class="sidebar">
        <a href="ban_logs.php"><i class="fas fa-scroll"></i>Ban Logs</a><br>
        <a href="kill_logs.php"><i class="fas fa-scroll"></i>Kill Logs</a><br>
        <a href="kick_logs.php"><i class="fas fa-scroll"></i>Kick Logs</a><br>
        <a href="admin_logs.php"><i class="fas fa-scroll"></i>Admin Logs</a><br>
        <a href="pay_logs.php"><i class="fas fa-scroll"></i>Pay Logs</a><br>
        <a href="dicebet_logs.php"><i class="fas fa-scroll"></i>Dicebet Logs</a><br>
        <a href="givegun_logs.php"><i class="fas fa-scroll"></i>Givegun Logs</a><br>
    </div>
    <div class="content">
        <h2>Dicebet Logs</h2>
        <form action="" method="post">
        <label value="hoi" for="characters">Search dicebet for:</label>
        <input type="text" id="characters" name="characters" value="<?php echo $val; ?>" autofocus />
        </form>
        <script>
        function onFormFocus(element) {
            element.selectionStart = element.selectionEnd = element.value.length;
        }
        function onFormInput() {
            document.forms[0].submit();
        }
        </script>
        <div><?php echo $str; ?></div>
        </div>
</body>
</html>