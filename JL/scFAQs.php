<?php
/* scProtein.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/xampp/JL/scFAQs.php
*/
?>
<?php
/*	
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
*/

if (isset($_POST["submit3"]) && !empty($_POST["question"]))  
{
	require_once "scDbConnection.php";
	$question = $_POST["question"];

}
?>
<?php

if(!empty($connection))
{

		if ($question == 1) {
			//echo "a is bigger than b";
			$query = "select * from protein_synonym_table;";
		} elseif ($question == 2) {
			//echo "a is bigger than b";
			$query = "select * from phenotype_protein_table;" ; 
		} elseif ($question == 3) {
			//echo "a is equal to b";
			//$disease = "CRC";
			$query = "select * from diabetes_involved_disease_table;" ; 
		} elseif ($question == 4) {
			//echo "a is equal to b";
			//$disease = "CRC";
			$query = "select * from full_table;" ;
		} elseif ($question == 5) {
			//echo "a is equal to b";
			//$disease = "CRC";
			$query = "select * from protein_disease_table;" ;
		} elseif ($question == 6) {
			//echo "a is equal to b";
			//$disease = "CRC";
			$query = "select * from gene_location_table;" ;
		} else {
			echo "You should select an option";
		}
		//echo $query."<br/>";
		$result = mysqli_query($connection, $query);
		if (!$result)
		{
			die("Database query failed.");
		}
		//echo "dentro";
}
//echo "despues";
?>


<!DOCTYPE html>
<!-- scFAQs.php 
This is a comment. Comments are not displayed in the browser
-->

<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        scFAQs.php
    </title>
    <link rel="stylesheet" type="text/css" HREF="StyleSheets.css" >
</head>
<body style="background-image:url(home.gif);background-size:2000px; opacity:1.0">
<div style="background-color:white; opacity:0.90;">
<h1 style="line-height: 6.0em; font-size: 30px; text-align: center;"> <!-- heading -->
	<span style="color:darkblue">
	<span style="font-weight: bold;">
	<span style="font-family: sacramento,cursive;">
	<span style="font-size: 40px;">
	<span style="line-height: 1.3em;">
		Use Team_06 Database
		<form name="form1" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" >
	</span>
	</span>
	</span>
	</span>
	</span>

		<button Type="button"  onclick="window.location.href='Bioinformationcsreport.php'">Go Back to Report Search Index</button>
	</h1>
</div>	
	
<div style="background-color:White;opacity:0.90;line-height: 2.0em; font-size: 20px; text-align:left;">
	<br>
	<hr>
	<form id="form" action="" method="get">
	<p> Select one of questions you are interesting: </p>
	<p> 
		<input type="radio" name="question" value="1" style ="margin-left:100px" 		
		<?php	
		if(!empty($connection) && $question == 1)
		{
			echo " checked";
		}
		?> 
		/> When we insert the data, we noticed that there were many proteins had same Phenotype MIM Number. We want to know how many differences are there.<br>
				
		<input type="radio" name="question" value="2" style ="margin-left:100px"
				<?php	
		if(!empty($connection) && $question == 2)
		{
			echo " checked";
		}
		?>
		
		/> We know that there are several alternative names belonging to one protein. But there should be some similarities among all the alternative names. How can we check these similarities? &nbsp; <br> 
		
		<input type="radio" name="question" value="3" style ="margin-left:100px"
				<?php	
		if(!empty($connection) && $question == 3)
		{
			echo " checked";
		}
		?>
		/>How many involved disease can diabetes have? &nbsp; <br> 
		
		<input type="radio" name="question" value="5" style ="margin-left:100px"
				<?php	
		if(!empty($connection) && $question == 5)
		{
			echo " checked";
		}
		?>
		/> What diseases are these proteins would also affect or related to? &nbsp; <br> 
		
		<input type="radio" name="question" value="4" style ="margin-left:100px"
				<?php	
		if(!empty($connection) && $question == 4)
		{
			echo " checked";
		}
		?>
		/> What is the basic information of these proteins?&nbsp; <br> 
		
		<input type="radio" name="question" value="6" style ="margin-left:100px" 
				<?php	
		if(!empty($connection) && $question == 6)
		{
			echo " checked";
		}
		?>
		/> When we track each protein back to gene, the gene location can give us adding information about the hereditary. Can we collect all the locations of proteins targeting on one disease to get that information?
		</p>

	<input type="submit" name="submit3" class="submit" value="Get An Answer" />
	</form>
	<hr>
	<br>
		
		<?php
	if (!empty($connection))
	{	
			$NumOfRows = mysqli_num_rows($result);
			$Index = 0;
			//echo "Number of rows = $NumOfRows"."<br/>";
			//echo "check row count <br/>";
			//echo (false);
			//echo ($NumOfRows);

			if ($NumOfRows == 0)
			{
				echo "No data was found for the selected question.";
			} else
			{
				echo '<table class="table1">';
				echo '<caption>
					This is the answer for the selected question. ';
		
				echo "</caption>";
				echo "<thead>
						<tr>";
				$row = mysqli_fetch_assoc($result);
				//print_r ($row);
				
				foreach($row as $k => $v ) 
				{       
					echo "<th>".$k."</th>";
				}
			
				echo "	</tr>
					</thead>
					<tbody>";

				$check = mysqli_data_seek($result, 0);
				
				 while ($rownew = mysqli_fetch_assoc($result))
				 {
					echo "<tr>";
					foreach($rownew as $k => $v)
					{
					echo "<td>".$v."</td>";
					}
					echo "</tr>";	
				 }
				 
				echo "	</tbody>
					</table>";
			}
	}
	?>
	
	<?php
		if(!empty($connection))
		{
			mysqli_free_result($result);
		}
	?>
	
	
	<!--<p>No data was found for the selected question.</p>-->
</body>
</html>

<?php
	// close database connection
	if(!empty($connection))
	{
		mysqli_close($connection);
	}
?>
	<!--p>No data was found for the selected question.</p>
</body>
</html-->
