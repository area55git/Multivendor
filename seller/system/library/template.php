<?php
class Template {
	private $data = array();
  public function __construct($driver) {
	    $class = 'Template\\' . $driver;
		if (class_exists($class)) {
			$this->template = new $class($expire);
		} else {
			exit('Error: Could not load template driver ' . $driver . ' cache!');
		}
	}
	public function set($key, $value) {
		$this->data[$key] = $value;
	}
	public function render() {
		$file = DIR_TEMPLATE . $template;
		if (file_exists($file)) {
			extract($data);
			ob_start();
			require($file);
			$output = ob_get_contents();
			ob_end_clean();
			return $output;
		} else {
			trigger_error('Error: Could not load template ' . $file . '!');
			exit();
		}
	}
}
