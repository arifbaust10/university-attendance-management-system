<?php
    session_start();

    $username=$_SESSION['username'];

    if($username==true){
        
    }else{
        header("Location: login.php");
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["course_code"])) {
        $course_code=$_POST["course_code"];

   
    }


?>


<?php
include("connected.php"); 
if (isset($_GET['username'])) {
    $username = $_GET['username'];   
    $query = "SELECT * FROM users_teacher as ut 
              INNER JOIN teachers_course as tc ON ut.teacher_id=tc.teacher_id
              INNER JOIN course_details as cd ON tc.course_code=cd.course_code
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
    <link rel="stylesheet" href="attandanceStyle.css">
</head>
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
            
            <a href="http://localhost/arif/attandanceMain.php?username=<?php echo $username; ?>">Attandance</a>
            
            <a href="http://localhost/arif/attandancereport.php?username=<?php echo $username; ?>">Attandance Reprot</a>

            <a href="logout.php" style="float: right; margin-right:10px">Logout</a>
        <a href="http://localhost/arif/demo.php?username=<?php echo $username;  ?>" style="float: right; margin-right:10px">Profile</a>
        </div>
        
        <div class="page">             
            <div class="student_batch_select_section">
                <div class="label-area">
                    <label>Course Code With Course Name</label>
                </div>
                <form method="POST">
                    <div class="dropdown-area">
                        <select name="course_code">
                            <?php
                            if (isset($data)) {
                                while ($result = mysqli_fetch_assoc($data)) {
                                    $selected = ($result['course_code'] == $course_code) ? "selected" : "";
                                    echo "<option value=\"" . $result['course_code'] . "\" $selected>" . $result['course_code'] . ' - ' . $result['title'] . "</option>";
                                }
                            }
                            ?>
                        </select>
                        <div style="margin-bottom: 10px;">
                            <label for="classDate" style="display: inline-block; width: 100px;">Date:</label>
                            <input type="date" id="currentDate" name="classDate" >
                        </div>
                        <div style="margin-bottom: 10px;">
                            <label for="class_id" style="display: inline-block; width: 100px;">Extra Class:</label>
                            <select id="class_id" name="class_id" style="padding: 5px; width: 200px;">
                                <option value="0">None</option>
                                <option value="1">Extra Class 1</option>
                                <option value="2">Extra Class 2</option>
                                <option value="3">Extra Class 3</option>
                            </select>
                        </div>

                        <script>
                            var currentDate = new Date();
                            var day = currentDate.getDate();
                            var month = currentDate.getMonth() + 1;
                            var year = currentDate.getFullYear();

                            if (month < 10) month = '0' + month;
                            if (day < 10) day = '0' + day;

                            var formattedDate = year + '-' + month + '-' + day;

                            document.getElementById('currentDate').value = formattedDate;
                        </script>

                        <div class="searchbtn">
                            <input type="submit" name="searchbtn" value="Load Student">
                        </div>
                    </div>
                </form>
            </div>
            <?php
            if (isset($_POST['searchbtn'])) {
                $course_code = $_POST['course_code'];
                $date = $_POST['classDate'];
                $class_id = $_POST['class_id'];


                $query = "SELECT *
                FROM attendance as a INNER JOIN
                student as s
                on a.student_id=s.student_id
                WHERE course_code='$course_code' AND date='$date' and class_id='$class_id'"; 
                $data = mysqli_query($conne, $query);
                $total = mysqli_num_rows($data);
                if ($total != 0) {
                    ?>
                    <form method="POST" action="">
                        <table>
                            <thead>
                                <tr>
                                    <th>Student ID</th>
                                    <th>Student Name</th>
                                    <th>Course Code</th>
                                    <th>Present State</th>
                                    


                                </tr>
                            </thead>
                            <tbody>
                            <?php
                                while ($result = mysqli_fetch_assoc($data)) {
                                    ?>
                                    <tr>
                                        <td><input type='hidden' name='student_id[]' value='<?php echo $result['student_id']; ?>'><?php echo $result['student_id']; ?></td>
                                        <td><input type='hidden' name='student_name[]' value='<?php echo $result['student_name']; ?>'><?php echo $result['student_name']; ?></td>
                                        <td><input type='hidden' name='course_code[]' value='<?php echo $result['course_code']; ?>'><?php echo $result['course_code']; ?></td>                                                                       <td>
                                        <input type='checkbox' name='check[]' value='<?php echo $result['student_id']; ?>' <?php echo ($result['present_state'] == 'present' ? 'checked' : ''); ?>>
                                    </td>

                                    </tr>
                                    <?php
                                }
                                ?>




                            </tbody>
                        </table>

                    <div class="searchbtn">
                    <input type="submit" name="update" value="Update">

                    </div>
                        
                    </form>

                    
                    <?php
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
</html>

<?php
    if(isset($_POST['update'])) {
        $studentIds = $_POST['student_id'];
        $courseCodes = $_POST['course_code'];

        $presentStates = isset($_POST['check']) ? $_POST['check'] : array(); 

        for($i = 0; $i < count($studentIds); $i++) {
            $studentId = $studentIds[$i];
            $courseCode = $courseCodes[$i];
            
            $presentState = (in_array($studentId, $presentStates)) ? 'present' : 'absent';
            
            $query = "UPDATE attendance SET present_state='$presentState' WHERE student_id='$studentId' AND course_code='$courseCode'";
            mysqli_query($conne, $query);
            
        }
    }

?>