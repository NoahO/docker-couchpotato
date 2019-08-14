<?php
    $re = $argv[1];
    $str = file_get_contents($argv[2]);
    $result = preg_match_all($re, $str, $out, PREG_SET_ORDER);

	foreach($out as $result) {
		echo $result[0];
	}
?>
