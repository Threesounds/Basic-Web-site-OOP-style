<?php

class Register_form
{
    
    public function reg() {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = md5($_POST['password']);
        try {
            Database::$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            Database::$connection->setAttribute(PDO::ATTR_EMULATE_PREPARES, TRUE);
            $reg = Database::$connection->prepare("INSERT INTO `korisnici` (`username`, `password`,`email`) VALUES (:username, :password, :email)");
            $reg->bindParam(":username",$username);
            $reg->bindParam(":password",$password);
            $reg->bindParam(":email",$email);
            $reg->execute();
            if ($reg) {
                echo "<p style='color: green;'><b>Thank you. You can now log in</b> (Page will redirect you to home page in 2 sek.)</p>";
                header( "refresh:2;url=index.php" );
                }
            }
catch(PDOException $e)
    {
    echo "Error: " . $e->getMessage();
    }
$conn = null;
            } 
        }
    
