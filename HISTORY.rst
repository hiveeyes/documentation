#######
History
#######

.. contents::
   :local:
   :depth: 1

----

****
2016
****


2016-09-17 Maker Faire Berlin 2016
==================================
Clemens will be at the Maker Faire Berlin again, cheers! It will take place from September 30 to October 02.

See http://maker-faire.de/maker/berlin/2016/open-hive-und-hiveeyes/.


2016-09-03 New website
======================
- We released our new website at https://www.hiveeyes.org/ and tried hard to
  aggregate and link to the various bits of information in a different way.
  Just in-time for the Stadthonigfest (see below).


2016-09-03 Stadthonigfest Berlin 2016
=====================================
Karsten and Clemens are exhibitors at the yearly »Stadthonigfest Berlin 2016«.

.. seealso::

    - http://prinzessinnengarten.net/event/stadthonigfest/
    - https://www.imkerverein-berlin.de/wordpress/index.php/2016/08/18/stadthonig-fest-am-3-9-2016/

.. figure:: https://ptrace.hiveeyes.org/2016-09-13_stadthonigfest-berlin-2016-karsten-and-clemens.jpg
    :alt: Karsten and Clemens at the Stadthonigfest 2016 in Berlin

    Karsten and Clemens at the Stadthonigfest 2016 in Berlin

.. figure:: https://ptrace.hiveeyes.org/2016-09-15_hiveeyes-business-card.jpg
    :alt: Clemens made some business cards for us. Thanks!

    Clemens made some business cards for us. Thanks!


2016-07-10 Next-generation sensor- and telemetry-nodes
======================================================
- Introduce the :ref:`generic-firmware`, a flexible software breadboard for
  sensor-, transceiver- and gateway-nodes.
  This is now based on the RadioHead_ and :ref:`beradio-c++` libraries for
  radio transmission. For building it, we switched to the fine `Arduino-Makefile`_.

  Welcome LoRa! Cheers, Richard!


2016-07-10 Publishing time: Everything is on GitHub, finally
============================================================
- :ref:`open-hive-firmware` running on the :ref:`openhive-box` (`GitHub <https://github.com/hiveeyes/arduino>`_)
- :ref:`scale-adjust-firmware` (`GitHub <https://github.com/hiveeyes/arduino>`_)
- :ref:`BERadio`, our Radio-to-MQTT forwarder (`GitHub <https://github.com/hiveeyes/beradio>`_)
- :ref:`Kotori`, our backend system for data acquisition (`GitHub <https://github.com/hiveeyes/kotori>`_)
- :ref:`hiveeyes-system` (`GitHub <https://github.com/hiveeyes/documentation>`_)


2016-06-27 Summary of June 2016
===============================
- June 27: `SODAQ Forum: Hive scale code <http://forum.sodaq.com/t/hive-scale-code/275/14>`_
- June 19: Karsten asks for `Freifunk im mauergarten <http://comments.gmane.org/gmane.org.freifunk.berlin/24155>`_
- June 18: `Summary from Clemens <http://forum.arduino.cc/index.php?topic=113534.msg2806320#msg2806320>`_
  at `Measuring the weight of a beehive`_
- June 13: `SODAQ Forum: Hive scale design <http://forum.sodaq.com/t/hive-scale-design/305/3>`_
- May 28: `OSCE challenge: Set up an open source bee monitoring system to which anyone can contribute and share data easily <http://community.oscedays.org/t/our-challenge-is-to-set-up-an-open-source-bee-monitoring-system-to-which-anyone-can-contribute-and-share-data-easily/4873/4>`_


2016-06-17 Firmware builder
===========================
.. highlight:: bash

We start building firmwares automatically from our `Hiveeyes Arduino`_ repository at GitHub.
Acquiring a firmware and programming it to your sensors node is now just a matter
of sending a HTTP POST request to ``https://swarm.hiveeyes.org/api/hiveeyes/$DEVICE_TOPIC/firmware.hex``,
see also :ref:`arduino:firmware-builder` documentation for more details.


