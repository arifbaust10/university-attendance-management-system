<?php
    session_start();

    $username=$_SESSION['username'];

    if($username==true){
        
    }else{
        header("Location: login.php");
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["course_code"])  && isset($_POST["formclassDate"]) && isset($_POST["toclassDate"])) {
        $course_code=$_POST["course_code"];
        $formclassDate=$_POST["formclassDate"];
        $toclassDate=$_POST["toclassDate"];
   
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
            
            <a href="http://localhost/arif/check.php?username=<?php echo $username; ?>">Check Attandance</a>

            <a href="logout.php" style="float: right; margin-right:10px">Logout</a>
        <a href="http://localhost/arif/demo.php?username=<?php echo $username;  ?>" style="float: right; margin-right:10px">Profile</a>
        </div>
        
        <div class="page">             
            <div class="student_batch_select_section">
                <div class="label-area">
                    <label>Course Code With Course Name</label>
                </div>
                <form  method="POST">
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
                            <label for="classDate" style="display: inline-block; width: 100px;">Date : </label>
                            
                            <input type="date" name="formclassDate" value="<?php echo $formclassDate; ?>">
                        </div>

                        



                        <div style="margin-bottom: 10px;">
                            <label for="classDate" style="display: inline-block; width: 100px;">To : </label>
                            <input type="date" name="toclassDate" value="<?php echo $toclassDate; ?>">
                        </div>

                 

                        <div class="searchbtn">
                            <input type="submit" name="searchbtn" value="Load Student">
                        </div>
                    </div>
                </form>
            </div>
            <?php
            if (isset($_POST['searchbtn'])) {
                $course_code = $_POST['course_code'];
                $formclassDate = $_POST['formclassDate'];
                $toclassDate = $_POST['toclassDate'];
                $class_id = $_POST['class_id'];

                


                $query = "SELECT sc.student_id,s.student_name,sc.course_code,s.batch
                FROM students_course as sc INNER JOIN
                     student as s
                     on s.student_id=sc.student_id
                     WHERE course_code='$course_code'and sc.State='incomplete'"; 
                $data = mysqli_query($conne, $query);
                $total = mysqli_num_rows($data);


                $check = "SELECT *
                FROM attendance
                WHERE course_code='$course_code'"; 
                
                $checks = mysqli_query($conne, $check);
                $checkstotals = mysqli_num_rows($checks);

                
                if ($total != 0 ) {
                    if($checkstotals==0){
                        ?>
                        <div>
                            <article style="text-align: center; font-weight: bold; color: red;">Present taken for today </article>
                        </div>
        
                    <?php
                    
                     } else{
                            
                    ?>
             
                        <table>
                            <thead>
                                <tr>
                                    <th>Student ID</th>
                                    <th>Student Name</th>
                                    <th>Course Code</th>
                                    <th>Batch</th>
                                    <th>Present</th>
                                    <th>Total</th>
                                    <th>Percentage(%)</th>
                                    <th>Report</th>
                               
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                            $totalclass = "SELECT COUNT(DISTINCT date, class_id)
                            FROM attendance
                            WHERE course_code='$course_code' AND date BETWEEN '$formclassDate' and '$toclassDate'"; 
                            
                            $totalclas = mysqli_query($conne, $totalclass);

                           $row= mysqli_fetch_assoc($totalclas);
                           $totalcla=$row['COUNT(DISTINCT date, class_id)'];






                                    while ($result = mysqli_fetch_assoc($data)) {

                                        $studi=$result['student_id'];
                                         

                                        $nowclass = "SELECT COUNT( student_id)
                                        FROM attendance
                                        WHERE student_id='$studi' and course_code='$course_code' AND date BETWEEN '$formclassDate' and '$toclassDate' and present_state='present'"; 
                                        
                                        
                                        $nowclassss = mysqli_query($conne, $nowclass);
            
                                       $rowa= mysqli_fetch_assoc($nowclassss);
                                       $stude=$rowa['COUNT( student_id)'];

                                       $percentage_formatted = ((100 * $stude) / $totalcla);
                                        $percentage = number_format($percentage_formatted, 2);
                                        




                                        echo "
                                        <tr>
                                            <td><input type='hidden' name='student_id[]' value='" . $result['student_id'] . "'>" . $result['student_id'] . "</td>
                                            <td><input type='hidden' name='student_name[]' value='" . $result['student_name'] . "'>" . $result['student_name'] . "</td>
                                            
                                            <td><input type='hidden' name='course_code[]' value='" . $result['course_code'] . "'>" . $result['course_code'] . "</td>
                                            <td><input type='hidden' name='batch[]' value='" . $result['batch'] . "'>" . $result['batch'] . "</td>
                                            
                                            <td><input type='hidden' name='batch[]' value='" . $stude. "'>" .$stude . "</td>
                                            
                                            <td><input type='hidden' name='batch[]' value='" . $totalcla. "'>" .$totalcla . "</td>


                                            <td><input type='hidden' name='batch[]' value='" . $percentage. "'>" .$percentage ." "."%"."</td>
                                            
                                            
                                            <td>
                                            <a href='report.php?student_id=$result[student_id]&course_code=$result[course_code]&stude=$stude&totalcla=$totalcla&percentage=$percentage&formclassDate=$formclassDate&toclassDate=$toclassDate'><input type='submit' value='Report' class='updatebtn' style='background-color: green; color: white; border-radius: 5px;cursor: pointer; width:40%'></a>                                            
                                            </td>
                                        </tr>";
                                    }
                                    ?>

                            </tbody>
                        </table>
                       
                    

                    
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