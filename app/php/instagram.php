<?php

    // Instagram
    $client_id = "9a79b54fc7124ca599fde1ecacb2ba21";
    $access_token = "1515741686.9a79b54.a69e2e15a1224cf5a20602398603b8bb";

    function callInstagram($url){
		$ch = curl_init();
		curl_setopt_array($ch, array(
			CURLOPT_URL => $url,
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_SSL_VERIFYPEER => false,
			CURLOPT_SSL_VERIFYHOST => 2
		));

		$result = curl_exec($ch);
		curl_close($ch);
		return $result;
	}

	// $tag = 'kth';
	// $url = 'https://api.instagram.com/v1/tags/'.$tag.'/media/recent?client_id='.$client_id;
	$url = 'https://api.instagram.com/v1/users/self/media/recent?access_token='.$access_token;

	$inst_stream = callInstagram($url);
	echo $inst_stream;

?>