2016-06-08 Ping
===============
Karsten has a nice summary about our project from a different angle,
enjoy reading http://karstenharazim.de/bienenmonitoring-hiveeyes-ping/.


2016-06-06 HTTP data acquisition
================================
.. highlight:: bash

While already consuming measurement data via MQTT,
we start accepting measurements through POST requests to
our new HTTP API. Data acquisition is now just a matter of::

    export DEVICE_TOPIC=testdrive/area-42/node-1
    echo '{"temperature": 42.84, "humidity": 83, "weight": 33}' | http POST https://swarm.hiveeyes.org/api/hiveeyes/$DEVICE_TOPIC/data

See :ref:`Data acquisition over HTTP <daq-http>` for more
details and :ref:`daq-php` for an example application.


2016-06-03 Open Source Beehives starts harvesting data
======================================================
`Open Source Beehives`_ starts harvesting data, cheers!
Enjoy some `impressions from rigging up the telemetry device <https://www.facebook.com/opensourcebeehives/posts/1189629687777000>`_
and also have a look at `live data <https://fusiontables.googleusercontent.com/fusiontables/embedviz?containerId=googft-gviz-canvas&viz=GVIZ&t=LINE_AGGREGATE&isXyPlot=true&bsize=0.0&q=select+col10,+col9,+col8,+col0+from+1s6M0ooL3HAa1n4MupcT8WD_c4zwT7iP9eNL9F72N+where+col10+%3E%3D+%272000-01-15+00:00:00%27+and+col10+%3C%3D+%272000-01-31+00:00:00%27&qrs=+and+col10+%3E%3D+&qre=+and+col10+%3C%3D+&qe=+order+by+col10+asc&uiversion=2&gco_forceIFrame=true&gco_hasLabelsColumn=true&width=1100&height=400>`_.


.. _lora-ahead:

2016-05-30 LoRa ahead!
======================
Richard soldered a HopeRF RFM95 radio module onto a `JeeLink`_ USB adapter
and started transmitting "Hello World" using the `RH_RF95 driver`_ of the
fine RadioHead_ library by Mike McCauley of AirSpayce_. Cheers!

.. figure:: https://ptrace.hiveeyes.org/2016-06-02_Jeelink-Lora-Hardware.jpg
    :alt: JeeLink carrying HopeRF RFM95 radio module
    :width: 400px
    :align: left
    :figclass: caption-regular

    JeeLink_ carrying HopeRF RFM95 radio module

.. figure:: https://ptrace.hiveeyes.org/2016-06-02_Jeelink-Lora-Hello-World.png
    :alt: Hello World over RFM95
    :width: 400px
    :align: right
    :figclass: caption-regular

    Hello World over RFM95, using RadioHead_

|clearfix|


2016-05-30 Data alerts
======================
The first preliminary implementation of an automatic :ref:`mqttwarn-alerts`
for detecting sudden weight-loss and data-loss events is ready,
it will send appropriate alert notifications to beekeepers, cheers!


2016-05-26 Publishing time
==========================
- Huge documentation improvements for release :ref:`version-0.4.1`
- Publish :ref:`Hiveeyes Arduino documentation <arduino:hiveeyes-arduino>` for `Hiveeyes Arduino`_ source code
- Add :ref:`handbook` about data acquisition and working with Grafana_
- Add :ref:`do-it-yourself` about how to build your own monitoring system components
- Embed and discuss some interesting events from :ref:`labhive-one`, see below
- Release and package Kotori_ :ref:`0.7.1 <kotori-0.7.1>`, the universal data
  sink component powering the Hiveeyes backend, amongst others
- Update project :ref:`history`


2016-05-24 Platform upgrade
===========================
Richard and Andreas upgraded the software releases on our platform server
``swarm.hiveeyes.org`` to their most recent versions.
The upgrade worked fine, we didn't have any issues.

