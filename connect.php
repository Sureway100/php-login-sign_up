 <?php

            $host = "localhost";
            $db = "root";
            $dbpass = "";
            $dbname = "mismatch";


            // Create connection
            $dbc = mysqli_connect("$host", "$db", "$dbpass", "$dbname") 
            or die('Error connecting to MySQL server.');

?>