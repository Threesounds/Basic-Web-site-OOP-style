<?php
class Add_comments
{
   
    public function add_com() {
        $comment_name = $_SESSION['username'];
        $comment = ($_POST['add_comment']);
        $login = $_SESSION['user_id'];
        $blog_id = $_GET['id'];
        
        try {
            Database::$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $addRes = Database::$connection->prepare("INSERT INTO `komentari` (`comment_name`, `comment`, `login`, `blog_id`) VALUES (:comment_name, :comment, :login, :blog_id)");

        $addRes->bindParam(":comment_name", $comment_name);
        $addRes->bindParam(":comment", $comment);
        $addRes->bindParam(":login", $login);
        $addRes->bindParam(":blog_id", $blog_id);
        $addRes->execute();
     
            }
catch(PDOException $e)
    {
    echo "Error: " . $e->getMessage();

    }

$conn = null;

    }
    }   
?>