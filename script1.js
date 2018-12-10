$(document).ready(function(){
$.getJSON('data.json',function(data){
//console.log(data);
var name = '';
var email = '';
var tables = '<table><tr><th>name</th><th>email</th><th>password</th><th>ADDRESS</th><th>DOB</th><th>COLLEGE</th><th>Department</th><th>CGPA 	</th>';
var tableend = '</table>';  
$.each(data, function(key,val){
  name +='<tr><td>'+val.name+'</td><td>'+val.email+'</td><td>'+val.password + '</td><td>'+val.address+'</td><td>'+val.dob+'</td><td>'+val.college+'</td><td>'+val.department+'</td><td>'+ val.cgpa+'</td></tr>';
  //email +='<p>'+val.email+'</p>';
});
tables += name;
tables += tableend;
$('#name').html(tables);
//$('#email').html(email);
});
});
