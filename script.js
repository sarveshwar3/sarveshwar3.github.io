//register.html
 $(document).ready(function(){
  $('#register').click(function(){
    var name = $('#name').val();
    var email = $('#email').val();
    var password = $('#password').val();
    var dob = $('#dob').val();
    var address = $('#address').val();
    var college = $('#college').val();
    var department = $('#department').val();
    var cgpa = $('#cgpa').val();
    
   $.ajax({
     type: "POST",
     url:"register.php",
     data:"name="+name+"&email="+email+"&password="+password+"&dob="+dob+"&address="+address+"&college="+college+"&department="+department+"&cgpa="+cgpa,
     success: window.alert("success")
   });//for ajax function
  });
 });

  //register.html page
   $(document).ready(function(){
    $('#login').click(function(){
     window.location.href='login.html';
    });
  });
  
   
  $(document).ready(function(){
   $('#signup').click(function(){
     $('#registerpage').load("register.html");
   });
  });



