<?PHP
	$db = (object)[
		'hostname' => 'localhost',
		'username' => 'mysql',
		'password' => 'mysql',
		'dataname' => 'store'
	];
	
	try {
		$pdo = new PDO("mysql:host={$db->hostname};dbname={$db->dataname}", $db->username, $db->password);
		$pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
		$pdo->exec("set names utf8"); 
	}
	catch(PDOException $e) {
		print "Error!: " . $e->getMessage() . "<br>";
		die();
	}
	
	$sth = $pdo->query("SELECT * FROM config LIMIT 1");
	$sth->setFetchMode(PDO::FETCH_OBJ);
	$conf = $sth->fetch();
	
	spl_autoload_register(
		function($name) {
			$folders = scandir($_SERVER['DOCUMENT_ROOT'] . "/configs/classes/");
			
			for($i = 0; $i < sizeof($folders); $i++) {
				if(!is_file($folders[$i]) && $folders[$i][0] != '.') {
					$file = $_SERVER['DOCUMENT_ROOT'] . "/configs/classes/class." . strtolower($name) . ".php";
					
					if(file_exists($file)) {
						require_once($file);
						return;
					}
				}
			}
			
			echo "Class {$name} not found!";
		}
	);
	
	$tpl = new Templates($conf);