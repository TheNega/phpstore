<?PHP
	require("{$_SERVER['DOCUMENT_ROOT']}/configs/configs.php");
	require("{$_SERVER['DOCUMENT_ROOT']}/configs/inquisition/functions.php");
	
	if(isset($_POST['get_website_comments'])) {
		$sth = $pdo->query("SELECT * FROM `social__comments` WHERE 1 ORDER BY `id` DESC");
		$sth->setFetchMode(PDO::FETCH_OBJ);
		
		$tpl->clear_element();
		while($row = $sth->fetch()) {
			$tpl->load_element("index/comments");
			
			$tpl->set_element("{date}", date("d.m.Y", $row->time_create));
			$tpl->set_element("{name}", $row->name);
			$tpl->set_element("{text}", $row->text);
			$tpl->set_element("{appraisal}", get_style_appraisal($pdo, $row->appraisal));
		}
		
		exit(json_encode([
			'status' => '1',
			'html' => $tpl->show_element()
		]));
	}
	
	if(isset($_POST['load_product'])) {
		$sth = $pdo->query("SELECT * FROM `product` WHERE 1 ORDER BY `id` DESC");
		$sth->setFetchMode(PDO::FETCH_OBJ);
		
		if($sth->rowCount()) {
			$tpl->clear_element();
			while($row = $sth->fetch()) {
				$tpl->load_element("store/product");
				
				$tpl->set_element("{date}", date("d.m.Y", $row->time_create));
				$tpl->set_element("{name}", $row->name);
				$tpl->set_element("{category}", $row->category);
				$tpl->set_element("{appraisal}", get_style_appraisal($pdo, $row->appraisal));
				$tpl->set_element("{price}", $row->price);
				$tpl->set_element("{url}", "/store/product?id={$row->id}");
			}
			
			exit(json_encode([
				'status' => '1',
				'html' => $tpl->show_element()
			]));
		}
		
		exit(json_encode([
			'status' => '1',
			'html' => "<center><img src=\"../templates/standart/assets/img/stickers/like_2.png\"><br>
			Товаров нет.
			</center>"
		]));
	}