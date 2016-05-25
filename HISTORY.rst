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


2016-05-23 Weight gain at night, it's raining
=============================================
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-lab-wedding?panelId=5&from=1464020765066&to=1464054310642" width="800" height="425" frameborder="0"></iframe>

.. container:: width-800

    It started raining at 23 hours, so the hive probably gained some weight through water
    (48 kg to 49 kg between 23:00 and 23:30 hours, reaching 50 kg at 01:00 hours).

|clearfix|


2016-05-22 Harvesting
=====================
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-lab-wedding?panelId=5&from=1463906422908&to=1463948547357" width="800" height="425" frameborder="0"></iframe>

.. container:: width-800

    Robinia blossom time ahead. Richard and Laura want to make genuine
    Robinia honey, so they harvested the honey which is currently in the hive.

    You can recognize the two spots at 14:00 hours and ~20:00 hours.

|clearfix|


2016-05-20 Schwarmalarm
=======================
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-lab-wedding?panelId=5&from=1463633560600&to=1463680184231" width="800" height="425" frameborder="0"></iframe>

.. container:: width-800

    Bam.

|clearfix|


2016-05-19 Elektrischer Reporter
================================

.. figure:: http://www.blinkenfilme.de/phase3/149/ER3_149-original.jpg
    :target: http://www.elektrischer-reporter.de/phase3/video/390/
    :alt: Elektrischer Reporter 149: Vernetzte Bienen, Fahrradlobbyisten und Spielausgrabungen
    :width: 800px

    Elektrischer Reporter 149: Vernetzte Bienen, Fahrradlobbyisten und Spielausgrabungen

|clearfix|


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

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-lab-wedding?panelId=5&from=1461013134375&to=1463588387784" width="800" height="425" frameborder="0"></iframe>

.. container:: width-800

    Let's look at the data. During the cold period at the end of April the beehive loses absolute weight
    because the bees have to live off their reserves. In contrast, the following two weeks were amazingly warm in May,
    so the worker bees are getting extremely busy.

    From April 29 until May 13, the weight has increased by almost 14 Kg.
    On some days the beehive gained 2 Kg weigth due to pollen and nectar collecting.

    It was the time of the fruit blossoms, so the cherry, pear and apple trees were in bloom in the nearby allotments.

|clearfix|


2nd May
-------
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-lab-wedding?panelId=5&from=1462023385549&to=1462248704801" width="800" height="425" frameborder="0"></iframe>

.. container:: width-800

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

|clearfix|


2016-02-16
==========
:ref:`OpenHive` starts transmitting data. Cheers!

.. figure:: https://scontent-frt3-1.xx.fbcdn.net/v/t1.0-9/12647035_10205861763442966_6589427078704744972_n.jpg?oh=ad00e82e9144d02b0a253905e4b739d5&oe=57E3B918
    :target: https://www.facebook.com/photo.php?fbid=10205861763442966&set=pb.1224510416.-2207520000.1454976667.&type=3&theater
    :alt: Open Hive ESP8266
    :width: 440px
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
    :width: 320px
    :align: right

    Grafana dashboard "BER prototype #2"

|clearfix|

.. todo::

    Get some pictures from the ESP8266_ actually transmitting telemetry data here.
    Write some lines about the past and current setups at :ref:`OpenHive`.


2016-02-12
==========
Start integrating with mqttwarn_: Add `feature "dynamic topic targets"`_ to `incorporate topic names into topic targets`_.

.. figure:: https://ptrace.hiveeyes.org/2016-02-12_hiveeyes-notification-xmpp.jpg
    :alt: xmpp messages from mqttwarn
    :width: 320px

    Receive messages from MQTT_ and republish to XMPP_



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
    :width: 320px
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
    :figclass: caption-narrow
    :width: 320px
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
    :width: 320px
    :figclass: caption-narrow
    :align: left

    The antenna is connected to the USB RFM69_ receiver JeeLink_ through a SMA connector

.. figure:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/GatewayRPI-Jeelink.jpg
    :target: `DIY antennas for RFM69`_
    :alt: Gateway with RaspberryPi and JeeLink
    :width: 320px
    :figclass: caption-narrow
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
    :width: 320px
    :align: right

    Grafana dashboard "BER prototype #1"

|clearfix|


2016-01-29
==========
- Announce beta version of the `Hiveeyes platform`_ hosted on ``swarm.hiveeyes.org``


2016-01-25
==========
Work on bringing :ref:`HiveeyesOne` into the field

.. figure:: https://ptrace.hiveeyes.org/2016-01-25_first-measurements-in-grafana.jpg
    :alt: hiveeyes-one: first measurements in grafana
    :width: 320px

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
- `Open Hive`_ is at the `Maker Faire Berlin`_ from 2015-10-03 to 2015-10-05
- Continue working on :ref:`HiveeyesOne`
- Build upon `serial-to-mqtt`_ by `Andy Piper`_ and `Didier Donsez`_ and iterate into

    - the :ref:`beradio-spec`, an efficient ether transport
      protocol used for radio link communication. Throws Bencode_
      into the mix of the constrained environment of RFM69_ with Moteino_.
    - the BERadio_ Python library, for forwarding payloads between
      a JeeLink_ receiving data via RFM69_ on a serial interface
      of a RaspberryPi_ and the MQTT_ message broker Mosquitto_.

- Investigate SPI-Flash & Dualoptiboot for over-the-air programming


2015-08
=======
- Hacking on Hiveeyes at the `Chaos Communication Camp 2015`_ from 2015-08-13 to 2015-08-17 in Mildenberg
- Baby steps for BERadio_, first steps with Bencode_ on Arduino_


