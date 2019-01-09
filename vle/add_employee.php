<?php
  $conn = mysql_connect('localhost', 'root', '');
  if (!$conn)
  {
    die("Database Connection Failed" . mysql_error());
  }

  $select_db = mysql_select_db('payroll');
  if (!$select_db)
  {
    die("Database Selection Failed" . mysql_error());
  }

  if(isset($_POST['submit'])!="")
  {
	  
       $lname =$_POST['lname'];
       $fname =$_POST['fname'];
       $address =$_POST['address'];
       $gender =$_POST['gender'];
       $email =$_POST['email'];
       $qualification =$_POST['qualification'];
       $emp_type =$_POST['emp_type'];
	   $division   = $_POST['division'];


    $sql = mysql_query("INSERT into employee(lname,fname,address, gender, email, emp_type, qualification,division)VALUES('$lname','$fname','$address','$gender','$email','$emp_type','$qualification','division')");

    if($sql)
    {
      ?>
        <script>
            alert('Employee had been successfully added.');
            window.location.href='home_employee.php?page=emp_list';
        </script>
      <?php 
    }

    else
    {
      ?>
        <script>
            alert('Invalid.');
            window.location.href='index.php';
        </script>
      <?php 
    }
  }
?>