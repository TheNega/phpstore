<?PHP
	$tpl->run(true);
	$tpl->load_template("main/product");
	
	$tpl->compile();
	$tpl->show();