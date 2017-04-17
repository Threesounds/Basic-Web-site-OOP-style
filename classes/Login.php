<?php

class Login
{
    public function login_user() 
    {
        $username = $_POST['username'];
        $password = $_POST['password'];
        try{
            Database::$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $login_res = Database::$connection->prepare("SELECT * FROM korisnici");
        $login_res->bindParam(":username", $username);
        $login_res->bindParam(":password", $password);
        $login_res->execute();
        while ($rw_log = $login_res->fetchObject('Cookies')) {
            if ($rw_log->username == $username && $rw_log->password == $password) {
                $rw_log->setCookies();
                header("Location:home.php?id=2");
            }
        } echo "<p style='color: red;'>Wrong username or password</p>";
    }
    catch(PDOException $e)
    {
    echo "Error: " . $e->getMessage();
    }
$conn = null;
    

}
}