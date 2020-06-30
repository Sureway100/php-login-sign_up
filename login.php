<?php 
	require_once('connect.php');

	if (!isset($_SERVER['PHP_AUTH_USER']) || !isset($_SERVER['PHP_AUTH_PW'])) {
		// The username/password weren't entered so send the authentication headers
		header('HTTP/1.1 401 Unauthorized');
		header('WWW-Authenticate: Basic realm="Mismatch"');
		exit('<h3>Mismatch</h3>Sorry, you must enter your username and password to log in and access ' .
		'this page.');
	}
	
	

		// Create connection
		$dbc = mysqli_connect("$host", "$db", "$dbpass", "$dbname") 
		or die('Error connecting to MySQL server.');

		// Grab the user-entered log-in data
		$user_username = mysqli_real_escape_string($dbc, trim($_SERVER['PHP_AUTH_USER']));
		$user_password = mysqli_real_escape_string($dbc, trim($_SERVER['PHP_AUTH_PW']));

		// Look up the username and password in the database
		$query = "SELECT id, username FROM mismatch_user WHERE username = '$user_username' AND " .
		"password = SHA('$user_password')";

		$data = mysqli_query($dbc, $query);

		if (mysqli_num_rows($data) == 1) {
			// The log-in is OK so set the user ID and username variables
			$row = mysqli_fetch_array($data);

			$user_id = $row['id'];

			$username = $row['username'];

		}
		else {
		// The username/password are incorrect so send the authentication headers
			header('HTTP/1.1 401 Unauthorized');
			header('WWW-Authenticate: Basic realm="Mismatch"');
			exit('<h2>Mismatch</h2>Sorry, you must enter a valid username and password to log in and ' .
			'access this page.');
		}
	// Confirm the successful log-in
	echo('<p class="login">You are logged in as ' . $username . '.</p>');
	

	
?>