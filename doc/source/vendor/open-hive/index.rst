.. include:: ../../_resources.rst

.. _open-hive:
.. _OpenHive:

#########
Open Hive
#########

.. contents::
   :local:
   :depth: 1

************
Introduction
************

Clemens Gruber is working on the `Open Hive`_ open source / open hardware
beehive monitoring project. He engineered the `Open Hive Bee Scale`_ and
`Open Hive Shields`_ and does a lot of research into sensors, how to
make them behave and how to derive relevant information from their
measurements.

He is currently building the :ref:`openhive-temperature-array` for making
3d images of temperature values to see how the bees move in the hive.


********
Hardware
********

.. _openhive-scale:

.. _openhive-bee-scale:

Open Hive Bee Scale
===================

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-beescale.jpg
    :alt: Open Hive Bee Scale
    :target: `Open Hive Bee Scale`_
    :width: 400px
    :align: left

    Unassembled

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-beescale-assembled.jpg
    :alt: Open Hive Bee Scale
    :target: `Open Hive Bee Scale`_
    :width: 400px
    :align: right

    Assembled

|clearfix|

.. _openhive-temperature-array:

Open Hive temperature array
===========================
.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-temperature-array.jpg
    :alt: Open Hive temperature array
    :width: 600px

    Open Hive temperature array, prototype left with PCB, right with ribbon cable


.. _openhive-seeeduino-stalker:

Open Hive Seeeduino Stalker
===========================

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-seeeduino-stalker-closeup.jpg
    :alt: Open Hive Seeeduino Stalker
    :target: `Open Hive Shields`_
    :width: 400px
    :align: left

    Open Hive Seeeduino Stalker Shield

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-seeeduino-stalker-kit-top.jpg
    :alt: Open Hive Seeeduino Stalker Kit
    :width: 400px
    :align: right
    :figclass: caption-regular

    Open Hive Seeeduino Stalker Kit

|clearfix|

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-seeeduino-stalker-gprsbee.jpg
    :alt: Open Hive Seeeduino GPRSBee
    :width: 400px
    :align: left
    :figclass: caption-regular

    Open Hive Seeeduino Stalker GPRSBee

|clearfix|


Open Hive Arduino Yun / Uno
===========================

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-yun-uno.jpg
    :alt: Open Hive Arduino Yun / Uno
    :target: `Open Hive Shields`_
    :width: 400px
    :align: left

    Open Hive Arduino Yun / Uno

|clearfix|


.. _openhive-huzzah:

Open Hive Adafruit HUZZAH
=========================
Sensor node based on the `Adafruit HUZZAH ESP8266`_.

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-huzzah.jpg
    :target: https://www.facebook.com/photo.php?fbid=10205861763442966&set=pb.1224510416.-2207520000.1454976667.&type=3&theater
    :alt: Open Hive ESP8266
    :width: 400px
    :align: left
    :figclass: caption-narrow

    :ref:`openhive-huzzah`

|clearfix|




********
Software
********

Node
====
- .. todo:: Ask Clemens about code for Seeeduino Stalker
- `node-wifi-mqtt.ino`_, from the `Hiveeyes Arduino`_ MCU code repository
  running on an `Adafruit HUZZAH ESP8266`_. This is sending telemetry data
  directly to the MQTT_ broker.


Backend
=======
For data acquisition and graphing software,
see :ref:`Hiveeyes Backend <hiveeyes-backend>`.


*******
Results
*******

.. figure:: https://ptrace.hiveeyes.org/2016-05-24_openhive-prototype-sound_2013-06.png
    :target: http://open-hive.org/prototype-sound_2013-06/
    :alt: Open Hive Sound prototype
    :width: 800px

    `Result Dataset 2013/06 Day 08-17 <http://open-hive.org/prototype-sound_2013-06/>`_ from Clemens
    Gruber of Open Hive displaying different hive temperatures, humidity, brightness, pressure and audio fft.


*************
Presentations
*************

.. raw:: html

    <iframe src="https://player.vimeo.com/video/69973637?color=c9ff23&byline=0&portrait=0" width="800" height="450" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

.. container:: width-800

    `Pre-Work Talk #7 -- Bees <https://vimeo.com/69973637>`_ from `IXDS <https://vimeo.com/user17912812>`_.

    In his talk "Bees Dance" Tim Landgraf reveals how robotics are involved with bees,
    Yair Kira presents his project "Bees Armchair" and beekeeper Clemens Gruber shares
    how he gets insights from his beehive through computer based monitoring in the
    "Open Hive" project. Clemens starts talking at 26:00. Enjoy!

|clearfix|


*************
Lab / History
*************

.. _openhive-cnc-machining-workshop-2014:

CNC Machining Workshop 2014
===========================

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-beescale-2014-A.jpg
    :width: 400px
    :align: left

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-beescale-2014-B.jpg
    :width: 400px
    :align: right

|clearfix|

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-beescale-2014-C.jpg
    :width: 400px
    :align: left

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-beescale-2014-D.jpg
    :width: 400px
    :align: right

|clearfix|

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-beescale-2014-E.jpg
    :width: 400px
    :align: left

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_openhive-beescale-2014-F.jpg
    :width: 400px
    :align: right

|clearfix|


.. EOF
