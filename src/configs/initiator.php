<?PHP
	@require($_SERVER['DOCUMENT_ROOT'] . "/configs/inquisition/functions.php");
	
	if(file_exists($_SERVER['DOCUMENT_ROOT'] . "/configs/configs.php")) {
		@require($_SERVER['DOCUMENT_ROOT'] . "/configs/configs.php");
		@require($_SERVER['DOCUMENT_ROOT'] . "/configs/inquisition/initiator.php");
	}
	else {
		@require($_SERVER['DOCUMENT_ROOT'] . "/addons/pages/install/index.php");
	}