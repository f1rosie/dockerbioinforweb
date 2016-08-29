<?php
/* scProtein.php 
This is a comment. Comments are not displayed in the browser.
To run it as a php file:
http://localhost/xampp/JL/scCustomers.php
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

if (isset($_POST["submit2"]) && !empty($_POST["UniProtKB_Entry"])) 
{
	require_once "scDbConnection.php";
	$UniProtKB_Entry = $_POST["UniProtKB_Entry"];
	
}
?>
<?php

if(!empty($connection))
{
		//$query = "call film_in_stock(" . '"' . $rating . '", ' . $storeid . ')';
		//$query = "select * from UniProtKB_Entry where ProteinEntry = ". '"' . $proteinid . '";' ;
		//$query = "select * from protein limit 3;";
		//$query = "select * from UniProtKB_Entry where ProteinEntry = ". '"' . $UniProtKB_Entry  . '";' ;
		$query = "select UniProtKB_Entry, HGNC_ID, Protein_Name, Item_No, Data_Collected_by, Targeted_Disease, HTMLLink(URL_UniProtKB_Entry, URL_UniProtKB_Entry) as URL, Sequence_Length, Mass, UniProt_Gene_Name from protein where UniProtKB_Entry  = ". '"' . $UniProtKB_Entry  . '";' ; 
		//echo $query."<br/>";
		$result = mysqli_query($connection, $query);
		if (!$result)
		{
			die("UniProtKB_Entry query failed.");
		}
		//echo "dentro";
}
//echo "despues";
?>




<!DOCTYPE html>
<!-- scCustomers.php 
This is a comment. Comments are not displayed in the browser
-->

<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        Customers.php
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
	
<div style="background-color:White;opacity:0.90;line-height: 2.0em; font-size: 20px; text-align:center;">
<hr>
	<form id="form1" action="" method="get">

	<p>Get a protein information please enter UniProtKB_Entry ID: 
	<input type="text" placeholder="Enter a UniPortKB_Entry" name="UniProtKB_Entry">
	</p>
	
	<input type="submit" name="submit2" class="submit" value="Get data" />
	</form>

	
	<hr>
	<br>

	

	<?php
	if (!empty($connection))
	{	
			//echo "prueba";
			$NumOfRows = mysqli_num_rows($result);
			$Index = 0;
			//echo "Number of rows = $NumOfRows"."<br/>";
			//echo "check row count <br/>";
			//echo (false);
			//echo ($NumOfRows);

			if ($NumOfRows == 0)
			{
				echo "No proteins with this UniProtKB_Entry <u>$UniProtKB_Entry</u> are in the list.";
			} else
			{
				echo '<table class="table1">';
				echo '<caption>
					These informations are involved with the UniProtKB_Entry ';
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
