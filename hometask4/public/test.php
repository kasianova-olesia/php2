<?php
ob_start();
echo "Hello, world";
$string = "What's up";
var_dump($string);
?>
<p>want to be happy be it</p>
<?php
$buff  = ob_get_clean();
?>