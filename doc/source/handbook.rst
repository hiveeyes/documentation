.. include:: _resources.rst

.. _handbook:

########
Handbook
########

.. contents::
   :local:
   :depth: 1

----

.. _data-acquisition:


************
Introduction
************
The system is flexible. It offers different sensor node setups and
communication paths for different data acquisition requirements aka. "flavours".


***************
Sensor hardware
***************

Beehive scales
==============
There are two different hive scale designs aka. "flavours":

- :ref:`beutenkarl-scale` is for heavy lifting and currently rigged up at :ref:`labhive-one`.
- :ref:`openhive-bee-scale` is an innovative, low-cost and low-effort variant which is about to be mounted.

Sensor nodes
============

- :ref:`hiveeyes-one` sensor nodes transmit measurement values to a gateway
  using radio-link communication, the gateway receives and decodes telemetry
  data from Bencode_ format, then forwards it to the MQTT_ broker in JSON.
  This is specified in :ref:`beradio-spec`.

- :ref:`openhive-seeeduino-stalker` sensor nodes send
  telemetry data by issuing HTTP POST requests over GPRS.

- :ref:`openhive-huzzah` sensor nodes are using WiFi to send
  telemetry data to the MQTT_ broker in JSON format.


****************
Data acquisition
****************

Getting started
===============
We prepared some examples for transmitting measurement values to the "testdrive"
channel of our community data collection platform. Feel free to try it on your own,
the system currently offers the HTTP and MQTT transport protocols.
The accepted payload formats are JSON and x-www-form-urlencoded.


.. _daq-mqtt:

MQTT
----
.. highlight:: bash

Publish telemetry data to the MQTT bus::

    # Get hold of a MQTT client of your choice
    aptitude install mosquitto-clients

    # Define the target address
    export BROKER=swarm.hiveeyes.org
    export CHANNEL=testdrive/area-42/node-1

    # Publish a single measurement sample
    echo '{"temperature": 42.84, "humidity": 83}' | mosquitto_pub -h $BROKER -t hiveeyes/$CHANNEL/message-json -l



.. _daq-http:

HTTP
----
.. highlight:: bash

Use HTTP for submitting telemetry data using the HTTP client of your choice.
This example uses HTTPie_, a command line http client that will make you smile.
::

    # A. Get hold of a HTTP client of your choice
    aptitude install httpie

    # B. Define the target address
    export HTTPURI=https://swarm.hiveeyes.org/api
    export CHANNEL=testdrive/area-42/node-1

    # C. Publish a single measurement sample

    # C.1 Post as application/json
    http POST $HTTPURI/hiveeyes/$CHANNEL/data temperature:=42.84 humidity:=83

    # C.2 Post as application/x-www-form-urlencoded
    http --form POST $HTTPURI/api/hiveeyes/$CHANNEL/data temperature:=42.84 humidity:=83


.. tip::

    As sensor node hardware like the GPRSbee doesn't do TLS, there's an additional
    endpoint for unencrypted communication. In this case, just use::

        export HTTPURI=http://swarm.hiveeyes.org/api-notls


----

.. todo::

    - Describe "network", "gateway" and "node" components of the ``CHANNEL`` parameter,
      emphasize and describe generation of custom values.
    - Add more convenience by adding appropriate Javascript widgets.


Client libraries and programs
=============================
- For a generic Python library, visit :ref:`daq-python`.
- For a generic PHP library, visit :ref:`daq-php`.
- There is also :ref:`beradio-python <beradio-python>`, a serial-to-mqtt
  forwarder used as gateway for RF telemetry by :ref:`hiveeyes-one`.

.. tip::

    For feeding a sawtooth signal right from your shell without having any
    hardware in place, take a look at the :ref:`kotori:sawtooth-signal` page.

.. note::

    For selecting a client library and communication style
    of your choice, we recommend taking a look at the
    :ref:`Kotori data acquisition handbook <kotori:data-acquisition>`.


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
notifications to beekeepers is ready, enjoy.

.. note::

    The registration for alerts is currently a manual process.
    Please get back to us for getting support on that.

