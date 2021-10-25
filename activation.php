<?php
include('./db.php');

$id = $_GET['id']; 
$query = mysqli_query($con, "UPDATE user SET status=1 WHERE id = '$id'") or die(mysqli_error($con));

if($query)
{
    echo
        '<script>
            alert("Account Activated Succesfully"); window.location = "./page/loginPage.php"
        </script>';
}
else
{
    echo
        '<script>
            alert("Account Activation Failed! "); window.location = "./page/registerPage.php"
        </script>';
}
  
?>