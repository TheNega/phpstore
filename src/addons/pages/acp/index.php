<?PHP
	$tpl->run(true);
	$tpl->load_template("main/index");
	
	$tpl->set("{project}", $conf->project);
	$tpl->set("{email}", $conf->email);
	$tpl->set("{address}", $conf->address);
	$tpl->set("{phone}", $conf->phone);
	
	$tpl->compile();
	$tpl->show();