.. include:: _resources.rst

.. swarm.hiveeyes.org documentation master file, created by
   sphinx-quickstart on Tue Jan 26 00:00:38 2016.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

.. _hiveeyes:

#################################
The Hiveeyes system documentation
#################################

Welcome to the jungle.

.. toctree::
    :maxdepth: 1
    :hidden:

    history
    vendor/hiveeyes-one/index
    vendor/open-hive/index
    foundation
    changes


*****
About
*****
Hiveeyes is a data collection platform for beehive monitoring voluntarily
operated by the beekeeper community.
It uses low-cost, low-power hardware and runs completely on open source software.

The roots of this project are in the independent `Open Hive`_,
`Hiveeyes <Hiveeyes project_>`_ and `Hive Monitor`_ bee monitoring projects.
Please have a look at our shared project :ref:`hiveeyes-history`.

We are a group of beekeepers from Berlin regularly meeting on
wednesdays to build a telemetry platform for beehive monitoring.
We are Karsten, Robert, Clemens, Richard, Martin, Andreas and Dazz.
Feel welcome to `join us <Hiveeyes email_>`_.


.. _hiveeyes-components:

**********
Components
**********

Read more about the hardware and software components used at :ref:`hiveeyes-foundation`.
As everything is completely in the open, you are free to operate your own monitoring
infrastructure based on these components.
However, we also operate a hosted :ref:`hiveeyes-platform` giving you an instant-on
experience for data collection and visualization.

Hardware
========
We currently have two different sensor kits in the making:

- :ref:`hiveeyes-one` uses RF for transmitting telemetry data
- :ref:`open-hive` is aiming at GSM and WiFi for connectivity

Software
========
- `Hiveeyes Arduino`_ Sensors: Atmel AVR MCU code for sensor reading and telemetry data transmission

- BERadio_ Gateway (optional): The RFM69_ to MQTT_ gateway used with the :ref:`hiveeyes-one` setup
  is a convenient and versatile serial-to-mqtt forwarder implementing some specific details of the
  Bencode_-based communication protocol.

- Kotori_ Backend: The backend platform is completely open and driven by
  a multi-channel, multi-protocol data acquisition and graphing
  toolkit in turn based on Grafana_, InfluxDB_ and Mosquitto_.

  Most data link communication paths are MQTT_-driven and completely
  transparent to all bus subscribers.

    - :ref:`platform-setup`
    - :ref:`platform-operations`


.. _hiveeyes-platform:

********
Platform
********

Intro
=====
The `Hiveeyes platform`_ is operated on "swarm.hiveeyes.org" and has the primary role
of a stable integration testbed.

Feel free to use the system to your own needs in beehive monitoring, no matter which sensor
hardware is in use at your site. Just `drop us an email <Hiveeyes email_>`_ about custom
requirements for data adapters, we are happy to support any protocol you are
already using in the field.

We are working closely with the developers of upstream software fitted for the purpose
of our platform.


Services
========
The `Hiveeyes platform`_ offers these services to the public:

- mqtt://swarm.hiveeyes.org
- https://swarm.hiveeyes.org/grafana/

The credentials for signing in to Grafana are::

    username: hiveeyes
    password: Efocmunk

Accessing the MQTT bus is not secured and currently unrestricted during beta.

Multi-tenancy
-------------
The platform is designed with multi-tenancy in mind. Just `drop us an email <Hiveeyes email_>`_
to register your own (sub-)domains with us, e.g. beehive-monitor.example.org.


Getting started
===============
#. Send measurement values / telemetry data to the "testdrive" channel by publishing it to the MQTT bus as JSON::

    # get hold of a MQTT client of your choice
    aptitude install mosquitto-clients

    # publish measurements
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/1/message-json -m '{"temperature": 42.84, "humidity": 83}'

#. Navigate to the automatically populated `testdrive dashboard <https://swarm.hiveeyes.org/grafana/dashboard/db/testdrive>`
   to watch measurements floating into Grafana.

Terms
=====

Operations
----------
The platform will be continuously monitored and maintained by a bunch of experienced
system administrators to ensure it's always up and running to be available to everybody
using it. We also perform nightly backups of the whole system. Your data should be safe.
If you experience any malfunction or have suggestions for further improvements,
please do not hesitate to `contact us <Hiveeyes email_>`_.

Fair-use policy
---------------
Please regulate your measurement frequency to prevent overloading the platform.
We are storing data for the long run.
Taking one measurement per five minutes should be enough, don't go further than
one measurement per minute.
However, there is no throttling in place right now, so feel free to stress-test
the platform (moderately and not permanently) in the "testdrive" namespace.



***********
Development
***********

Contributions are welcome!
==========================

- :ref:`hiveeyes-readme`
- :ref:`hiveeyes-changes`
- :ref:`hiveeyes-ideas`
- :ref:`hiveeyes-todo`
- :ref:`hiveeyes-research`


*********
Live data
*********

Intro
=====
Data currently is measured and collected at intervals of about 15 minutes from a beehive located in Berlin Wedding.
The `full dashboard <https://swarm.hiveeyes.org/grafana/dashboard/db/1-prototype-wip-amo>`_ is also available.

Last 30 days
============
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/1-prototype-wip-amo?panelId=5&fullscreen&from=now-30d&to=now" width="100%" height="400" frameborder="0"></iframe>
    <p>
        The weight of the hive is shown with the light blue line.
        The temperature sensor inside the hive is shown in dark blue and
        the sensor at the air hole, which is in the sun most times, is yellow.
    </p>

.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/1-prototype-wip-amo?panelId=1&fullscreen&from=now-30d&to=now" width="100%" height="400" frameborder="0"></iframe>

|clearfix|


Last 7 days
===========
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/1-prototype-wip-amo?panelId=5&fullscreen&from=now-7d&to=now" width="100%" height="400" frameborder="0"></iframe>
    <p>
        The weight of the hive is shown with the light blue line.
        The temperature sensor inside the hive is shown in dark blue and
        the sensor at the air hole, which is in the sun most times, is yellow.
    </p>

.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/1-prototype-wip-amo?panelId=1&fullscreen&from=now-7d&to=now" width="100%" height="400" frameborder="0"></iframe>

|clearfix|


Last 24 hours
=============
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/1-prototype-wip-amo?panelId=5&fullscreen&from=now-24h&to=now" width="100%" height="400" frameborder="0"></iframe>
    <p>
        The weight of the hive is shown with the light blue line.
        The temperature sensor inside the hive is shown in dark blue and
        the sensor at the air hole, which is in the sun most times, is yellow.
    </p>

.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/1-prototype-wip-amo?panelId=1&fullscreen&from=now-24h&to=now" width="100%" height="400" frameborder="0"></iframe>

|clearfix|


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

