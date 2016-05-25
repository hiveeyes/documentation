.. include:: ../../_resources.rst

.. _hiveeyes-one:
.. _Hiveeyes One:
.. _HiveeyesOne:

############
Hiveeyes One
############

.. contents::
   :local:
   :depth: 1

************
Introduction
************
Richard Pobering is writing the `Hiveeyes blog`_ while working on our
open source / open hardware beehive monitoring system.
He engineered the RFM69_-based sensor node HEnode_, as well as the radio
message protocol in form of the :ref:`beradio-spec`, an efficient transport
protocol for radio link communication.

Karsten Harazim and Robert Gummi welded the double-H formed Scale frame "Beutenkarl".



*******
Results
*******
`Hiveeyes One`_ was installed in the field at the Hiveeyes Lab Beehive
in Berlin Wedding in early Spring 2016.


HEnode
======

.. figure:: https://ptrace.hiveeyes.org/2016-02-18_HEnode-field-01.jpg
    :alt: HEnode version 0.2.2 in the field
    :width: 400px
    :align: left

    HEnode_ :ref:`hiveeyes-one` in a case - top

.. figure:: https://ptrace.hiveeyes.org/2016-02-18_HEnode-field-02.jpg
    :alt: HEnode version 0.2.2 in the field
    :width: 400px
    :align: right

    HEnode_ :ref:`hiveeyes-one` in a case - bottom

|clearfix|

.. figure:: https://ptrace.hiveeyes.org/2016-02-18_HEnode-field-03.jpg
    :alt: HEnode version 0.2.2 in the field
    :width: 400px
    :align: left

    HEnode_ :ref:`hiveeyes-one` in the hive

.. container:: align-right

    .. seealso:: :ref:`Transmitting data from the beehive <history-2016-02-04>`, February 2016

|clearfix|


Scale frame "Beutenkarl"
========================

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2001%20-%20Beutenkarl.jpg
    :alt: Scale frame "Beutenkarl"
    :width: 400px
    :figclass: caption-narrow
    :align: left

    Scale frame "Beutenkarl" enclosing a `Bosche H30A single point load cell`_

.. container:: align-right

    .. seealso:: :ref:`Rigging up the scale frame <history-2016-04-14>`, April 2016


|clearfix|

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2005%20-%20Ready%2C%20Back.jpg
    :alt: Scale frame is mounted. Rear view.
    :width: 400px
    :figclass: caption-narrow
    :align: left

    Scale frame is mounted. Rear view.

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2006%20-%20Ready%2C%20Front.jpg
    :alt: Scale frame is mounted. Front view.
    :width: 400px
    :figclass: caption-narrow
    :align: right

    Scale frame is mounted. Front view.

|clearfix|


Live data
=========
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-lab-wedding?panelId=5&from=now-7d&to=now" width="100%" height="425" frameborder="0"></iframe>

.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-lab-wedding?panelId=1&from=now-7d&to=now" width="100%" height="425" frameborder="0"></iframe>

|clearfix|


*************
Presentations
*************

.. figure:: http://www.blinkenfilme.de/phase3/149/ER3_149-original.jpg
    :target: http://www.elektrischer-reporter.de/phase3/video/390/
    :alt: Elektrischer Reporter 149: Vernetzte Bienen, Fahrradlobbyisten und Spielausgrabungen
    :width: 800px

.. container:: width-800

    In »*Elektrischer Reporter 149: Vernetzte Bienen, Fahrradlobbyisten und Spielausgrabungen*«,
    Richard Pobering talks about the Hiveeyes project.

    Enjoy!

|clearfix|


**************
Do-it-yourself
**************

Node
====
- Moteino_, a low cost low-power open-source wireless Arduino_ compatible
  development platform based on the popular ATMega328 chip also used in
  traditional Arduinos.

- HEnode_ as per-hive sensor node running on Moteino_

    .. figure:: https://farm4.staticflickr.com/3928/15397620526_2cee797098_n.jpg
        :alt: Moteino R4
        :width: 350px
        :target: Moteino_
        :align: left

    .. figure:: https://hiveeyes.org/raw-attachment/wiki/Hardware/Prototyping/node_v02/HEnodev0.2.2_bb.png
        :alt: HEnode version 0.2.2
        :width: 350px
        :target: `HEnode version 0.2.2`_
        :align: right

        HEnode_ Fritzing wiring

    |clearfix|

- `Bosche H30A single point load cell`_ for weight measurements,
  driven by the `Avia Semiconductor HX711 ADC`_ 24-Bit Analog-to-Digital Converter
  over a `SparkFun HX711 Load Cell Amplifier`_ breakout board or similar.

    .. figure:: http://bosche-1512.kxcdn.com/sites/default/files/styles/large/public/produkte/plattformwaegezelle_h30a.png
        :target: `Bosche H30A single point load cell`_
        :alt: Bosche H30A single point load cell
        :width: 350px
        :align: left

        `Bosche H30A single point load cell`_

    .. figure:: https://hiveeyes.org/raw-attachment/blog/hx711da/HX711-mod-scale.JPG
        :target: https://hiveeyes.org/blog/hx711da
        :alt: HX711 load cell control module / breakout board
        :width: 350px
        :figclass: caption-narrow
        :align: right

        We use the »*Wägesensor-Modul HX711*« from `SEGOR`_,
        this is a HX711 load cell control module like the
        `SparkFun HX711 Load Cell Amplifier`_.

    |clearfix|