Now we're running:

- Mosquitto 1.4.8
- InfluxDB 0.13.0 (up from 0.10.0)
- Grafana 3.0.2 (up from 2.6)
- Kotori 0.7.1 (up from 0.5.1)

When upgrading InfluxDB, some database migration steps were required:

- https://docs.influxdata.com/influxdb/v0.13/administration/upgrading/#upgrading-from-0-10-or-0-11-to-0-13


.. _labs-event-20160523-nightly-weight-gain:

2016-05-23 Nightly weight gain? It's raining!
=============================================
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=20160523T162500&to=20160524T014500" width="100%" height="425" frameborder="0"></iframe>

On May 23, 2016 it started raining at 23:00 hours (note the sudden drop
of temperature between 23:05 and 23:20), so the hive probably gained some
weight directly or indirectly through rain water (48 kg to 49 kg between
23:00 and 23:30 hours, reaching 50 kg at 01:00 hours, all times CEST).

Q: Does the water leak into the hive? Is it the electronics not behaving
due to temperature drop or humidity increase?

A: Richard revealed us that he'd put a bulky chipboard on top of the hive
in order to compensate on purpose for some weight-loss due to beehive work
the other day. This piece of chipboard most probably have soaked up some
rain water, thus responsible for the total weight increase. :-)


.. _labs-event-20160522-harvesting:

2016-05-22 Harvesting
=====================
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=20160522T090500&to=20160522T200500" width="100%" height="425" frameborder="0"></iframe>

Robinia blossom time ahead. Richard and Laura want to make genuine
Robinia honey, so they harvested the honey which is currently in the hive.
You can recognize the two spots at 14:00 hours and ~20:00 hours.


.. _hiveeyes-schwarmalarm-2016-05-20:
.. _labs-event-20160520-schwarmalarm:

2016-05-20 Schwarmalarm
=======================
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=20160519T040000&to=20160519T170000" width="100%" height="425" frameborder="0"></iframe>

Bam.

This is a weight-loss event from :ref:`hiveeyes-scale-beutenkarl`
recorded on May 20, 2016 between 10:11 and 10:26 hours CEST after a
bee colony started swarming at the Hiveeyes
:ref:`labs beehive <labhive-one>` in Berlin Wedding.

.. todo::

    There's a another story about catching the colony from a nearby Robinia tree.
    More on that later from Richard.


2016-05-19 Elektrischer Reporter
================================

.. figure:: https://ptrace.hiveeyes.org/2016-07-10_ElRep149-Splash-Richard.jpg
    :target: http://www.elektrischer-reporter.de/phase3/video/390/
    :alt: Elektrischer Reporter 149: Vernetzte Bienen, Fahrradlobbyisten und Spielausgrabungen
    :width: 800px

.. container:: width-800

    In »*Elektrischer Reporter 149: Vernetzte Bienen, Fahrradlobbyisten und Spielausgrabungen*«,
    Richard Pobering talks about the Hiveeyes project. Enjoy!

|clearfix|


.. _labs-event-20160518-spring-time:

2016-05-18 Spring time
======================

Intro
-----
Data currently is measured at intervals of about 15 minutes.

In the following graphs the weight of the hive is shown with the light blue line.
The temperature sensor inside the hive is shown in dark blue and
the sensor at the air hole, which is in the sun most times, is yellow.


April/May 2016
--------------
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=20160418T200000&to=20160518T160000" width="100%" height="425" frameborder="0"></iframe>

Let's have a look at the data. During the cold period at the end of April the beehive loses absolute weight
because the bees have to live off their reserves. In contrast, the following two weeks were amazingly warm in May,
so the worker bees are getting extremely busy.

From April 29 until May 13, the weight has increased by almost 14 Kg.
On some days the beehive gained 2 Kg weigth due to pollen and nectar collecting.

