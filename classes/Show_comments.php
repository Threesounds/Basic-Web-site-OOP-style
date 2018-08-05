<?php

class Show_comments
    {
    public static function render_comments() {
        $id = $_GET['id'];
        $comment = Database::$connection->query("SELECT * FROM komentari WHERE blog_id = '$id'");
        while ($rw_com = $comment->fetchObject()) {
            ?>
            <p id="test" on style="text-align: left; margin-left: 40px;margin-bottom:5px;padding: 10px; border: 1px solid #cfcfcf;">
                <?php
                    echo "<b>" .$rw_com->comment_name ."</b>" . " commented | " .  $rw_com->comment;
                    if(isset($_SESSION['user_id'])){
                        if ($_SESSION['user_id'] == $rw_com->login) {
                            echo " <a href='classes/remove.php?id={$rw_com->id}'><i class='fa fa-times-circle'></i> Уклони коментар</a>";
                        }
                    }
                ?>
            </p> 
            <?php  
        }
    }
}
