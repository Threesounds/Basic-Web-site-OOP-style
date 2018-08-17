<?php
session_start();
session_regenerate_id();
if(!isset($_GET['id'])){
  header('Location:home.php?id=2');
}
if(!isset($_SESSION['username'])){
	echo '<a href="index.php">Улогујте се</a> да би оставили коментар';
  
}
require_once"classes/config.php";
?>

<!doctype html>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>Добродошли</title>
</head>

<body>

<div><?php if(isset($_SESSION['username']))
{ 
  echo "<h3>Добродошли" ."&nbsp". $_SESSION['username']."&nbsp"."<a href=\"logout.php\"><strong>Logout</strong></a></h3>";
}
?>
</div>
<div id="wrap">
<header id="header"><img  src="img/cropped-ZvanicniLogo.png" alt="" width="100" height="100" class="img1"/><h1>DOBRODOŠLI NA PREZENTACIJU GRADA PANČEVA</h1>
</header>
<nav id="nav"><ul id="ul">
<li><a href="home.php?id=2"><strong>ПОЧЕТНА</strong></a></li>
<li><a href="home.php?id=3"><strong>ИСТОРИЈА</strong></a></li>
<li><a href="home.php?id=4"><strong>ОСТАЛО</strong></a></li>
<li><a href="home.php?id=5"><strong>ВИДЕО</strong></a></li>
<li><a href="home.php?id=6"><strong>КОНТАКТ</strong></a></li>
<li><a href="http://www.rtvpancevo.rs" target="_blank"><strong>РТВ ПАНЧЕВО</strong></a></li>
</ul></nav>
<main id="main"><h1>Панчево</h1>
  <?php
        $id = ($_GET['id']);

        $tekst = Database::$connection->query("SELECT * FROM tekst WHERE id = '$id'");
        while ($rw_cat = $tekst->fetchObject()) {
    ?>        
  <div>
<?php echo $rw_cat->tekst; ?>

   </div>
   <?php
  }
?>
 </main>
<aside id="sidebar">
 <?php

        $tekst = Database::$connection->query("SELECT * FROM tekst WHERE id = '$id'");
        while ($rw_cat = $tekst->fetchObject()) {
    ?>        
  <div>
<?php echo $rw_cat->aside; ?>

   </div>
   <?php
  }
?>
 </aside>
<footer id="footer"><p><a href="https://sr.wikipedia.org/sr/Панчево" title="Wikipedija" target="_blank" class="link">SAZNAJTE VIŠE</a></p></footer>

<?php
if(isset($_SESSION['username']))
{
	include"add_comment.php";
}
$show->render_comments();
?>
<script>
                setInterval('document.getElementById("wrap")',2000);
</script>
</div>
</body>
</html>