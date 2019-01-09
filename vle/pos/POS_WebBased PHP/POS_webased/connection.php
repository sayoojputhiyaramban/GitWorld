
<?php 
error_reporting(E_ERROR | E_WARNING | E_PARSE);
		$host = "localhost";
		$db_username = "root";
		$db_password = "";
		$database = "acpos";
			
		$conn = mysql_connect($host, $db_username, $db_password) 
				or die ('Error Cannot Connect to MySQL');
		@mysql_select_db($database) or die( "Unable to select database");

?>