<?PHP
	function get_style_appraisal($pdo = null, $id) {
		if(!isset($pdo)) {
			return false;
		}
		
		$sth = $pdo->query("SELECT * FROM `social__appraisal` WHERE `id`='{$id}'");
		$sth->setFetchMode(PDO::FETCH_OBJ);
		$row = $sth->fetch();
		
		return $row->html;
	}