2015-07
=======
`Open Hive Shields`_ prototypes for Seeeduino Stalker (3.3 V) and Arduino Yun / Uno (5 V)

.. figure:: https://scontent-frt3-1.xx.fbcdn.net/t31.0-8/11143664_10204755930037822_8992406508094252562_o.jpg
    :target: `Open Hive Shields`_
    :alt: Open Hive Seeeduino Stalker
    :width: 320px
    :align: left

    Open Hive Seeeduino Stalker

.. figure:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-0/q83/p206x206/11703029_10204755930917844_5574703060967955722_n.jpg?oh=86d2c0d42dade1deda0b90675de983a5&oe=57604B2B
    :target: `Open Hive Shields`_
    :alt: Open Hive Arduino Yun / Uno
    :width: 320px
    :align: right

    Open Hive Arduino Yun / Uno

|clearfix|


2015-04
=======
- Setup ``elbanco.hiveeyes.org`` as an integration server, we are running Debian 8.3 (jessie)

Open Hive Bee Scale
-------------------
The `Open Hive Bee Scale`_ is a low-cost load cell platform (prototype II)

.. figure:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-0/p206x206/11188491_10204255677331817_1170125921095812284_n.jpg?oh=e86eff2ce77a3dfc2659cf7c29b438a2&oe=5755CAF2
    :target: `Open Hive Bee Scale`_
    :alt: Open Hive Bee Scale
    :width: 320px


2015-02
=======
- Start research on `MQTT-SN`_ with `MQTT-SN-Arduino`_ library

2015-01
=======
- Spin up Trac_ instance as a `Wiki of the Hiveeyes project <Hiveeyes project_>`_

`Open Hive`_ load cell platform (prototype I)

.. figure:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-prn2/v/t1.0-0/p206x206/1558384_10201453236632551_648198296_n.jpg?oh=4efa966bf4c5d966bb627ba9d795e659&oe=5757B42C
    :target: `CNC Machining Workshop`_
    :alt: Open Hive CNC Machining Workshop
    :width: 320px

    `CNC Machining Workshop`_  at `FabLab Berlin`_

- News from Markus:
  http://www.euse.de/wp/blog/2015/01/bienenwaage-reloaded/


****
2014
****

2014-12
=======
- Start the mailing list "hiveeyes-devs ät ideensyndikat.org"
- Register domain "hiveeyes.org"


2014-11
=======
- Start working on a sensor node network based on Felix Rusu's LowPowerLab_ RFM12B_/RFM69_ libraries.

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230212.jpg
    :target: `Arduino with RFM12B`_
    :alt: Two nodes transmitting via RFM12B
    :width: 320px
    :align: left

    Two nodes transmitting via RFM12B_

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230359.jpg
    :target: `Arduino with RFM12B`_
    :alt: The first characters transmitted
    :width: 320px
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
- `Workshop digitales Bienenmonitoring`_ at `mauergarten e.V.`_ on 2014-09-21


2014-04
=======
Markus Euskirchen und Clemens Gruber bauen eine elektronische Bienenwaage:

- http://www.euse.de/wp/blog/2014/04/durchbruch-bienenwaage/
- http://www.euse.de/wp/blog/2014/06/bienenwaage-testbetrieb/
- http://www.euse.de/wp/blog/2014/07/bienenstockwaage-wireless/
- http://www.euse.de/wp/blog/2014/07/bienenwaage-todo-2/
- Bienenstockwaage - Bee Hive Scale: http://www.euse.de/honig/beescale/graph.php
- All articles: http://www.euse.de/wp/blog/tag/bienenwaage/

More:

- Clemens Gruber starts the `Open Hive`_ open source beehive monitoring project


****
2013
****

2013-07
=======
.. raw:: html

    <iframe src="https://player.vimeo.com/video/69973637?color=c9ff23&byline=0&portrait=0" width="800" height="450" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

.. container:: width-800

    In his talk "Bees Dance" Tim Landgraf reveals how robotics are involved with bees,
    Yair Kira presents his project "Bees Armchair" and beekeeper Clemens Gruber (of
    "Open Hive") shares how he gets insights from his beehive through computer based
    monitoring. Clemens starts talking at 26:00.

    Enjoy!

    .. raw:: html

        <p><a href="https://vimeo.com/69973637">Pre-Work Talk #7 &mdash; Bees</a> from <a href="https://vimeo.com/user17912812">IXDS</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

|clearfix|


2013-06
=======
.. raw:: html

    <iframe src="http://open-hive.org/prototype-sound_2013-06/" width="1024" height="768" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

.. container:: width-800

    `Result Dataset 2013/06 Day 08-17 <http://open-hive.org/prototype-sound_2013-06/>`_ from Clemens
    Gruber displaying different hive temperatures, humidity, brightness, pressure and audio fft.

|clearfix|


****
2012
****

2012-07
=======
- Arduino Forum "Topic: `Measuring the weight of a beehive <http://forum.arduino.cc/index.php?topic=113534.0>`_".
- News from Markus: http://www.euse.de/wp/blog/2012/07/ulengewicht/

2012-05
=======
News from Markus:

- http://www.euse.de/wp/blog/2012/03/solarladegerat-fertig/
- http://www.euse.de/wp/blog/2012/05/bienengewicht/


****
2011
****
Markus Euskirchen starts the project „Bienenkisten-Monitoring“.

- http://www.euse.de/wp/blog/2011/12/lauschen-statt-wiegen/
- http://www.euse.de/wp/blog/2011/12/teileliste/

