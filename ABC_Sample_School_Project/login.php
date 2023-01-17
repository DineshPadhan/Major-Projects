<?php

//connectivity
require('config.php');


if(isset($_POST['login']))
{
	$u = $_POST['uname'];
	$pass = $_POST['upass'];
	$p = md5($pass);
	$_SESSION['user']=$u;
	$_SESSION['pass']=$p;
//user check
$q = "SELECT * FROM users WHERE username='$u' AND password='$p'";
$cq = mysqli_query($con,$q);
$ret = mysqli_num_rows($cq);
if($ret == true)
{
	echo "<script>document.location='profile.php'</script>";
	//echo "<center><h2 style='color:green'>ACCESS GRANTED</h2></center>";
}
else
{
	echo "<center><h2 style='color:red'>ACCESS DENIED</h2></center>";
}
}

?>
<html>
<body style="background-color:#E5E5E5">
<div align="center">
<form method="post">
<fieldset style="background-color: #D8D8D8;"><legend><font size="+2"><strong>Login Panel</strong></font></legend><br><p><b>UserName<span style="color:red">*</span>: </b><input type="text" name="uname" required/></p>
<p><b>Password<span style="color:red">*</span>: </b><input type="password" name="upass" required/></p><br>
<p><input type="submit" value="Login" name="login" class="btn btn-primary" style="font-weight: 600;"/></p>
</fieldset>
</form>
</div>
</body>
</html> 