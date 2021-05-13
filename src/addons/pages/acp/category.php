<?PHP
	$tpl->run(true);
	$tpl->load_template("main/category");
	
	$tpl->compile();
	$tpl->show();