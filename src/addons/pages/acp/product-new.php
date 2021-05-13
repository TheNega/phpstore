<?PHP
	$tpl->run(true);
	$tpl->load_template("main/product-new");
	$tpl->compile();
	$tpl->show();