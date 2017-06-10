<?php

/*
	Plugin Name: HTML Editor
	Plugin URI: 
	Plugin Description: Basic HTML editor
	Plugin Version: 1.0
	Plugin Date: 2011-03-16
	Plugin Author: Gen Kuroki
	Plugin Author URI: http://genkuroki.web.fc2.com/
	Plugin License: GPLv2
	Plugin Minimum Question2Answer Version: 1.3
*/

if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
  header('Location: ../../');
  exit;
}

qa_register_plugin_module('editor', 'qa-editor-html.php', 'qa_editor_html', 'HTML Editor');

/*
	Omit PHP closing tag to help avoid accidental output
*/