<?php
$output = shell_exec('ls -lart');
echo "<pre>$output</pre>";
?>


<?php 
$output = shell_exec('bash /var/www/feed.sh');
echo "<pre>$output</pre>";
?>

