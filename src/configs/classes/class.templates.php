<?PHP
	class Templates {
		private $conf;
		var $main, $element;
		var $admin, $bottom_other = "", $head_other = "";
		
		public function __construct($conf) {
			$this->conf = $conf;
		}
		
		/*
			Работа с элементами
		*/
		public function clear_element() {
			$this->element = "";
		}
		
		public function load_element($name) {
			$patch = $_SERVER['DOCUMENT_ROOT'] . "/templates/". ($admin ? "admin" : $this->conf->template) ."/template/elements/{$name}.tpl";
			
			if(!file_exists($patch)) {
				exit("Ошибка загрузки элемента: " . $patch);
			}
			
			$this->element = file_get_contents($patch); 
		}
		
		public function fast_load_element($name) {
			$patch = $_SERVER['DOCUMENT_ROOT'] . "/templates/". ($admin ? "admin" : $this->conf->template) ."/template/elements/{$name}.tpl";
			
			if(!file_exists($patch)) {
				exit("Ошибка загрузки элемента: " . $patch);
			}
			
			return file_get_contents($patch); 
		}
		
		public function set_element($search, $replace) {
			$this->element = str_replace($search, $replace, $this->element);
		}
		
		public function show_element() {
			return $this->element;
		}
		
		/*
			Работа с шаблоном
		*/
		public function run($admin = false) {
			if($admin) {
				$this->admin = true;
			}
			
			$patch = $_SERVER['DOCUMENT_ROOT'] . "/templates/". ($admin ? "admin" : $this->conf->template) ."/template/head.tpl";
			if(!file_exists($patch)) {
				exit("Ошибка загрузки шаблона: " . $patch);
			}
			
			$this->main = file_get_contents($patch);
			
			$patch = $_SERVER['DOCUMENT_ROOT'] . "/templates/". ($admin ? "admin" : $this->conf->template) ."/template/body.tpl";
			if(!file_exists($patch)) {
				exit("Ошибка загрузки шаблона: " . $patch);
			}
			
			$this->main .= file_get_contents($patch);
		}
		
		public function load_template($name) {
			$patch = $_SERVER['DOCUMENT_ROOT'] . "/templates/". ($this->admin ? "admin" : $this->conf->template) ."/template/{$name}.tpl";
			
			if(file_exists($patch)) {
				$this->main .= file_get_contents($patch);
			}
			else {
				exit("Ошибка загрузки шаблона: " . $patch);
			}
		}
		
		public function set($search, $replace) {
			$this->main = str_replace($search, $replace, $this->main);
		}
		
		public function set_other($type, $code) {
			switch($type) {
				case "head": 
					$this->head_other .= $code;
					break;
				case "bottom":
					$this->bottom_other .= $code;
					break;
			}
		}
		
		public function compile() {
			$patch = $_SERVER['DOCUMENT_ROOT'] . "/templates/". ($this->admin ? "admin" : $this->conf->template) ."/template/bottom.tpl";
			if(!file_exists($patch)) {
				exit("Ошибка загрузки шаблона: " . $patch);
			}
			
			$this->main .= file_get_contents($patch);
			
			/*
				Автозамена кода
			*/
			$this->set("{title}", $GLOBALS['info_page']->title);
			$this->set("{cache}", $this->conf->cache);
			$this->set("{site_name}", $_SERVER['SERVER_NAME']);
			$this->set("{assets}", 'https://' . $_SERVER['SERVER_NAME'] . "/templates/". ($this->admin ? "admin" : $this->conf->template) ."/assets");
			$this->set("{other-head}", $this->head_other);
			$this->set("{other-bottom}", $this->bottom_other);
			
			$_SESSION['token'] = md5($_SERVER['DOCUMENT_ROOT']);
			$this->set("{token}", $_SESSION['token']);
		}
		
		public function show() {
			eval("?>" . $this->main . "<?");
		}
	}