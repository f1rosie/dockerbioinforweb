<?php
/* scDbConnection.php
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/CourseId/scDbConnection.php
*/

	$dbhost ="localhost";
	$dbuser = "jingjing";
	$dbpass = "123456";
	$dbname = "team_6_jl";
	$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	// Test if connection occurred.
	if (mysqli_connect_errno()){
		die("Database connection failed: " .
		mysqli_connect_error() .
		" (" . mysqli_connect_errno() . ")"
		);
	}
?>
