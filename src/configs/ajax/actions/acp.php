<?PHP
	require("{$_SERVER['DOCUMENT_ROOT']}/configs/configs.php");
	require("{$_SERVER['DOCUMENT_ROOT']}/configs/inquisition/functions.php");
	
	/*
		Изменение наименование проекта
	*/
	if(isset($_POST['edit_project'])) {
		if($pdo->query("UPDATE `config` SET `project`='{$_POST['project']}' WHERE `id`='1'")) {
			exit(json_encode([
				'html' => '<p class="text-success">Настройки успешно сохранены!</p>'
			]));
		}
		else {
			exit(json_encode([
				'html' => '<p class="text-danger">Произошла ошибка..</p>'
			]));
		}
	}
	
	/*
		Загрузка списка шаблонов
	*/
	if(isset($_POST['load_templates'])) {
		$patch = "{$_SERVER['DOCUMENT_ROOT']}/templates";
		$dirs = scandir($patch);
		$templates = "<option selected disabled>- выбрать -</option>";
		
		for($i = 0; $i < sizeof($dirs); $i++) {
			if($dirs[$i][0] == '.' || $dirs[$i] == 'admin') {
				continue;
			}
			
			$templates .= "<option value=\"{$dirs[$i]}\" ".(($dirs[$i] == $conf->template) ? 'selected' : '').">{$dirs[$i]}</option>";
		}
		
		exit(json_encode([
			'html' => $templates
		]));
	}
	
	/*
		Изменение шаблона
	*/
	if(isset($_POST['edit_template'])) {
		if($pdo->query("UPDATE `config` SET `template`='{$_POST['template']}' WHERE `id`='1'")) {
			exit(json_encode([
				'html' => '<p class="text-success">Настройки успешно сохранены!</p>'
			]));
		}
		else {
			exit(json_encode([
				'html' => '<p class="text-danger">Произошла ошибка..</p>'
			]));
		}
	}
	
	/*
		Изменение E-mail
	*/
	if(isset($_POST['edit_email'])) {
		if($pdo->query("UPDATE `config` SET `email`='{$_POST['email']}' WHERE `id`='1'")) {
			exit(json_encode([
				'html' => '<p class="text-success">Настройки успешно сохранены!</p>'
			]));
		}
		else {
			exit(json_encode([
				'html' => '<p class="text-danger">Произошла ошибка..</p>'
			]));
		}
	}
	
	/*
		Изменение адреса
	*/
	if(isset($_POST['edit_address'])) {
		if($pdo->query("UPDATE `config` SET `address`='{$_POST['address']}' WHERE `id`='1'")) {
			exit(json_encode([
				'html' => '<p class="text-success">Настройки успешно сохранены!</p>'
			]));
		}
		else {
			exit(json_encode([
				'html' => '<p class="text-danger">Произошла ошибка..</p>'
			]));
		}
	}
	/*
		Изменение телефона
	*/
	if(isset($_POST['edit_phone'])) {
		if($pdo->query("UPDATE `config` SET `phone`='{$_POST['phone']}' WHERE `id`='1'")) {
			exit(json_encode([
				'html' => '<p class="text-success">Настройки успешно сохранены!</p>'
			]));
		}
		else {
			exit(json_encode([
				'html' => '<p class="text-danger">Произошла ошибка..</p>'
			]));
		}
	}
	
	/*
		Загрузка товаров
	*/
	if(isset($_POST['product_table'])) {
		$sth = $pdo->query("SELECT * FROM `product` WHERE 1 ORDER BY `id` DESC");
		$sth->setFetchMode(PDO::FETCH_OBJ);
		
		if($sth->rowCount()) {
			$html = "";
			while($row = $sth->fetch()) {
				$html .= "<tr>";
				$html .= "<td>{$row->id}</td>";
				$html .= "<td>{$row->name}</td>";
				$html .= "<td>{$row->category}</td>";
				$html .= "<td>{$row->price}</td>";
				$html .= "<td>{$row->time_create}</td>";
				
				$html .= "<td><input type=\"file\" class=\"basic-filepond\"></td>";
				$html .= "</tr>";
			}
			
			exit(json_encode(['html' => $html]));
		}
		
		exit(json_encode(['html' => '']));
	}