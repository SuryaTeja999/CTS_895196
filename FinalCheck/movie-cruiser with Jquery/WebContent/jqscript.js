   
   
   
   
   function openCity(cityName) {
            var i;
            var x = document.getElementsByClassName("nav-tab");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            document.getElementById(cityName).style.display = "block";
        }
		
		
 	$(document).ready(function () {

          $('form[name="register"]').submit(function ()
            {
      array = [];
      var name = ($("#name").val());
      var uname = ($("#uname").val());
      var pwd = ($("#pwd").val());
          var rpwd = ($("#rpwd").val());
                if (pwd == rpwd) {
                    var email = ($("#email").val());
                    var city = ($("#city").val());

                    var newobj =
                    {
                        "name": name,
                        "uname": uname,
                        "pwd": pwd,
                        "email": email,
                        "city": city,
                        "usergroup": 'Customer'
                    }
                    //array.push(newobj);
                    localStorage.setItem(uname, JSON.stringify(newobj));
                    alert("Registration Successful");
                    event.preventDefault();
                    document.register.reset();



                }
                else {
                    alert("passwords donot match");
                    event.preventDefault();

                }

  });



            $('form[name="login"]').submit(function ()
            {
                var x = ($("#loginuname").val());
                var y = ($("#loginpwd").val());
                var retrievedData = localStorage.getItem(x);
                var loginuser = JSON.parse(retrievedData);
                if (loginuser == null) {
                    alert("Invalid Credentials");
                    event.preventDefault();
                    return false;
                }

                if (loginuser.uname != y) {
                    alert("Invalid Password");
                    event.preventDefault();
                    return false;
                }

                alert("Logged In As : "+loginuser.usergroup);
                if (loginuser.uname == x && loginuser.pwd == y && loginuser.usergroup == "admin") {
                    event.preventDefault();
                    window.location.href = "movie-list-admin.html";
                    return false;

                }
                if (loginuser.uname == x && loginuser.pwd == y && loginuser.usergroup == "Customer") {
                    event.preventDefault();
                    window.location.href = "movie-list-customer.html";
                    return false;

               }

            });


});


 

 