- `LowPowerLab RFM69HW transceiver`_ for radio link communication,
  based on the `Semtech SX1231 transceiver chip`_.
  See also `HopeRF RFM69HW transceiver`_.

    .. figure:: https://lowpowerlab.com/shop/image/cache/data/HopeRF/RFM69HW-228x228.jpg
        :alt: RFM69HW transceiver
        :width: 350px
        :target: `LowPowerLab RFM69HW transceiver`_

        LowPowerLab RFM69HW transceiver

- .. todo:: Ask Richard for more links to sensor hardware.


Software
--------
- `node-rfm69-beradio.ino`_, from the `Hiveeyes Arduino`_ MCU code repository
- RFM69_, a paramount RFM69 radio link library for `HopeRF RFM69HW transceiver`_ family on Arduino.
- EmBencode_, Bencode protocol support for embedded processors. Bencode_ is a simple
  encoding for storing and transmitting loosely structured data.
- `HX711 for Arduino`_, an Arduino library to interface the `Avia Semiconductor HX711 ADC`_
  24-Bit Analog-to-Digital Converter for Weight Scales.



.. _hiveeyes-gateway:

Gateway
=======

Hardware
--------
- RaspberryPi_, running the BERadio_ serial-to-mqtt forwarder
- JeeLink_, a fully assembled and ready-to-use USB-type “stick” which plugs
  directly into a PC, Mac or USB hub. It contains Atmel’s ATmega328p AVR
  microprocessor, HopeRF’s RFM69CW wireless radio module and a branded
  FT232R USB interface chip.



Software
--------
- Linux_, the famous free operating system for personal computers having
  the largest installed base of all general-purpose operating systems.
- Mosquitto_, an open-source MQTT v3.1/v3.1.1 Broker.
- Python_, a programming language that lets you work quickly and integrate systems more effectively.
- BERadio_ serial-to-mqtt forwarder implementing a RFM69_ to MQTT_ gateway.
- `gateway-rfm69-beradio.ino`_ is the radio receiver part of the gateway
  running on the ATmega328p on JeeLink_.


.. _hiveeyes-backend:

Backend
=======
- Linux_, the famous free operating system for personal computers having
  the largest installed base of all general-purpose operating systems.
- Mosquitto_, an open-source MQTT v3.1/v3.1.1 Broker.
- InfluxDB_, an open-source distributed time series database.
- Grafana_, the leading graph and dashboard builder for visualizing time series metrics.
- Python_, a programming language that lets you work quickly and integrate systems more effectively.
- :ref:`kotori`, a multi-channel, multi-protocol data acquisition and graphing toolkit.

.. note::

    While the whole backend software stack (Grafana_, InfluxDB_, Mosquitto_
    and Kotori_) can be installed on your own machine, we encourage using our
    collaborative and open Hiveeyes :ref:`hiveeyes-platform` giving you an
    instant-on experience for data collection and visualization. We always run
    the most recent stable releases of each software component, while making
    sure all parts fit together. Enjoy having all upstream changes and new
    features available on the platform without thinking about backup,
    maintenance and upgrade procedures, :ref:`read more <hiveeyes-platform>`.


Parts-list
==========
.. todo:: Ask Richard.



*************
Lab / History
*************


Data link
=========
.. toctree::
    :maxdepth: 1

    architecture
    topology
    notifications


Assembly
========

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_113201.jpg
    :target: https://hiveeyes.org/blog/rfm12b%20soldering
    :alt: RFM12B unassembled
    :width: 400px
    :align: left

    RFM12B_ unassembled

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/soldering_done.jpg
    :target: https://hiveeyes.org/blog/rfm12b%20soldering
    :alt: RFM12B assembled
    :width: 400px
    :align: right

    RFM12B_ assembled

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_154759.jpg
    :target: https://hiveeyes.org/blog/rfm12b%20soldering
    :alt: HEnode version 0.1 assembled
    :width: 400px
    :align: left

    `HEnode version 0.1`_ assembled

|clearfix|


- `RFM Breakout-Board soldering`_
- `DIY antennas for RFM69`_
- `HEnode version 0.2.2`_


Radio transmission
==================

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230212.jpg
    :target: `RFM Breakout-Board soldering`_
    :alt: Two nodes transmitting via RFM12B
    :width: 400px
    :align: left

    Two `HEnode version 0.1`_ nodes transmitting via RFM12B_

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230359.jpg
    :target: `RFM Breakout-Board soldering`_
    :alt: The first characters transmitted
    :width: 400px
    :align: right

    The first characters transmitted

|clearfix|


.. EOF