It was the time of the fruit blossoms, so the cherry, pear and apple trees were in bloom in the nearby allotments.


2nd May
-------
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=20160430T130000&to=20160503T040000" width="100%" height="425" frameborder="0"></iframe>

The beehive gained a lot of weight on the 2nd of May. After six o'clock in the morning
the temperature begins to rise, at 7:15 the first sun rays shine on the entrance hole.
The first scouts leave the beehive at 7:45 and at 8:15 everyone is in the air.
The beehive suddenly loses 120g since about 1200 bees are leaving to harvest.

At 9:20, the ratio between the arriving and departing bees reverses and the weight increases rapidly.

Throughout the day, bees are flying in and out, collecting nectar and pollen, explore and report.
Even as the beehive is in the shadow from 16:00 and the temperature starts sinking,
the bee colony continues to collect until 20:00.

1800g have then carried home. It was a good warm and important day, after the long period of winter
and the cold snap end of April.


2016-05-18 Release time
=======================
Release `Hiveeyes Arduino`_ source code for Arduino_-compatible microprocessors.


.. _history-2016-04-14:

2016-04-14 Elektrischer Reporter
================================
Tobias Lenartz and Markus Börner from `Elektrischer Reporter`_
visit us to interview Richard about our project,
the documentary will be aired on May 19, 2016.

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_ElRep%20-%2001%20-%20Interview.jpg
    :alt: Elektrischer Reporter Interview "#149: Vernetzte Bienen"
    :width: 400px
    :align: center

    Elektrischer Reporter Interview "#149: Vernetzte Bienen"

|clearfix|

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_ElRep%20-%2002%20-%20Tobias%20Lenartz%2C%20Markus%20Boerner.jpg
    :alt: Elektrischer Reporter "#149: Vernetzte Bienen": Tobias Lenartz, Markus Boerner
    :width: 400px
    :align: left
    :figclass: caption-regular

    Markus Boerner and Tobias Lenartz in »ElRep #149: Vernetzte Bienen«

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_ElRep%20-%2003%20-%20Richard%20Pobering.jpg
    :alt: Elektrischer Reporter "#149: Vernetzte Bienen": Richard Pobering
    :width: 400px
    :align: right
    :figclass: caption-regular

    Richard Pobering in »ElRep #149: Vernetzte Bienen«

|clearfix|


.. _beutenkarl-rigging-hiveeyes-one:

.. _history-beutenkarl-mounted:

2016-04-14 Scale frame "Beutenkarl"
===================================
Rigging up the scale frame "Beutenkarl" at the Hiveeyes
:ref:`labs beehive <labhive-one>` in Berlin Wedding and
connecting it to the :ref:`Hiveeyes One` sensor hub.
The setup was pretty quick, we were finished in approx.
30 minutes.

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2001%20-%20Beutenkarl.jpg
    :alt: Scale Frame "Beutenkarl"
    :width: 400px
    :align: left
    :figclass: caption-regular

    Scale frame "Beutenkarl" with `Bosche H30A single point load cell`_

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2002%20-%20Rigging.jpg
    :alt: Karsten at work
    :width: 400px
    :align: right
    :figclass: caption-regular

    Karsten at work

|clearfix|

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2003%20-%20Rigging.jpg
    :alt: Richard is funneling the data
    :width: 400px
    :align: left
    :figclass: caption-regular

    Richard is funneling the data

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2004%20-%20Data.jpg
    :alt: Data arrives
    :width: 400px
    :align: right
    :figclass: caption-regular

    Data arrives

|clearfix|

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2005%20-%20Ready%2C%20Back.jpg
    :alt: Scale frame is mounted. Back view.
    :width: 400px
    :align: left
    :figclass: caption-regular

    Scale frame is mounted. Back view.

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2006%20-%20Ready%2C%20Front.jpg
    :alt: Scale frame is mounted. Front view.
    :width: 400px
    :align: right
    :figclass: caption-regular

    Scale frame is mounted. Front view.

