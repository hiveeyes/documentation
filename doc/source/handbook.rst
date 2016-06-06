.. include:: _resources.rst

.. _handbook:

########
Handbook
########


.. _data-acquisition:

****************
Data acquisition
****************

Introduction
============
Hiveeyes is flexible. It offers different communication paths for
data acquisition from different kinds of sensor nodes aka. "flavours".

Flavours
========
- :ref:`hiveeyes-one` sensor nodes transmit measurement values to a gateway
  using radio-link communication, the gateway receives and decodes telemetry
  data from Bencode_ format, then forwards it to the MQTT_ broker in JSON.
  This is specified in :ref:`beradio-spec`.

- :ref:`openhive-seeeduino-stalker` sensor nodes send
  telemetry data by issuing HTTP POST requests over GPRS.

- :ref:`openhive-huzzah` sensor nodes directly send
  telemetry data to the MQTT_ broker in JSON format.

.. note::

    For selecting a client library and communication style
    of your choice, we recommend taking a look at the
    :ref:`Kotori data acquisition handbook <kotori:data-acquisition>`.

Getting started
===============

.. _daq-http:

HTTP
----
.. highlight:: bash

Send measurement values / telemetry data to the "testdrive" channel
by sending a POST request to the appropriate HTTP endpoint::

    # Get hold of a HTTP client of your choice
    aptitude install httpie

    # Publish measurement samples
    export HTTP_URI=https://swarm.hiveeyes.org
    export DEVICE_TOPIC=testdrive/area-42/node-1
    echo '{"temperature": 42.84, "humidity": 83}' | http POST $HTTP_URI/api/hiveeyes/$DEVICE_TOPIC/data


MQTT
----
.. highlight:: bash

Send measurement values / telemetry data to the "testdrive" channel
by publishing it to the MQTT bus as JSON message::

    # Get hold of a MQTT client of your choice
    aptitude install mosquitto-clients

    # Publish measurement samples
    export MQTT_BROKER=swarm.hiveeyes.org
    export DEVICE_TOPIC=testdrive/area-42/node-1
    echo '{"temperature": 42.84, "humidity": 83}' | mosquitto_pub -h $MQTT_BROKER -t hiveeyes/$DEVICE_TOPIC/message-json -l

----

.. todo::

    - Describe ``DEVICE_TOPIC`` parameter
    - Emphasize generation of custom "network", "gateway" and "node" identifiers.
    - Add convenience by adding appropriate Javascript widgets.

.. tip::

    For feeding a sawtooth signal right from your shell without having any
    hardware in place, take a look at the :ref:`kotori:sawtooth-signal` page.


Client libraries and programs
=============================
- :ref:`beradio-python <beradio-python>` is a serial-to-mqtt
  forwarder in Python used by :ref:`hiveeyes-one`.

- For a convenient PHP library, visit :ref:`daq-php`.


******************
Data visualization
******************
Navigate to the automatically populated Grafana
`testdrive dashboard <https://swarm.hiveeyes.org/grafana/dashboard/db/testdrive>`_
to watch measurement values floating in.
For guidelines about how to link to or embed Grafana dashboards and panels
and about how to specify datetime ranges, please read the :ref:`grafana-handbook`.


***********
Data alerts
***********
The first preliminary implementation of an automatic :ref:`mqttwarn-alerts`
for detecting sudden weight-loss and data-loss events and sending alert
notifications to beekeepers is ready, cheers!


*************
Beehive Scale
*************

Introduction
============
Hiveeyes is flexible. It offers different scale sockets
for different requirements aka. "flavours".

Flavours
========
- :ref:`beutenkarl-scale` is for heavy lifting and currently rigged up at :ref:`labhive-one`.
- :ref:`openhive-bee-scale` is an innovative, low-cost and low-effort variant which is about to be mounted.

