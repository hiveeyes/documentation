#######
HISTORY
#######

upcoming
========

2016-02-16
==========
- `Open Hive`_ starts transmitting data.

    - The second sensor node is sending data from the workbench:

        .. image:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-xfl1/v/t1.0-0/p240x240/11693953_10204755930037822_8992406508094252562_n.jpg?oh=2391a5f426494a2b09cdb1b92be59fd8&oe=572C042A
            :alt: hiveeyes-two sender
            :width: 320px
            :target: `Open Hive Shields`_

    - The Grafana dashboard "BER prototype #2"

        .. image:: http://ptrace.hiveeyes.org/2016-02-16_grafana-ber-prototype-2.jpeg
            :alt: hiveeyes-two dashboard
            :width: 320px
            :target: https://swarm.hiveeyes.org/grafana/dashboard/snapshot/b87pjWd80DfENQXBa4JzTT5mSUt83Tsd


2016-02-12
==========
- Start integrating with mqttwarn_: Add `feature "dynamic topic targets"`_ to `incorporate topic names into topic targets`_
- Receive messages from MQTT_ bus and republish to XMPP_:

    .. image:: http://ptrace.hiveeyes.org/2016-02-12_hiveeyes-notification-xmpp.jpg
        :alt: xmpp messages from mqttwarn
        :width: 320px




2016-02-04
==========
- :ref:`hiveeyes-one` starts transmitting data, cheers!

    - The first sensor node is deployed to a hive:

        .. image:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/Distanz.jpg
            :alt: hiveeyes-one sender
            :width: 320px
            :target: `DIY Antennenbau mit RFM69`_

    - The receiving antenna is approx. 120 meters away in line-of-sight distance through a single tree:

        .. image:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/BiQuad.jpg
            :alt: hiveeyes-one receiver
            :width: 320px
            :target: `DIY Antennenbau mit RFM69`_

    - It is connected to the USB RFM69 receiver JeeLink through a SMA adapter:

        .. image:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/Jeelink%2BSMA.jpg
            :alt: hiveeyes-one receiver
            :width: 320px
            :target: `DIY Antennenbau mit RFM69`_

    - The Gateway-JeePi_ , a JeeLink RFM69 receiver, which is conveniently connected to a RaspberryPi SoC gateway machine:

        .. image:: https://hiveeyes.org/raw-attachment/blog/einsiedlerkrebs-2015/10/14/Antenna/GatewayRPI-Jeelink.jpg
            :alt: Gateway with RaspberryPi
            :width: 320px
            :target: `DIY Antennenbau mit RFM69`_

    - Todo: Give short insight into the MQTT ether using GraphViz.

    - The Grafana dashboard "BER prototype #1"

        .. image:: http://ptrace.hiveeyes.org/2016-02-04_grafana-ber-prototype-1.jpeg
            :alt: hiveeyes-one dashboard
            :width: 320px
            :target: https://swarm.hiveeyes.org/grafana/dashboard/snapshot/Z9QBKYitgiOq53lrySWkbOSyWUk9rc92


2016-01
=======
- Announce beta version of the `Hiveeyes platform`_ hosted on ``swarm.hiveeyes.org``
- Work on bringing :ref:`HiveeyesOne` into production, the first measurements arrive in Grafana:

    .. image:: http://ptrace.hiveeyes.org/2016-01-25_first-measurements-in-grafana.jpg
        :alt: hiveeyes-one: first measurements in grafana
        :width: 320px


2015-11
=======
- Proof-of-concept telemetry platform based on InfluxDB_ and Grafana_ with Kotori_ 0.3.2 and BERadio_ 0.4.4
- Further improve :ref:`HiveeyesOne`


2015-10
=======
- `Open Hive`_ is at the `Maker Faire Berlin`_ from 2015-10-03 to 2015-10-05
- Continue working on :ref:`HiveeyesOne`
- Conceive `serial-to-mqtt`_ and BERadio_
- BERadio_ specification v1
- BERadio_ specification v2
- Investigate SPI-Flash & Dualoptiboot for over-the-air programming


2015-08
=======
- Hacking on Hiveeyes at the `Chaos Communication Camp 2015`_ from 2015-08-13 to 2015-08-17 in Mildenberg
- Baby steps for BERadio_, first steps with Bencode_ on Arduino_


2015-07
=======
- `Open Hive Shields`_ prototypes for Seeeduino Stalker (3.3 V) and Arduino Yun / Uno (5 V)

    - Open Hive Seeeduino Stalker:

        .. image:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-xfl1/v/t1.0-0/p240x240/11693953_10204755930037822_8992406508094252562_n.jpg?oh=2391a5f426494a2b09cdb1b92be59fd8&oe=572C042A
            :alt: Open Hive Seeeduino Stalker
            :width: 320px
            :target: `Open Hive Shields`_

    - Open Hive Arduino Yun / Uno:

        .. image:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-0/q83/p206x206/11703029_10204755930917844_5574703060967955722_n.jpg?oh=86d2c0d42dade1deda0b90675de983a5&oe=57604B2B
            :alt: Open Hive Arduino Yun / Uno
            :width: 320px
            :target: `Open Hive Shields`_


2015-04
=======
- Setup ``elbanco.hiveeyes.org`` as an integration server, we are running Debian 8.3 (jessie)
- Weight Platform Prototype II: `Bee Scale Prototype 2`_, the low cost weight module of the `Open Hive`_ scale

    .. image:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-0/p206x206/11188491_10204255677331817_1170125921095812284_n.jpg?oh=e86eff2ce77a3dfc2659cf7c29b438a2&oe=5755CAF2
        :alt: Open Hive Bee Scale
        :width: 320px
        :target: `Bee Scale Prototype 2`_


2015-02
=======
- Start research on `MQTT-SN`_ with `MQTT-SN-Arduino`_ library

2015-01
=======
- Spin up Trac_ instance as a `Wiki of the Hiveeyes project <Hiveeyes project_>`_
- Weight Platform Prototype I: `CNC Machining Workshop`_  at `FabLab Berlin`_

    .. image:: https://scontent-frt3-1.xx.fbcdn.net/hphotos-prn2/v/t1.0-0/p206x206/1558384_10201453236632551_648198296_n.jpg?oh=4efa966bf4c5d966bb627ba9d795e659&oe=5757B42C
        :alt: Open Hive CNC Machining
        :width: 320px
        :target: `CNC Machining Workshop`_

2014-12
=======
- Start the mailing list "hiveeyes-devs ät ideensyndikat.org"
- Register domain "hiveeyes.org"


2014-11
=======
- Start working on a sensor node based on Felix Rusu's LowPowerLab_ RFM12B_/RFM69_ libraries:

    - Two nodes transmitting via RFM12B:

        .. image:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230212.jpg
            :alt: Two nodes transmitting via RFM12B
            :width: 320px
            :target: `Arduino with RFM12B`_

    - The first characters transmitted via RFM69:

        .. image:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230359.jpg
            :alt: First characters transmitted via RFM69
            :width: 320px
            :target: `Arduino with RFM12B`_


2014-09
=======
- `workshop digitales bienenmonitoring`_ at `mauergarten e.V.`_ on 2014-09-21


2014
====
- Start the `Open Hive`_ open source beehive monitoring project
- Start organizing regular get-togethers
- Hardware evaluation and prototyping
- Architecture, concept and design
