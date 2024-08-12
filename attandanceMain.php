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
           
            <?php

    $username = $_GET['username'];   
    $query1 = "SELECT * FROM users_teacher as ut 
              INNER JOIN teachers_course as tc ON ut.teacher_id=tc.teacher_id
              INNER JOIN course_details as cd ON tc.course_code=cd.course_code
              WHERE username='$username'";

    $data1 = mysqli_query($conne, $query1);
    $result1 = mysqli_fetch_assoc($data1)
    
?>
        

        <a href="http://localhost/arif/check.php?username=<?php echo $username; ?>">Check Attandance</a>
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
                            <input type="date" id="currentDate" name="classDate" readonly>
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

                $query = "SELECT sc.student_id,s.student_name,sc.course_code
                FROM students_course as sc INNER JOIN
                     student as s
                     on s.student_id=sc.student_id
                     WHERE course_code='$course_code'and sc.State='incomplete'"; 
                $data = mysqli_query($conne, $query);
                $total = mysqli_num_rows($data);


                $check = "SELECT *
                FROM attendance
                WHERE course_code='$course_code' AND date='$date' AND class_id='$class_id'"; 
                $checks = mysqli_query($conne, $check);
                $checkstotals = mysqli_num_rows($checks);

                
                if ($total != 0 ) {
                    if($checkstotals!=0){
                        ?>
                        <div>
                            <article style="text-align: center; font-weight: bold; color: red;">Present taken for today </article>
                        </div>
        
                    <?php
                    
                     } else{
                            
                    ?>
                    <form method="POST" action="#">
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
                                        echo "
                                        <tr>
                                            <td><input type='hidden' name='student_id[]' value='" . $result['student_id'] . "'>" . $result['student_id'] . "</td>
                                            <td><input type='hidden' name='student_name[]' value='" . $result['student_name'] . "'>" . $result['student_name'] . "</td>
                                            
                                            <td><input type='hidden' name='course_code[]' value='" . $result['course_code'] . "'>" . $result['course_code'] . "</td>
                                            <td>
                                                <input type='checkbox' name='check[]' value='" . $result['student_id'] . "'> 
                                            </td>
                                        </tr>";
                                    }
                                    ?>

                            </tbody>
                        </table>
                        <input type="hidden" name="classDate" value="<?php echo $date; ?>">
                        <input type="hidden" name="class_id" value="<?php echo $class_id; ?>">

                        <div class="searchbtn" >
                             <input type="submit" name="Update" value="Submit" style="margin: 0 auto;" onclick="return confirm('Are you sure you went to submit?'); ">
                        </div>
                    </form>

                    
                    <?php
                }
            }else {
            ?>
                <div>
                    <article style="text-align: center; font-weight: bold; color: red;">Student are not assigned this course</article>
                </div>

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

if(isset($_POST['Update'])) {
    $classDate = $_POST['classDate'];
    $studentIds = $_POST['student_id'];
    $courseCodes = $_POST['course_code'];
    $class_id = $_POST['class_id'];



    $presentStates = isset($_POST['check']) ? $_POST['check'] : array(); 

    for($i = 0; $i < count($studentIds); $i++) {
        $studentId = $studentIds[$i];
        $courseCode = $courseCodes[$i];
        
        $presentState = (in_array($studentId, $presentStates)) ? 'present' : 'absent';

        $query = "INSERT INTO `attendance`(`student_id`, `course_code`, `date`, `present_state`, `class_id`) 
                  VALUES ('$studentId', '$courseCode', '$classDate', '$presentState', '$class_id')";

        mysqli_query($conne, $query);
    }
    // Redirect to success page or do something else after insertion
    //header("Location: success.php?username=$username");
    // exit();
}


?>
