
<form action="#" method="post">
    <textarea name="add_comment" onblur="validate(this)" placeholder="Komentar"></textarea><br>
    <input id="test" type="submit" name="add_submit" value="ADD COMMENT">
<?php   if(isset(($_SESSION['username']))){
        if (isset($_POST['add_submit'])) {
            if (!empty($_POST['add_comment'])) {
                 
                $add->add_com();
            } else
                echo "<p style='color: red;'>Please fill empty fields</p>";

        } 
    }
    ?>
