<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Website</title>
    <link rel="stylesheet" href="CSS/Style.css">
    <script src="JavaScript/JSscript.js"></script>  <!-- Set Menu height = Main height (option) -->
</head>
<body>
    <div id="header">
    <div style="text-align: center"><img src="Image/hd2.jpg" alt="BTEC logo"  height = "150"/>
    </div>
    
    <div id="menu">
        <p class="menulist"><a class="menu" href=".">Home</a></p>
        <p class="menulist"><a class="menu" href="index.php?page=Introduction">Introduction</a></p>
        <p class="menulist"><a class="menu" href="index.php?page=Product">Product</a></p>
        <p class="menulist"><a class="menu" href="index.php?page=Contact">Contact</a></p>
        
        <?php
            if(isset($_SESSION['user'])){
                echo '<p class="menulist"><a class="menu" href="index.php?page=Cart">View Cart</a></p>';
                echo '<p class="menulist"><a class="menu" href="index.php?page=Profile">Profile</a></p>';
                echo '<p class="menulist"><a class="menu" href="Logout.php">Logout</a></p>';
            }
            else{
                echo '<p class="menulist"><a class="menu" href="index.php?page=Login">Login</a></p>';
                echo '<p class="menulist"><a class="menu" href="index.php?page=Registration">Registration</a></p>';
            }
        ?>
        
    </div>
    
    <div id="main">
        <?php
            if(isset($_GET['page'])){
                if($_GET['page'] === "Introduction")
                    require_once ("Introduction.html");
                else if($_GET['page'] === "Registration")
                    require_once ("Registration.php");
                else if($_GET['page'] === "Product")
                    require_once ("Product.php");
                else if($_GET['page'] === "ProductDetail")
                    require_once ("ProductDetail.php");
                else if($_GET['page'] === "Login")
                    require_once ("Login.php");
                else if($_GET['page'] === "Cart")
                    require_once ("Cart.php");
                else if($_GET['page'] === "Profile")
                    require_once ("Profile.php");
                else if($_GET['page'] === "ModifyProfile")
                    require_once ("ModifyProfile.php");
                else if($_GET['page'] === "Contact")
                    require_once ("Contact.php");
            }else{
                require_once ("Product.php");
            }
        ?>
    </div>
    
    <div id="footer">
        <p><b>BTEC Cần Thơ</b> &#169; HoaiBao_Bc00067<br></p>
        <i>Address:</i>KP Vĩnh Phước Giồng Riềng Kiên Giang <br>
        <i>Phone:</i> +84 329***642
            
    </div>

</body>
</html>