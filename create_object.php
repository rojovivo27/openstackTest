<?php

	require 'vendor/autoload.php';

	$openstack = new OpenStack\OpenStack([
	    'authUrl' => 'http://172.16.6.2:5000/v2.0',
	    'region'  => 'RegionOne',
	    'user'    => [
		'id'       => 'team.c2',
		'password' => 'kNd38H92'
	    ],
	    'scope'   => ['project' => ['id' => 'c040e89fe37e4d61826fed24d25c4983']]
	]);

	// You can use any instance of \Psr\Http\Message\StreamInterface
	$stream = new Stream(fopen('uploads/2016_09_10___18_19_32.jpg', 'r'));

	$options = [
	    'name'   => '2016_09_10___18_19_32.jpg',
	    'stream' => $stream,
	];

	/** @var \OpenStack\ObjectStore\v1\Models\Object $object */
	$object = $openstack->objectStoreV1()
	    ->getContainer('pistones')
	    ->createObject($options);
?>
