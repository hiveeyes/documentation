.. include:: _resources.rst

.. _handbook:

########
Handbook
########

.. contents::
   :local:
   :depth: 1

----


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
See :ref:`data-acquisition`.


******************
Data visualization
******************
Navigate to the automatically populated Grafana
`testdrive dashboard <https://swarm.hiveeyes.org/grafana/dashboard/db/testdrive>`_
to watch measurement values floating in.
For guidelines about how to link to or embed Grafana dashboards and panels
and about how to specify datetime ranges, please read the :ref:`grafana-handbook`.


***********
Data export
***********
Exporting raw data in CSV format is just a matter of accessing
https://swarm.hiveeyes.org/api/hiveeyes/testdrive/area-42/node-1/data.txt
For more detailed information, please have a look at
the :ref:`data export handbook <kotori:data-export>`.


***********
Data alerts
***********
The first preliminary implementation of an automatic :ref:`mqttwarn-alerts`
for detecting sudden weight-loss and data-loss events and sending alert
notifications to beekeepers is ready, enjoy.

.. note::

    The registration for alerts is currently a manual process.
    Please get back to us for getting support on that.

