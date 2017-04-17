<?php
session_start();
if(!isset($_SESSION['username'])){
	header('location:index.php');
}
require_once"classes/config.php";
require"user.php";
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
<meta name="viewport" content="width=device-width">
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
<h3>Добродошли <?php echo $_SESSION['username'] ; ?><a href="logout.php"> <strong>Одјавите се</strong></a></h3>

<div id="wrap">
<header id="header"><img  src="cropped-ZvanicniLogo.png" alt="" width="100" height="100" class="img1"/><h1>DOBRODOŠLI NA PREZENTACIJU GRADA PANČEVA</h1>
</header>
<nav id="nav"><ul id="ul">
<li><a href="home.php?id=2"><strong>ПОЧЕТНА</strong></a></li>
<li><a href="Istorija.php?id=2"><strong>ИСТОРИЈА</strong></a></li>
<li><a href="Ostalo.php?id=2"><strong>ОСТАЛО</strong></a></li>
<li><a href="Video.php?id=2"><strong>ВИДЕО</strong></a></li>
<li><a href="Kontakt.php?id=2"><strong>КОНТАКТ</strong></a></li>
<li><a href="http://www.rtvpancevo.rs" target="_blank"><strong>РТВ ПАНЧЕВО</strong></a></li>
</ul></nav>
<main id="main"><h1>Поставите питање</h1>
  <fieldset class="фиелд"><legend >Поља за унос</legend><input type="text" autofocus required class="input" title="Име" value="Име:">
  <input type="text" autofocus required class="input" title="Презиме" value="Презиме:">
  &nbsp;&nbsp;
  <input type="email" autofocus required class="input" title="E mail" value="E mail:"><textarea rows="8" autofocus required class="input">Унесите поруку:</textarea><input type="submit" autofocus class="submit" value="Пошаљи"></fieldset></main>
<aside id="sidebar">
<iframe width="330" height="200" src="https://www.youtube.com/embed/IyrDwnOSKzU" frameborder="0" allowfullscreen></iframe>
<img src="330px-Plan_Pančeva_18._vek.jpg" width="330" height="323" alt=""/> </aside>
<footer id="footer"><p><a href="https://sr.wikipedia.org/sr/Панчево" title="Wikipedija" target="_blank" class="link">SAZNAJTE VIŠE</a></p></footer>


<?php
	require"add_comment.php";
	$show->render_comments();
?>


</div>
</body>
</html>
