<html>
<head>
<link rel="stylesheet" type="text/css" href="movies.css" />
</head>
<body>
<?php
error_reporting(E_ALL);
ini_set('display_error', '1');
function display($results)
  {
	  echo "<h1>You have searched for-".$_GET['q']."</h1>";
  echo "<h2>Title :".$results["Title"]."</h2>";
  if($results["Poster"]!="N/A")
    echo "<img class='poster' src=".$results["Poster"].">";
  echo "<P>Director :".$results["Director"]."</P>";
  echo "<P>Writer :".$results["Writer"]."</P>";
  echo "<P>Year :".$results["Year"]."</P>";
  echo "<P>Rated :".$results["Rated"]."</P>";
  echo "<P>Released :".$results["Released"]."</P>";
  echo "<P>Genre :".$results["Genre"]."</P>";
  echo "<P>Actors :".$results["Actors"]."</P>";
  echo "<P>Plot :".$results["Plot"]."</P>";
  echo "<P>Runtime :".$results["Runtime"]."</P>";
  echo "<P>Rating :".$results["Rating"]."</P>";
  echo "<P>ID :".$results["ID"]."</P>";
   }


  if(isset($_GET['q']))
 {
	 	  $moviename=strtolower(urldecode($_GET['q']));
	 
   $sql =mysql_connect("localhost","root","suthar");
  mysql_select_db("movie_data");
	  $data=mysql_query("SELECT * FROM movie WHERE Title = '$moviename'");
  $results=mysql_fetch_array($data);

	if($moviename==$results[0])
	{
	display($results);
  }
  else
 { $results=json_decode(file_get_contents("http://www.imdbapi.com/?t=".urlencode($moviename)),true);
  display($results);
 echo urldecode($moviename);
  mysql_query("INSERT INTO movie VALUES ('".strtolower($results["Title"])."','".$results["Director"]."','".$results["Writer"]."','".$results["Year"]."','".$results["Rated"]."','".$results["released"]."','".$results["Genre"]."','".$results["Actors"]."','".$results["Plot"]."','".$results["Runtime"]."','".$results["Rating"]."','".$results["ID"]."')",$sql);
  mysql_close($sql);
 }
}
 else 
	echo "<form action='moviesearch.php' method='get'>Movie Name :<input id='q' type='text' name='q'/><button id='q' type='submit'>Go</button><br /></form>";
 
?>
</body>
</html>
