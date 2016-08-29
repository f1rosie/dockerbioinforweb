<!DOCTYPE html>
<!-- Descriptionofmydata.php
This is a comment. Comments are not displayed in the browser

-->

<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        Descriptionofmydata.php
    </title>
    <!--link rel="stylesheet" type="text/css" HREF="StyleSheetBCHB697.css" -->
</head>

<body style="background-image:url(Website.jpg);background-size:2000px; opacity:1.0">
<div style="background-color:white; opacity:0.90;">
<h1 style="line-height: 6.0em; font-size: 30px; text-align: center;"> <!-- heading -->
	<span style="color:darkblue">
	<span style="font-weight: bold;">
	<span style="font-family: sacramento,cursive;">
	<span style="font-size: 40px;">
	<span style="line-height: 1.3em;">
    My bioinformatics data set
	</span>
	</span>
	</span>
	</span>
	</span>

	<input Type="button" value="Go Back to Website Documentation Page" onclick="window.location.href='Websitedocumentation.php'"style="position: relative; top: 20px; right: 800px;"> 
<br>
</h1>
</div>

<br>
<hr>
<div style="background-color:White;opacity:0.90;line-height: 2.0em; font-size: 30px; text-align:left;">



<ul>
	<li> <b>What is my data set?</b>
	<p> Our dataset is based on Team_06 Database collection, which shows three concentration target diseases diabetes, pancreas and colon cancer. This database contains protein ID, protein name, protein features, gene ID, gene name, gene features, and related diseases. And we added drugs and drug component to strengthen our database. 
	</p></li>
	
	<li> <b>Why did I select this data set?</b>
	<p> There are several tables and shows different functions. We want to know the relation between protein, gene and diseases. Therefore we built several tables related with those information. Then we want to know what the drug relation with this system, so we built drug table. As we have a group member who is interested in drug component so we built another table is drug component. Overall, we get more information between these features to provide our knowledge. 
	</p></li>

	
	<li> <b>Where and how did I collect this data set?</b>
	<p> Moreover the corresponding information is provided by six website databases included <a href="http://www.uniprot.org/uniprot/" ><b>UniProt</b></a>, <a href=" http://www.genenames.org/" ><b>HGNC</b></a>, <a href=" http://www.omim.org/" ><b> Online Mendelian Inheritance in Man (OMIM)</b></a>, <a href=" http://disease-ontology.org/" ><b> Disease Ontology (DO)</b></a>, <a href=" https://www.pharmgkb.org/ " ><b> PharmGKB </b></a>and <a href=" https://pubchem.ncbi.nlm.nih.gov/ " ><b> PubChem </b></a>. <a href="http://www.uniprot.org/uniprot/" ><b>UniProt</b></a> is a web database, which can search some protein sequence and functional information. On other hand, <a href=" http://www.genenames.org/" ><b>HGNC</b></a> provides symbols and name for human gene to allow clearly scientific information to exchange. <a href=" http://www.omim.org/" ><b> Online Mendelian Inheritance in Man (OMIM)</b></a> is open source for human genes and genetic phenotypes. <a href=" http://disease-ontology.org/" ><b> Disease Ontology (DO)</b></a> source provide all of information about human disease included definition, phenotype and related diseases. <a href=" https://www.pharmgkb.org/ " ><b> PharmGKB </b></a> provides drug information. And <a href=" https://pubchem.ncbi.nlm.nih.gov/ " ><b> PubChem </b></a> shows drug components. 

 
	</p></li>

	<li> <b>What are the buisness rules or specifications of my data set?</b>
	<p> For this website we use Team_06 database, which contains data of protein, gene, disease and drug. When we built this database we fellow with business rule. Primary key column does not contain any null value or repeating values that means for protein only contain one UniProt Entry and for gene only contain one HGNC ID and the same as drugs and disease. This database we also followed database relationship business rule. We have one-to-one, one-to-many, many-to-many relationship in our dataset. For detail relationship please check <a href="Team_06.pdf" target="_blank" ><b>E-R Diagram</b></a>. </p></li>
</ul>
</br>
</hr>

</body>
</html>