|clearfix|


.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=1460635978156&to=1460663593934" width="100%" height="425" frameborder="0"></iframe>

Weight measurements start arriving in Grafana.


2016-04-06 Arduino Forum Updates
================================
Clemens gives a short overview about the progress on the Arduino Forum thread `Measuring the weight of a beehive`_:

    - April 6: http://forum.arduino.cc/index.php?topic=113534.msg2698604#msg2698604


2016-02-16
==========
:ref:`OpenHive` starts transmitting data. Cheers!

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-huzzah.jpg
    :target: https://www.facebook.com/photo.php?fbid=10205861763442966&set=pb.1224510416.-2207520000.1454976667.&type=3&theater
    :alt: Open Hive ESP8266
    :width: 330px
    :figclass: caption-narrow
    :align: left

    ESP8266_-based sensor node transmits MQTT_ messages from the workbench

.. figure:: _static/img/kotori-logo.png
    :target: Kotori_
    :alt: Kotori
    :width: 75px
    :figclass: vertical-align-middle caption-center

    mqttlink++

.. figure:: https://ptrace.hiveeyes.org/2016-02-16_grafana-ber-prototype-2.jpeg
    :target: https://swarm.hiveeyes.org/grafana/dashboard/snapshot/b87pjWd80DfENQXBa4JzTT5mSUt83Tsd
    :alt: Open Hive Grafana dashboard
    :width: 330px
    :align: right

    Grafana dashboard "BER prototype #2"

|clearfix|

.. todo::

    Get some pictures from the ESP8266_ actually transmitting telemetry data here.
    Write some lines about the past and current setups at :ref:`OpenHive`.


.. _mqttwarn-xmpp:

2016-02-12
==========
Start integrating with mqttwarn_: Add `feature "dynamic topic targets"`_ to `incorporate topic names into topic targets`_.

.. figure:: https://ptrace.hiveeyes.org/2016-02-12_hiveeyes-notification-xmpp.jpg
    :alt: xmpp messages from mqttwarn
    :width: 800px

    Receive messages from MQTT_ and republish to XMPP_



.. _history-2016-02-04:
.. _history-hiveeyes-one-online:

2016-02-04
==========
:ref:`hiveeyes-one` starts transmitting data. Cheers!

Hiveeyes radio receiver and sender
----------------------------------
Two Arduino_-based nodes talk to each other using RFM69_.
We use the BERadio_ encoding for efficiently sending multiple
measurement values over a 7-bit-clean communication link.

It's a harsh environment: The maximum payload size is 62 bytes.
To keep battery drain at its lowest, we want to squeeze as much
data into the payload as possible to reduce the number of radio
beams required to transmit collected telemetry data.

.. figure:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/BiQuad.jpg
    :target: `DIY antennas for RFM69`_
    :alt: hiveeyes-one receiver
    :figclass: caption-narrow rotated
    :width: 400px
    :class: rotate-right
    :align: left

    The receiving antenna, see also `DIY antennas for RFM69`_

.. from: http://all-free-download.com/free-vector/download/antenna_and_radio_waves_clip_art_9501.html
.. figure:: _static/img/radio-waves.svg
    :target: RFM69_
    :width: 75px
    :figclass: vertical-align-middle caption-center

    RFM69_

    .. figure:: _static/img/beradio-logo.png
        :target: BERadio_
        :width: 75px
        :figclass: vertical-align-middle caption-center

        BERadio_

.. figure:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/Distanz.jpg
    :target: `DIY antennas for RFM69`_
    :alt: hiveeyes-one sender
    :figclass: caption-regular
    :width: 400px
    :align: right

    The first HEnode_ sensor node sits in a hive approx. 120 meters away
    in line-of-sight distance through a single tree. Transmits telemetry
    data over radio link.

|clearfix|


