.. include:: ../../_resources.rst

.. _hiveeyes-one:
.. _Hiveeyes One:
.. _HiveeyesOne:

############
Hiveeyes One
############


************
Introduction
************

Richard is working on the `Hiveeyes project`_, an open source / open hardware beehive monitoring stack.
He engineered the RFM69_-based node communication hardware and software HEnode_.

    - `Arduino with RFM12B`_
    - `DIY antennas for RFM69`_
    - `HEnode version 0.2.2`_
    - .. todo:: Publish HEnode_ Arduino_ source code, currently still living in `arduino-playground`_

as well as the message encapsulation in form of the:

    - :ref:`beradio-spec`, an efficient ether transport protocol used for radio link communication


**********
Foundation
**********
We are standing on the shoulders of giants.

- `HX711 for Arduino`_
- .. todo:: This is just a stub. Please improve.


*******
Details
*******

.. attention::

    This section is just a stub. Please help.

Overview
========
.. toctree::
    :maxdepth: 1

    architecture
    topology
    notifications


Unassembled
===========
.. figure:: http://lowpowerlab.com/wp-content/uploads/2013/06/Moteino_R3_banner.jpg
    :target: http://lowpowerlab.com/moteino/#revisions
    :alt: Moteino R3
    :width: 320px
    :align: left

    `Moteino R3`_

.. figure:: http://bosche-1512.kxcdn.com/sites/default/files/styles/large/public/produkte/plattformwaegezelle_h30a.png
    :target: http://www.bosche.eu/en/products/load-cells/single-point-load-cell-h30a
    :alt: Bosche Single point load cell H30A
    :width: 320px
    :align: right

    Bosche Wägezelle H30A_

|clearfix|


.. figure:: https://hiveeyes.org/raw-attachment/blog/hx711da/HX711-mod-scale.JPG
    :target: https://hiveeyes.org/blog/hx711da
    :alt: HX711 load cell control module
    :width: 320px
    :align: left

    HX711_ load cell control module

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_113201.jpg
    :target: https://hiveeyes.org/blog/rfm12b%20soldering
    :alt: RFM12B unassembled
    :width: 320px
    :align: right

    RFM12B_ unassembled

|clearfix|


Wiring
======
.. figure:: https://hiveeyes.org/raw-attachment/wiki/Hardware/Prototyping/node_v02/HEnodev0.2.2_bb.png
    :alt: HEnode version 0.2.2
    :width: 320px
    :target: `HEnode version 0.2.2`_

    The wiring of the HEnode_


Assembled
=========
.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/soldering_done.jpg
    :target: https://hiveeyes.org/blog/rfm12b%20soldering
    :alt: RFM12B assembled
    :width: 320px
    :align: left

    RFM12B_ assembled

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_154759.jpg
    :target: https://hiveeyes.org/blog/rfm12b%20soldering
    :alt: HEnode version 0.1 assembled
    :width: 320px
    :align: right

    `HEnode version 0.1`_ assembled

|clearfix|


On the workbench
================

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230212.jpg
    :target: `Arduino with RFM12B`_
    :alt: Two nodes transmitting via RFM12B
    :width: 320px
    :align: left

    Two `HEnode version 0.1`_ nodes transmitting via RFM12B_

.. figure:: https://hiveeyes.org/raw-attachment/blog/rfm12b%20soldering/IMG_20141130_230359.jpg
    :target: `Arduino with RFM12B`_
    :alt: The first characters transmitted
    :width: 320px
    :align: right

    The first characters transmitted

|clearfix|


In the field
============
.. figure:: https://ptrace.hiveeyes.org/2016-02-18_HEnode-field-01.jpg
    :alt: HEnode version 0.2.2 in the field
    :width: 320px
    :align: left

    HEnode_ :ref:`hiveeyes-one` in a case - top

.. figure:: https://ptrace.hiveeyes.org/2016-02-18_HEnode-field-02.jpg
    :alt: HEnode version 0.2.2 in the field
    :width: 320px
    :align: right

    HEnode_ :ref:`hiveeyes-one` in a case - bottom

.. figure:: https://ptrace.hiveeyes.org/2016-02-18_HEnode-field-03.jpg
    :alt: HEnode version 0.2.2 in the field
    :width: 320px
    :align: left

    HEnode_ :ref:`hiveeyes-one` in the hive

|clearfix|


.. EOF
