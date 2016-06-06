<?php
// -*- coding: utf-8 -*-
/*
======================
Hiveeyes PHP data node
======================

Documentation
-------------
- https://hiveeyes.org/docs/system/acquisition/php.html#library

Downloads
---------
- https://hiveeyes.org/docs/system/_downloads/hiveeyes.php4
- https://getkotori.org/docs/_downloads/terkin-http.php4

Synopsis
--------
Transmit telemetry data from PHP::

    // Put this file into the folder of your PHP program
    include("hiveeyes.php4");

    // Create a "Node API" telemetry client object
    $telemetry = new HiveeyesNode(
        array(
            "network"   => "testdrive",
            "gateway"   => "area-42",
            "node"      => "node-1",
        )
    );

    // Transmit data
    $data = array("temperature" => 42.84, "humidity" => 83, "weight" => 37.4);
    $telemetry->transmit($data);


Basic API
---------

    // Create a "Basic API" telemetry client object
    include("terkin-http.php4");
    $telemetry = new TelemetryClient("https://swarm.hiveeyes.org/api/hiveeyes/testdrive/area-42/node-1/data");

*/

include("terkin-http.php4");

class HiveeyesNode extends TelemetryNode {
    /***
     *
     * Telemetry node client: Network participant API
     *
    **/

    function HiveeyesNode($api_uri, $options = array()) {
        if (is_array($api_uri)) {
            $options = $api_uri;
            $api_uri = "https://swarm.hiveeyes.org/api";
        }
        $options['realm'] = 'hiveeyes';
        parent::TelemetryNode($api_uri, $options);
    }

}

?>