Hiveeyes radio-to-mqtt gateway
------------------------------
A JeeLink_ RFM69_ receiver is connected to the Gateway-JeePi_, a RaspberryPi_ SoC machine through USB,
acting as gateway and used as development and integration system.
This runs the BERadio_ gateway subsystem, a convenient serial-to-`MQTT`_ forwarder written in Python.
Also, we compile Arduino_ code on this machine and reprogram the devices.

.. figure:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/Jeelink%2BSMA.jpg
    :target: `DIY antennas for RFM69`_
    :alt: hiveeyes-one receiver
    :width: 400px
    :figclass: caption-regular
    :align: left

    The antenna is connected to the USB RFM69_ receiver JeeLink_ through a SMA connector

.. figure:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/GatewayRPI-Jeelink.jpg
    :target: `DIY antennas for RFM69`_
    :alt: Gateway with RaspberryPi and JeeLink
    :width: 400px
    :figclass: caption-regular
    :align: right

    Gateway with RaspberryPi_ and JeeLink_

|clearfix|


.. container:: container-center narrow

    .. figure:: _static/img/beradio-logo.png
        :target: BERadio_
        :width: 75px
        :align: left

        BERadio_

    .. figure:: _static/img/kotori-logo.png
        :target: Kotori_
        :alt: Kotori
        :width: 75px
        :align: right

        mqttlink++

|clearfix|


Hiveeyes backend
----------------

.. todo:: GraphViz_ flow graphs for giving insight into the communication paths between these components

.. figure:: https://ptrace.hiveeyes.org/2016-02-04_grafana-ber-prototype-1.jpeg
    :target: https://swarm.hiveeyes.org/grafana/dashboard/snapshot/Z9QBKYitgiOq53lrySWkbOSyWUk9rc92
    :alt: hiveeyes-one dashboard
    :width: 400px
    :align: right

    Grafana dashboard "BER prototype #1"

|clearfix|


2016-01-29
==========
- Announce beta version of the :ref:`Hiveeyes platform <Hiveeyes platform>` hosted on ``swarm.hiveeyes.org``


2016-01-25
==========
Work on bringing :ref:`HiveeyesOne` into the field

.. figure:: https://ptrace.hiveeyes.org/2016-01-25_first-measurements-in-grafana.jpg
    :alt: hiveeyes-one: first measurements in grafana
    :width: 600px

    The first measurements arrive in Grafana


2016-01-03
==========
Dazz starts the `Hive Monitor`_ project featuring the `Hive Monitor Vagrant VM`_
and some `Hive Monitor Python scripts`_ for playing around with MQTT_ and forwarding
payloads between the serial interface and the Mosquitto_ message broker.


****
2015
****


2015-11
=======
- Proof-of-concept telemetry platform based on Mosquitto_, InfluxDB_ and Grafana_
  with Kotori_ 0.3.2 and BERadio_ 0.4.4. See upstream changes:

    - `Kotori 0.3.2 changes`_ aka. :ref:`Kotori 0.3.2` for :ref:`vendor Hiveeyes <vendor-hiveeyes>`
    - `BERadio 0.4.4 changes`_ aka. :ref:`BERadio 0.4.4`

- Further improve :ref:`HiveeyesOne` hardware and software


2015-10
=======

Open Hive
---------
- `Open Hive`_ is at the `Maker Faire Berlin`_ 2015 from 2015-10-03 to 2015-10-05.
  Clemens Grubers "Open Hive" project was covered in `The Very First Maker Faire Berlin Doesn’t Miss a Beat <Maker Faire Berlin 2015_>`_
  by Donald Bell. Enjoy reading:

    .. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-maker-faire-berlin-2015-article.png
        :alt: Open Hive at Maker Faire Berlin 2015
        :target: `Maker Faire Berlin 2015`_
        :figclass: caption-large
        :width: 679px

        Open Hive at Maker Faire Berlin 2015.
        Excerpt from the article «The Very First Maker Faire Berlin Doesn’t Miss a Beat«
        published in `Make magazine`_ by Donald Bell, October 5, 2015.

