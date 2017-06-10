<?php

class qa_html_theme extends qa_html_theme_base
{
  function head_custom()
  {
    $CustomHeader = <<<'EOD'
<SCRIPT TYPE="text/x-mathjax-config">
  MathJax.Hub.Config({ tex2jax: { inlineMath: [['$','$'], ["\\(","\\)"]] } });
</SCRIPT>
<SCRIPT TYPE="text/javascript"
  SRC="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML">
</SCRIPT>
<META HTTP-EQUIV="X-UA-Compatible" CONTENT="IE=EmulateIE7">
<SCRIPT TYPE="text/javascript" SRC="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></SCRIPT>
<SCRIPT type="text/javascript">
$(function() {
  function makePreviewArea() {
    input = $('textarea').val();
    $('#previewArea').html(input);
    MathJax.Hub.Queue(["Typeset",MathJax.Hub,"previewArea"]);
  }
  $('body').keyup(function(){makePreviewArea()});
  $('body').bind('updated',function(){makePreviewArea()});
  makePreviewArea();
});
</SCRIPT>
EOD;
    $this->output($CustomHeader);
  }

  function form_text_multi_row($field, $style)
  {
    global $qa_request;
    
    $htmlEditor = 0;
    if (preg_match("/^(\d+\/|ask)/",$qa_request)) {
      if (qa_opt('editor_for_qs') == 'HTML Editor' || qa_opt('editor_for_as') == 'HTML Editor')
        $htmlEditor = 1;
    }
    
    $value = @$field['value'];
    if ($htmlEditor)
      $value = qa_html($value);
    
    $this->output('<TEXTAREA '.@$field['tags'].' ROWS="'.(int)$field['rows'].'" COLS="40" CLASS="qa-form-'.$style.'-text">'.$value.'</TEXTAREA>');
    
    if ($htmlEditor)
      $this->output('<DIV CLASS="qa-form-'.$style.'-text" ID="previewArea"></DIV>');

  }
}

/*
	Omit PHP closing tag to help avoid accidental output
*/
