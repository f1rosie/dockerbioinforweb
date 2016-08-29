<?php
/* scFilms.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/xampp/JL/scFilms.php
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
if (isset($_POST["submit2"]) && !empty($_POST["Targeted_Disease"])) //&& !empty($_POST["StoreId"])) 
{
//var_dump($_POST);
//$Targeted_Disease = "1";
	require_once "scDbConnection.php";
	$Targeted_Disease = $_POST["Targeted_Disease"];
	//echo $Targeted_Disease."<br/>";
	
}
?>
<?php
// use a stored procedure to get the data from db
//echo "antes";
if(!empty($connection))
{
		$query = "select Targeted_Disease, HGNC_ID, Approved_Symbol, Chromosomal_Location, HTMLLink(HGNC_ID, URL_HGNC_ID) as HGNC_ID from gene_td_table where Targeted_Disease = ". '"' . $Targeted_Disease . '";' ;
		//$query = "select Targeted_Disease, HTMLLink(UniProtKB_Entry, URL_UniProtKB_Entry) as UniProtKB_Entry, Protein_Name, Sequence_Length, Mass, HGNC_ID, UniProt_Gene_Name from protein where Targeted_Disease = ". '"' . $Targeted_Disease . '";' ;
		$result = mysqli_query($connection, $query);
		if (!$result)
		{
			die("Targeted_Disease query failed.");
		}
		//echo "dentro";
}
//echo "despues";
?>


<!DOCTYPE html>
<!-- scFilms.php 
This is a comment. Comments are not displayed in the browser
-->

<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        scFilms.php
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
		<button Type="button"  onclick="window.location.href='Bioinformationcsreport.php'">Go Back to Report Search Index</button>
	
	</span>
	</span>
	</span>
	</span>
	</span>
	
	</h1>

	<br>
	</div>
	<br>
	<hr>
<div style="background-color:White;opacity:0.90;line-height: 2.0em; font-size: 20px; text-align:center;">
	<form id="form2" action="" method="post">
	<p> Get a list of diseases with the selected: </P>
	<select style="margin-left:280px" name="Targeted_Disease">
	
	<!--<option value="" selected disabled>Select a protein</option> -->
		  <option 
  	<?php
		if(!empty($connection))
		{
			echo 'value="' . $Targeted_Disease .'"';
			//echo $Targeted_Disease."<br/>";
		} else
		{
			echo 'value="" selected disabled';
		}
	?>
  >
  	<?php
		if(!empty($connection))
		{
			echo ($Targeted_Disease); 
		} else
		{
			echo 'Select a disease';
		}
	 ?>
  </option>
	
	
	  <!--option value="" selected disabled>Select a disease</option--> 
	  <option value="Pancreas Disease">Pancreas Disease</option>
	  <option value="Diabetes">Diabetes</option>
	  <option value="Colon Cancer">Colon Cancer</option>

	</select>
	<br>
	<input type="submit" name="submit2" class="submit" value="Go" />
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
				echo "No diseases with this protein <u>$Targeted_Disease</u> are in the list.";
			} else
			{
				echo '<table class="table2">';
				echo '<caption>
					These information are involved with the disease ';
		//		echo '"' . $rating . '"' . ' are available in the store ' . '"' . $storeid . '"'; 
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
	
</body>
</html>

<?php
	// close database connection
	if(!empty($connection))
	{
		mysqli_close($connection);
	}
?>
