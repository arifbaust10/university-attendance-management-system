<?php
    session_start();

    $username=$_SESSION['username'];

    if($username==true){
        
    }else{
        header("Location: login.php");
    }
?>

<?php
    include("connected.php");

    if (isset($_GET['username'])) {
        $username = $_GET['username'];

        $query ="SELECT t.teacher_id,t.teacher_name,t.department_id,d.department_name,td.designation,td.phone,td.email,td.address,td.date_of_birth,td.gender,td.education_qualification,td.areas_of_interest,t.tea_img
        FROM users_teacher AS ut INNER JOIN 
        teacher as t 
        on t.teacher_id =ut.teacher_id
        INNER JOIN
        teacher_details as td
        on td.teacher_id =t.teacher_id
        INNER JOIN
        department as d
        on d.department_id = t.department_id
        WHERE username='$username'";

        $data = mysqli_query($conne, $query);
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Attendance Management System</title>
<link rel="stylesheet" href="demo.css">
<body>

<div id="mySidebar" class="sidebar">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
    <a href="#">Home</a>
    <a href="#">Students</a>
    <a href="#">Teachers</a>
    <a href="#">Attendance</a>
    <a href="#">Reports</a>
</div>

<div class="content" id="main">
    <div class="navbar">
        <a href="#" onclick="openNav()">☰</a>
      

        <a href="http://localhost/arif/attandanceMain.php?username=<?php echo $username; ?>">Attendance</a>
        <a href="http://localhost/arif/check.php?username=<?php echo $username; ?>">Check Attandance</a>
        <a href="http://localhost/arif/attandancereport.php?username=<?php echo $username; ?>">Attandance Reprot</a>

        
        <a href="logout.php" style="float: right; margin-right:10px">Logout</a>
    </div>
    
    <div class="main">
        <?php
        if (isset($data)) {
            while ($result = mysqli_fetch_assoc($data)) {
               ?> <div class="container" style="display: flex; justify-content: space-between;">
    <div class="main" style="font-family: Arial, sans-serif;">
    <?php

        $imgname=$result['tea_img'];

        echo "<img src='images/$imgname' width='200' height='200'>";
    ?>
    </div>
    <div class="main" style="font-family: Arial, sans-serif;">
        <?php
        echo '<p style="font-size: 16px; font-weight: bold; color: black;">' . $result['teacher_name'] . '</p>';
        echo '<p style="font-size: 14px; color: gray;">Designation: ' . $result['designation'] . '</p>';
        echo '<p style="font-size: 14px; color: gray;">Education Qualification: ' . $result['education_qualification'] . '</p>';
        ?>
    </div>
    <div class="">
        ..
    </div>
    <div class="main" style="font-family: Arial, sans-serif;">
        <?php
        ?>
        Mobile:<?php
        echo '<p style="font-size: 14px; color: gray;"> ' . $result['phone'] . '</p>';
        ?>
        Email:<?php
        echo '<p style="font-size: 14px; color: gray;">' . $result['email'] . '</p>';
        ?>
    </div>
</div>


              <div class="main" style={}>
                <p style="font-size: 16px; font-weight: bold;">Areas of Interest:</p>

                    <?php
                         echo '<p style="color: blue;">' . $result['areas_of_interest'] . '</p>';
                ?>
                </div><?php
            }
        }
        ?>
    </div>
    
</div>

<script>
function openNav() {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
}
</script>

</body>
</html

