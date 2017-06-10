<?php

/*
	Question2Answer 1.3.1 (c) 2011, Gideon Greenspan

	http://www.question2answer.org/

	
	File: qa-include/qa-editor-basic.php
	Version: 1.3.1
	Date: 2011-02-01 12:56:28 GMT
	Description: Basic editor module for HTML text editing


	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	More about this license: http://www.question2answer.org/license.php
*/

	if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
		header('Location: ../');
		exit;
	}

	class qa_editor_html {
		
		function load_module($localdir, $htmldir)
		{
		}
		
		function calc_quality($content, $format)
		{
			if ($format=='html')
				return 1.0;
			elseif ($format=='')
				return 0.8;
			else
				return 0;
		}

		function get_field(&$qa_content, $content, $format, $fieldname, $rows, $autofocus)
		{
			if ($autofocus)
				$qa_content['focusid']=$fieldname;
			
			return array(
				'type' => 'textarea',
				'tags' => ' NAME="'.$fieldname.'" ID="'.$fieldname.'"',
				'value' => qa_sanitize_html($content),
				'rows' => $rows,
			);
		}
		
		function read_post($fieldname)
		{
			return array(
				'format' => 'html',
				'content' => qa_post_text($fieldname),
			);
		}
	
	};
	

/*
	Omit PHP closing tag to help avoid accidental output
*/