<!DOCTYPE html>
<!-- Websitedeploymentinstructions.php
This is a comment. Comments are not displayed in the browser
-->
<html>
<head>
    <title>
        Websitedeploymentinstructions.php
    </title>
</head>

<body style="background-image:url(Website.jpg);background-size:2000px; opacity:1.0">
<div style="background-color:white; opacity:0.90;">
<h1 style="line-height: 6.0em; font-size: 30px; text-align: center;"> <!-- heading -->
	<span style="color:darkblue">
	<span style="font-weight: bold;">
	<span style="font-family: sacramento,cursive;">
	<span style="font-size: 40px;">
	<span style="line-height: 1.3em;">
    Instructions to deploy my web application
	</span>
	</span>
	</span>
	</span>
	</span>

	<input Type="button" value="Go Back to Website Documentation Page" onclick="window.location.href='Websitedocumentation.php'"style="position: relative; top: 20px; right: 1000px;"> 
<br>
</h1>
</div>

<br>
<hr>
<div style="background-color:White;opacity:0.90;line-height: 2.0em; font-size: 30px; text-align:left;">


<ol>
	<li> <b>Restore the database</b>
	<p> Here is the database SQL Dump file: <a href="Dump_team_6_jl.sql" target="_blank" ><b>Click here to download</b></a>
	</p></li>
	
	<li> <b>Install the web code</b>
	<p> Here is the website backup zip. <a href = "JL.zip"><b>Click here to download</b></a>
	</p></li>
	
	<li><b>Questions and answers about this website</b></li>

</ol>

<ol><font face="Times New Roman" size="5">


	<p>Q:  What are the software requirements?
	</p><p> A: The requirement of software is MySQL Workbench 6.3 CE or greater to make database and XAMPP Control Panel v3.2.1. or greater to publish website. 

	</p><p>Q: Does this web app need a database? How to create one? Which user has the authority to create or restore a database?
	</p><p> A: Yes, the web app need a database. First of all we need to know the user requirement and following the business rule. Second, finding and collect data from website and make a model (known as universe table). Then, divided the universe table into several small table and normalized the data. The fourth step is forward engineering the diagram and insert data. Test all table and the relation between data including primary keys and foreign keys. Then we need create more store procedures to provide more specific question and information, therefore can match the database users requirement. The final step is build the website with HTML and publish with PHP form. Using query sentence to connect the database to the website. 

	</p><p>Q: What is the user name and password that the website needs in order to connect to the database?
	</p><p>A: the user name: jingjing and password is 123456.
	</p><p>Q: Where to keep your files that support your website?
	</p><p>A: Place the files into XAMPP localhost folder c:\xampp\htdocs and including HTML, PHP and need to reload the database into the same computer. 
	</p><p>Q: How to test the website to ensure a successful deployment?
	</p><p>A: After you finished all procedure, you can use another computer to try to successful deployment. 
	</p><p>Q: What is the URL?
	</p><p>A: the URL is Uniform Resource Locator and it is known as web address. Every computer can connect to the reference to a web resource. 

	</p><p> Q: What kind of information can a user expect to find?
	</p><p> A: Form my website the user can find out three target diseases, they are diabetes, pancreas disease and colon cancer. And the relation between target disease and protein or gene are shown in my website. For example, if the user want to find out three targeted disease in the database related with protein they can press the first link to find out the answer. User can enter UniProtKB_Entry to get relative information. 
	</p><p>Q: How to use each kind of user interface to get a report?
	</p><p>A: There are three different interfaces in this website. The first is the interface allows user to type text and find out the information they are interested in. The second interface allows user to select an option from dropdown boxes. The third interface allows user choose one of radio buttons to get the information. 
	</p>

</li>

</ol>
<br>
<br>
</hr>
</body>
</html>