- :ref:`openhive-temperature-array` prototype

    .. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-temperature-array.jpg
        :alt: Open Hive temperature array prototype
        :width: 800px

        Open Hive temperature array, prototype left with PCB, right with ribbon cable

Hiveeyes
--------
- Continue working on :ref:`HiveeyesOne`

- Build upon `serial-to-mqtt`_ by `Andy Piper`_ and `Didier Donsez`_ and iterate into

    - the :ref:`beradio-spec`, an efficient transport protocol for radio link communication.
      Throws Bencode_ into the mix of the constrained environment of RFM69_ with Moteino_.
    - the BERadio_ Python library, for forwarding payloads between
      a JeeLink_ receiving data via RFM69_ on a serial interface
      of a RaspberryPi_ and the MQTT_ message broker Mosquitto_.

- Investigate SPI-Flash & Dualoptiboot for over-the-air programming


2015-08
=======
- Hacking on Hiveeyes at the `Chaos Communication Camp 2015`_ from August 13-17, 2015 in Mildenberg
- Baby steps for BERadio_, first steps with Bencode_ on Arduino_


2015-07
=======
:ref:`openhive-seeeduino-stalker` prototype, see also `Open Hive Shields`_

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-seeeduino-stalker-closeup.jpg
    :target: `Open Hive Shields`_
    :alt: Open Hive Seeeduino Stalker
    :width: 400px
    :align: left

    Open Hive Seeeduino Stalker

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-seeeduino-stalker-kit-top.jpg
    :alt: Open Hive Seeeduino Stalker Kit
    :width: 400px
    :align: right
    :figclass: caption-narrow

    Open Hive Seeeduino Stalker Kit

|clearfix|


2015-04
=======
- Setup ``elbanco.hiveeyes.org`` as an integration server, we are running Debian 8.3 (jessie)

Open Hive Bee Scale
-------------------
The `Open Hive Bee Scale`_ is a low-cost load cell platform (prototype II)

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-beescale.jpg
    :target: `Open Hive Bee Scale`_
    :alt: Open Hive Bee Scale
    :width: 400px


2015-03
=======
- | Clemens is collaborating with others about best-of-breed GPRS components
  | https://holadimake.wordpress.com/2014/12/30/building-a-cellular-tracker-part2-the-board-decision-adafruit-fona-vs-linkit-one-vs-archgprs/


2015-02
=======
- Start research on `MQTT-SN`_ with `MQTT-SN-Arduino`_ library

2015-01
=======
`Open Hive`_ load cell platform (prototype I)

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-cnc-machining-workshop_2015-01.jpg
    :target: `CNC Machining Workshop`_
    :alt: Open Hive CNC Machining Workshop
    :width: 400px

    `CNC Machining Workshop`_  at `FabLab Berlin`_

- News from Markus:
  http://www.euse.de/wp/blog/2015/01/bienenwaage-reloaded/


****
2014
****


2014-12
=======
- Register domain "hiveeyes.org"
- Start the email distribution list
- Spin up Trac_ instance as a `Wiki of the Hiveeyes project <Hiveeyes project_>`_


2014-11
=======
- Start working on a sensor node network based on Felix Rusu's LowPowerLab_ RFM12B_/RFM69_ libraries.

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230212.jpg
    :target: `RFM Breakout-Board soldering`_
    :alt: Two nodes transmitting via RFM12B
    :width: 400px
    :align: left

    Two nodes transmitting via RFM12B_

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230359.jpg
    :target: `RFM Breakout-Board soldering`_
    :alt: The first characters transmitted
    :width: 400px
    :align: right

    The first characters transmitted

|clearfix|

- News from Markus:
  http://www.euse.de/wp/blog/2014/11/voltaic-solar-charger-in-action/


