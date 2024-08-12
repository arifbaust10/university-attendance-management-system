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

if(isset($_GET['student_id']) && isset($_GET['course_code'])) {
    
    $student_id = $_GET['student_id'];
    $course_code = $_GET['course_code'];
    $formclassDate = $_GET['formclassDate'];
    $toclassDate = $_GET['toclassDate'];
    $percentage = $_GET['percentage'];
    $stude = $_GET['stude'];
    $totalcla = $_GET['totalcla'];
    $diff=$totalcla-$stude;
    

    $querys = "SELECT cs.title,t.teacher_name
    FROM course_details as cs
    INNER JOIN teacher as t
    ON cs.teacher_id=t.teacher_id
    WHERE course_code='$course_code'";
    $course = mysqli_query($conne, $querys);
    $row = mysqli_fetch_assoc($course);
    $title = $row['title'];
    $teacher_name = $row['teacher_name'];



    $query = "SELECT s.student_name, s.batch, d.department_name
              FROM student as s 
              INNER JOIN department as d ON s.department_id = d.department_id
              WHERE student_id='$student_id'";
    $data = mysqli_query($conne, $query);
    $row = mysqli_fetch_assoc($data);
    $student_name = $row['student_name'];
    $batch = $row['batch'];
    $department_name = $row['department_name'];

    require("fpdf/fpdf.php");

    $pdf = new FPDF();
    $pdf->AddPage();
    $pdf->SetFont("Arial", "B", 20);
    $pdf->Cell(0, 10, "Attendance Report", 0, 1, 'C');
    $pdf->SetFont("Arial", "", 16); 
    $pdf->Cell(0, 10, "", 0, 1, 'C');
    $pdf->Cell(0, 10, "Course Code: $course_code ", 0, 1);
    $pdf->Cell(0, 10, "Title: $title ", 0, 1);
    $pdf->Cell(0, 10, "Teacher Name: $teacher_name ", 0, 1);
    $pdf->Cell(0, 0, "", 1, 1, 'C');
    $pdf->Cell(0, 10, "Date: $formclassDate to $toclassDate", 0, 1,'R');

    
    $pdf->Cell(0, 10, "Student Id : $student_id", 0, 1);
    $pdf->Cell(0, 10, "Student Name : $student_name", 0, 1);
    $pdf->Cell(0, 10, "Batch : $batch", 0, 1);
    $pdf->Cell(0, 10, "Department : $department_name", 0, 1);
    $pdf->Cell(0, 10, "Total Class : $totalcla", 0, 1);
    $pdf->Cell(0, 10, "Present : $stude", 0, 1);
    $pdf->Cell(0, 10, "Absent : $diff", 0, 1);
    $pdf->Cell(0, 10, "Percentage(%) : $percentage%", 0, 1);
    $pdf->Cell(0, 10, "", 0, 1);

    $pdf->Cell(0, 10, "Attendance Details : ", 0, 1, 'C');
    $pdf->Cell(60, 10, "Date", 1, 0, 'C');
    $pdf->Cell(60, 10, "Day", 1, 0, 'C');
    $pdf->Cell(0, 10, "Present State", 1, 1, 'C');

    $datecheck = "SELECT date, present_state
                  FROM attendance
                  WHERE student_id = '$student_id'
                      AND course_code = '$course_code' 
                      AND date BETWEEN '$formclassDate' AND '$toclassDate'
                  ORDER BY date";
    $datas = mysqli_query($conne, $datecheck);

    while($row = mysqli_fetch_assoc($datas)) {
        $timestamp = strtotime($row['date']);
        $day = date('D', $timestamp); 
        
        $pdf->Cell(60, 10, $row['date'], 1, 0, 'C');
        $pdf->Cell(60, 10, $day, 1, 0, 'C'); 
        $pdf->Cell(0, 10, $row['present_state'], 1, 1, 'C');
    }
    

    $pdf->Output();
} 
?>
