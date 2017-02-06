.. include:: _resources.rst

.. _platform-setup:

.. _backend-setup:

#############
Backend setup
#############
.. highlight:: bash

The backend system is currently made of these free and open source software components:

- :ref:`Kotori`, a data acquisition, graphing and telemetry toolkit
- InfluxDB_, a time-series database
- Grafana_, a graph and dashboard builder for visualizing time series metrics
- `Eclipse Mosquitto`_, a MQTT message broker

It can be installed in various ways and will definitively work on
Linux and other Unix-based systems, but maybe also on Windows.
However, the documentation currently is just for Linux systems
running the Debian distribution or derivatives like Ubuntu.
Please get back to us if you need support for running it in
different environments, we are happy to help.


***************
Setup on Debian
***************

.. contents::
   :local:
   :depth: 1

----

Introduction
============
Install the whole stack on a Debian-based system.

All software packages are available from our package servers to make the installation a breeze.
The package repository supports the architectures amd64 (Intel, AMD and x86-compatibles) and ARM (armhf),
so it should work out of the box on Intel-compatible, RaspberryPi and similar hardware.


Prerequisites
=============

Add GPG key for checking package signatures::

    wget -qO - https://packages.hiveeyes.org/hiveeyes/foss/debian/pubkey.txt | apt-key add -

Add https addon for apt::

    apt-get install apt-transport-https


Register package repository
===========================

Add package server (e.g. append to ``/etc/apt/sources.list``)::

    deb https://packages.hiveeyes.org/hiveeyes/foss/debian/ testing main foundation

Reindex the package database::

    apt-get update


Setup the whole software stack
==============================
::

    # Install all packages at once
    apt-get install kotori influxdb grafana mosquitto mosquitto-clients

    # InfluxDB is not running after setup
    systemctl start influxdb

.. note::

    We recommend having the correct date and time configured on the backend system,
    otherwise you might experience glitches when accessing data in the past or in the future through Grafana.
    So please consider doing ``apt-get install chrony`` for setting up time synchronization on your backend machine.


***************
Getting started
***************


Access Grafana
==============
Grafana is listening on TCP port ``3000``.

- Go to http://backend.example.org:3000/
- Login with admin / admin.


Configure Kotori vendor
=======================

- ::

    cp /etc/kotori/examples/vendors/hiveeyes.ini /etc/kotori/apps-available/

- Activate::

    ln -s /etc/kotori/apps-available/hiveeyes.ini /etc/kotori/apps-enabled/

- Watch Kotori logfile::

    tail -F /var/log/kotori/kotori.log

- Restart Kotori::

    systemctl restart kotori


Send sample measurements
========================

MQTT
----
Please follow at :ref:`How to send telemetry data using MQTT <daq-mqtt>`
and use the hostname the backend system is running on::

    export BROKER=backend.example.org


HTTP
----
To send telemetry data using HTTP, see :ref:`How to send telemetry data using HTTP <kotori:daq-http>` and use the hostname the
backend system is running on::

    export HTTPURI=http://backend.example.org:24642/api

.. note::

    After installation, Kotori listens to ``localhost`` only. For making Kotori bind to **all interfaces**,
    effectively making it available to the public network,
    put the following bit of configuration into ``/etc/kotori/kotori.ini``::

        [kotori]
        http_listen = 0.0.0.0



Watch telemetry data
====================
Just navigate to the Grafana dashboard at http://backend.example.org:3000/dashboard/db/testdrive.
When sending telemetry data using one of the examples above, you should see
data being received and displayed instantly.


********
Appendix
********

.. seealso:: This is the Hiveeyes version of :ref:`Kotori on Debian <kotori:setup-debian>`, with all dependencies.

.. todo:: Add description about how to run an Nginx- or Apache-based reverse proxy in front of Kotori and Grafana.