2014-10
=======
- Start ...

    - organizing regular get-togethers
    - hardware evaluation and prototyping
    - architecture, concept and design


2014-09
=======
- `Workshop digitales Bienenmonitoring`_ at `mauergarten e.V.`_ on September 21, 2014


2014-24
=======

.. _apidictor:

apidictor
---------
- Dazz starts collecting information about building an :ref:`apidictor`
  at https://gist.github.com/dazz/11309904 and also prepared Python source
  code performing FFT-analysis with SciPy/NumPy at https://github.com/c-base/apidictor.


2014-04
=======
- Markus Euskirchen of `Open Bee Hive`_ has some news:

    - http://www.euse.de/wp/blog/2014/04/durchbruch-bienenwaage/
    - http://www.euse.de/wp/blog/2014/06/bienenwaage-testbetrieb/
    - http://www.euse.de/wp/blog/2014/07/bienenstockwaage-wireless/

        .. figure:: https://www.euse.de/wp/wp-content/uploads/2014/07/p1050109.jpg
            :alt: Open Bee Hive Scale Wireless
            :width: 400px
            :figclass: caption-narrow

            Open Bee Hive Scale Wireless based on the `RedFly-Shield`_ from `Watterott`_.

    - http://www.euse.de/wp/blog/2014/07/bienenwaage-todo-2/
    - Bee Hive Scale Graph: http://www.euse.de/honig/beescale/graph.php

- Clemens Gruber starts the `Open Hive`_ open source beehive monitoring project


2014-01
=======
Open Hive :ref:`openhive-cnc-machining-workshop-2014`

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-beescale-2014-D.jpg
    :width: 400px
    :align: left

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-beescale-2014-E.jpg
    :width: 400px
    :align: right

|clearfix|

****
2013
****

2013-07
=======
.. raw:: html

    <iframe src="https://player.vimeo.com/video/69973637?color=c9ff23&byline=0&portrait=0" width="800" height="450" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

.. container:: width-800

    `Pre-Work Talk #7 -- Bees <https://vimeo.com/69973637>`_ from `IXDS <https://vimeo.com/user17912812>`_.

    In his talk "Bees Dance" Tim Landgraf reveals how robotics are involved with bees,
    Yair Kira presents his project "Bees Armchair" and beekeeper Clemens Gruber shares
    how he gets insights from his beehive through computer based monitoring in the
    "Open Hive" project. Clemens starts talking at 26:00.

    Enjoy!

|clearfix|


2013-06
=======

.. figure:: https://ptrace.hiveeyes.org/2016-05-24_openhive-prototype-sound_2013-06.png
    :target: http://open-hive.org/prototype-sound_2013-06/
    :alt: Open Hive Sound prototype
    :width: 800px

    `Result Dataset 2013/06 Day 08-17 <http://open-hive.org/prototype-sound_2013-06/>`_ from Clemens
    Gruber of Open Hive displaying different hive temperatures, humidity, brightness, pressure and audio fft.


****
2012
****

2012-07
=======
- The canonical Arduino Forum thread `Measuring the weight of a beehive`_ gets started
- News from Markus: http://www.euse.de/wp/blog/2012/07/ulengewicht/

2012-05
=======
News from Markus:

- http://www.euse.de/wp/blog/2012/03/solarladegerat-fertig/
- http://www.euse.de/wp/blog/2012/05/bienengewicht/


****
2011
****
Markus Euskirchen of `Open Bee Hive`_ starts the „Bienenkisten-Monitoring“
open source beehive monitoring project:

- http://www.euse.de/wp/blog/2011/11/bienen-ueberwachen/
- http://www.euse.de/wp/blog/2011/12/lauschen-statt-wiegen/
- http://www.euse.de/wp/blog/2011/12/teileliste/

Clemens of `Open Hive`_ and Markus will get in touch later working on early prototypes of beehive scales.

