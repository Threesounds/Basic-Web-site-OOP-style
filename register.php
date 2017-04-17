<?php
    session_start();
    require_once 'classes/config.php';
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
    <h3>PLEASE REGISTER</h3>
    <form action="#" method="post">
        <input type="text" name="username" onblur="validate(this)" value="<?php if (isset($_POST['username'])) { echo $_POST['username'];} ?>" placeholder="Enter username"><br>
        <input type="email" name="email" onblur="validate(this)" placeholder="Enter email" value="<?php if (isset($_POST['email'])) { echo $_POST['email'];} ?>"><br>
        <input type="password" name="password" onblur="validate(this)" value="<?php if (isset($_POST['password'])) { echo $_POST['password'];} ?>" placeholder="Enter password"><br>
        <input type="submit" name="submit" value="REGISTER">
        <?php
        if (isset($_POST['submit'])) {
            if (!empty($_POST['username']) && !empty($_POST['password']) && !empty($_POST['email'])) {
                  $reg->reg();
            } else
                echo "<p style='color: red;'>Please fill empty fields.</p>";
        }
        ?>
    </form>
    <a href="index.php">Back</a>
</div>

</body>
</html>
<script type="text/javascript">
    function validate(f) {
        if (f.value == "") {
            f.style.borderColor = 'red';
        } else
            f.style.borderColor = '';
    }
</script>