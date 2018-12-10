<?php
if(isset($_POST['Login'])){
     session_start();
     $username=$_POST['username'];
     $password = $_POST['password'];
     $passcheck = md5($password);
    
     $var="URsn@!";
     $var1=$passcheck.$var;
    
     $passcheck2 = sha1($var1);
    
     $_SESSION['logged_user'] = $username;
     $database =  mysqli_connect("localhost","root","","intern");
     $query = "select email,password from registertable where email=? && password=?";
     if($login = $database->prepare($query)){
     $login->bind_param("ss",$username,$passcheck2);
     $login->execute();
     $login->bind_result($user,$pass);
     while($login->fetch()){ echo $user,$pass;}
       if(($username == $user)&&($pass==$passcheck2)){
         header("location:list.html");
     }
       else{
         header("location:login.html"); 
       }
    }//if
    else{
     echo "record not found";
    }//else
  }
else{
  session_destroy();
  header("location:login.html");
 }
?>
