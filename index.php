<?php
    session_start();
    if(isset($_GET["id"])){    
    $id1=$_GET["id"];                  
    }

    require "classes/config.php";
    
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    
</head>
<body>

<div class="forma">
    <h3>PLEASE REGISTER TO BE ABLE TO LEAVE COMMENTS</h3>
    <h3>РЕГИСТРУЈТЕ СЕ ДА БИСТЕ МОГЛИ ДА ОСТАВЉАТЕ КОМЕНТАРЕ</h3>
    <form action="#" method="post">
        <input type="text" name="username" onblur="validate(this)"  placeholder="Enter username"><br>
        <input type="password" name="password" onblur="validate(this)"  placeholder="Enter password"><br>
        <input type="submit" name="log_submit" placeholder="LOGIN">
        <?php
                if (isset($_POST['log_submit'])) {
               if ( !empty($_POST['username']) && !empty($_POST['password'])) {
                   $log_in->login_user();
        }else 
                {
                   echo "<p style='color: red;'>Please fill empty fields.</p>";
                }   
                } 
        ?>
    </form>
    <a href="Register.php">Do not have an account?Here register</a>
</div>

</body>
</html>

