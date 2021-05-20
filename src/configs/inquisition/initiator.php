<?PHP
	$url_patch = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
	
	if(empty($url_patch)) {
		exit(json_encode([
			'status' => '2',
			'message' => 'Ошибка инициализации'
		]));
	}
	
	$sth = $pdo->query("SELECT * FROM `config__pages` WHERE `url`='{$url_patch}'");
	
	if(!$sth->rowCount()) {
	header('Location: $_SERVER['HTTP_HOST'].'/404'');
	exit;
	}
	
	$sth->setFetchMode(PDO::FETCH_OBJ);
	$row = $sth->fetch();
	
	$GLOBALS['info_page'] = $row;
	
	if(!file_exists($_SERVER['DOCUMENT_ROOT'] . "/addons/pages/{$row->executor}.php")) {
		exit("Ошибка загрузки файла: " . $_SERVER['DOCUMENT_ROOT'] . "/addons/pages/{$row->executor}.php");
	}
	
	@require_once($_SERVER['DOCUMENT_ROOT'] . "/addons/pages/{$row->executor}.php");
