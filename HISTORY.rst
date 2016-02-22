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

2016-02-16
==========
:ref:`open-hive` starts transmitting data. Cheers!

.. figure:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-xfl1/v/t1.0-0/p240x240/11693953_10204755930037822_8992406508094252562_n.jpg?oh=2391a5f426494a2b09cdb1b92be59fd8&oe=572C042A
    :target: `Open Hive Shields`_
    :alt: hiveeyes-two sender
    :width: 320px
    :align: left

    Sensor node sending data from the workbench

.. figure:: _static/img/mqtt-link.png
    :width: 75px
    :figclass: vertical-align-middle

    mqttlink++

.. figure:: http://ptrace.hiveeyes.org/2016-02-16_grafana-ber-prototype-2.jpeg
    :target: https://swarm.hiveeyes.org/grafana/dashboard/snapshot/b87pjWd80DfENQXBa4JzTT5mSUt83Tsd
    :alt: hiveeyes-two dashboard
    :width: 320px
    :align: right

    Grafana dashboard "BER prototype #2"

|clearfix|


2016-02-12
==========
Start integrating with mqttwarn_: Add `feature "dynamic topic targets"`_ to `incorporate topic names into topic targets`_.

.. figure:: http://ptrace.hiveeyes.org/2016-02-12_hiveeyes-notification-xmpp.jpg
    :alt: xmpp messages from mqttwarn
    :width: 320px

    Receive messages from MQTT_ and republish to XMPP_



2016-02-04
==========
:ref:`hiveeyes-one` starts transmitting data. Cheers!

Hiveeyes radio receiver and sender
----------------------------------
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
    :width: 75px
    :figclass: vertical-align-middle

    radio link

.. figure:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/Distanz.jpg
    :target: `DIY antennas for RFM69`_
    :alt: hiveeyes-one sender
    :figclass: caption-narrow
    :width: 320px
    :align: right

    The first "HEnode_" sensor node sits in a hive approx. 120 meters away
    in line-of-sight distance through a single tree

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


Hiveeyes WAN and backend
------------------------
The wide area communication, storage and visualization
is performed by BERadio_, MQTT_, Kotori_, InfluxDB_ and Grafana_.

.. todo:: GraphViz flow graphs for giving insight into the communication paths between these components

.. figure:: http://ptrace.hiveeyes.org/2016-02-04_grafana-ber-prototype-1.jpeg
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

.. figure:: http://ptrace.hiveeyes.org/2016-01-25_first-measurements-in-grafana.jpg
    :alt: hiveeyes-one: first measurements in grafana
    :width: 320px

    The first measurements arrive in Grafana


2016-01-03
==========
Start the `Hive Monitor`_ project featuring the `Hive Monitor Vagrant VM`_
and some `Hive Monitor Python scripts`_ for playing around with MQTT_ and forwarding
payloads between the serial interface and the Mosquitto_ message broker.


****
2015
****


2015-11
=======
- Proof-of-concept telemetry platform based on InfluxDB_ and Grafana_ with Kotori_ 0.3.2 and BERadio_ 0.4.4.
  See upstream changes:

    - `Kotori 0.3.2 changes`_
    - `BERadio 0.4.4 changes`_

- Further improve :ref:`HiveeyesOne` hardware and software


2015-10
=======
- `Open Hive`_ is at the `Maker Faire Berlin`_ from 2015-10-03 to 2015-10-05
- Continue working on :ref:`HiveeyesOne`
- Build upon `serial-to-mqtt`_ by `Andy Piper`_ and `Didier Donsez`_ and iterate into

    - the `BERadio specification`_, an efficient ether transport
      protocol used for radio link communication. Throws Bencode_
      into the mix of the constrained environment of RFM69_ with Moteino_.
    - the BERadio_ Python library, for forwarding payloads between
      a JeeLink_ receiving data payloads via RFM69_ on a serial interface
      of a RaspberryPi_ and the MQTT_ message broker Mosquitto_.

- Investigate SPI-Flash & Dualoptiboot for over-the-air programming


2015-08
=======
- Hacking on Hiveeyes at the `Chaos Communication Camp 2015`_ from 2015-08-13 to 2015-08-17 in Mildenberg
- Baby steps for BERadio_, first steps with Bencode_ on Arduino_


2015-07
=======
`Open Hive Shields`_ prototypes for Seeeduino Stalker (3.3 V) and Arduino Yun / Uno (5 V)

.. figure:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-xfl1/v/t1.0-0/p240x240/11693953_10204755930037822_8992406508094252562_n.jpg?oh=2391a5f426494a2b09cdb1b92be59fd8&oe=572C042A
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
The `Open Hive Bee Scale`_ is a low-cost weight module (prototype II)

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

`Open Hive`_ weight platform (prototype I)

.. figure:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-prn2/v/t1.0-0/p206x206/1558384_10201453236632551_648198296_n.jpg?oh=4efa966bf4c5d966bb627ba9d795e659&oe=5757B42C
    :target: `CNC Machining Workshop`_
    :alt: Open Hive CNC Machining Workshop
    :width: 320px

    `CNC Machining Workshop`_  at `FabLab Berlin`_


****
2014
****

2014-12
=======
- Start the mailing list "hiveeyes-devs ät ideensyndikat.org"
- Register domain "hiveeyes.org"


2014-11
=======
Start working on a sensor node network based on Felix Rusu's LowPowerLab_ RFM12B_/RFM69_ libraries.

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


2014-09
=======
- `Workshop digitales Bienenmonitoring`_ at `mauergarten e.V.`_ on 2014-09-21


2014
====
- Start the `Open Hive`_ open source beehive monitoring project
- Start organizing regular get-togethers
- Hardware evaluation and prototyping
- Architecture, concept and design
