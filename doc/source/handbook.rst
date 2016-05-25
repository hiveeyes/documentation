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
- :ref:`hiveeyes-one` sensor nodes transmit data to a gateway using RF,
  the gateway receives and decodes telemetry data from Bencode_ format,
  then forwards it to the MQTT_ broker in JSON.
  This is specified in :ref:`beradio-spec` and implemented
  in Python using the serial-to-mqtt forwarder :ref:`beradio-python <beradio-python>`.

- :ref:`open-hive` sensor nodes based on the `Adafruit HUZZAH ESP8266`_
  directly send telemetry data to the MQTT_ broker in JSON format.

.. note::

    For selecting a client library and communication style of your choice,
    we recommend taking a look at :ref:`kotori-client-handbook`.

Getting started
===============

Linux commandline
-----------------
#. Send measurement values / telemetry data to the "testdrive" channel
   by publishing it to the MQTT bus as JSON message::

    # get hold of a MQTT client of your choice
    aptitude install mosquitto-clients

    # publish measurements
    export DEVICE_TOPIC=hiveeyes/testdrive/area-42/1
    mosquitto_pub -h swarm.hiveeyes.org -t $DEVICE_TOPIC/message-json -m '{"temperature": 42.84, "humidity": 83}'

#. Navigate to the automatically populated Grafana `testdrive dashboard <https://swarm.hiveeyes.org/grafana/dashboard/db/testdrive>`_
   to watch measurement values floating in.


******************
Data visualization
******************
For guidelines about how to link to or embed Grafana dashboards and panels
and about how to specify datetime ranges, please read the :ref:`grafana-handbook`.

