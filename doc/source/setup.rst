.. include:: _resources.rst

.. _platform-setup:

#############
Backend setup
#############


***************
Setup on Debian
***************

Install the whole stack on a Debian-based system.
The package repository supports architectures amd64 and armhf as of 2016-05-23.

It is currently made of these free and open source software components:

- Mosquitto_, a MQTT message broker
- InfluxDB_, a time-series database
- Grafana_, a graph and dashboard builder for visualizing time series metrics
- :ref:`Kotori`, a data acquisition, graphing and telemetry toolkit


Prerequisites
=============

Add GPG key for checking package signatures::

    wget -qO - https://packages.hiveeyes.org/hiveeyes/foss/debian/pubkey.txt | apt-key add -

Add https addon for apt::

    aptitude install apt-transport-https


Register with package repository
================================

Add source for "testing" distribution (e.g. append to /etc/apt/sources.list)::

    deb https://packages.hiveeyes.org/hiveeyes/foss/debian/ testing main foundation

Reindex package database::

    aptitude update


Setup the whole software stack
==============================
::

    aptitude install chrony mosquitto mosquitto-clients influxdb grafana kotori
    systemctl start influxdb


***************
Getting started
***************

Access Grafana
==============

- Go to http://hiveeyes.example.org:3000/
- Login with admin / admin.


Configure Kotori vendor
=======================

- ::

    cp /etc/kotori/examples/vendor-hiveeyes.ini /etc/kotori/apps-available/

- Activate::

    ln -s /etc/kotori/apps-available/vendor-hiveeyes.ini /etc/kotori/apps-enabled/

- Watch Kotori logfile::

    tail -F /var/log/kotori/kotori.log

- Restart Kotori::

    systemctl restart kotori


Send sample telemetry packet
============================
::

    mosquitto_pub -t hiveeyes/berlin/wedding/henode-42/message-json -m '{"temperature": 42.84, "humidity": 94}'


Watch telemetry data
====================
- Navigate to http://hiveeyes.example.org:3000/dashboard/db/berlin


********
Appendix
********

.. seealso:: This is the Hiveeyes version of :ref:`Kotori on Debian <kotori:setup-debian>`, with all dependencies.

