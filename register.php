<?php
  $name = $_POST["name"];
  $email = $_POST["email"];
  $password = $_POST["password"];
  $dob = $_POST["dob"];
  $address = $_POST["address"];
  $college = $_POST["college"];
  $department = $_POST["department"];
  $cgpa = $_POST["cgpa"];
  
  echo $name,$email,$password,$dob,$address,$college,$department,$cgpa;
 
 //encoding the password using md5 and sha1
 $pass1=md5($password);
 $var="URsn@!";
 $var1=$pass1.$var;
 
 $password2=sha1($var1);
  
  //creates a database connection to our db intern
  $database =  mysqli_connect("localhost","root","","intern");
  $sql = "INSERT INTO `registertable`(`name`, `email`, `password`, `date`, `address`, `college`, `department`, `cgpa`) VALUES (?,?,?,?,?,?,?,?)";
  //creating a prepared statement query
  // $varname = $connection_variable->prepare("sql query");
  $preparedstatement = $database->prepare($sql);
     
  //bind the parameter types and the parameter to perform sql injection 
  $preparedstatement->bind_param("sssssssd",$name,$email,$password2, $dob,$address,$college,$department,$cgpa);
 
  //excutes the prepared statement so that it perform operations in the database
  $preparedstatement->execute();
 
 //select statement
 $select_sql = "select * from registertable";
 $statement = $database->prepare($select_sql);
  $statement->execute();
 $statement->bind_result($name1,$email1,$password1,$dob1,$address1,$college1,$department1,$cgpa1);
 
 while($statement->fetch()){
  $arrays[] = array("name"=>$name1,"email"=>$email1,"password"=>$password1,"dob"=>$dob1,"address"=>$address1,"college"=>$college1,"department"=>$department1,"cgpa"=>$cgpa1);
}

$array = json_encode($arrays);
  //echo $array;
/*  while($statement->fetch()){
    echo $name1,$email1,$password1,$dob1,$address1,$college1,$department1,$cgpa1;
  }*/
  $jsonfile = "data.json";
  $newfile = fopen($jsonfile,'w') or die('file not found');
  fwrite($newfile,$array);
  fclose($newfile);
  
/*  $readfile = fopen($jsonfile,'r') or die("file cannot be read");
  while(!feof($readfile)){ $filevalue = fgets($readfile); }
  fclose($readfile);
  $jsondata = json_decode($filevalue);
  
 */
   $statement->close();
 // return $jsondata[0]->name; 
?>

