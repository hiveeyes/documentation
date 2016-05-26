.. include:: _resources.rst

.. swarm.hiveeyes.org documentation master file, created by
   sphinx-quickstart on Tue Jan 26 00:00:38 2016.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

.. _hiveeyes-system:

#################################
The Hiveeyes system documentation
#################################

.. highlight:: bash

Welcome to the jungle.

.. toctree::
    :maxdepth: 1
    :hidden:

    history
    handbook
    do-it-yourself

    goals
    development
    changes
    people
    labhive-one
    terms


*****
About
*****

In a nutshell
=============
Hiveeyes is a data collection platform for beehive monitoring voluntarily
operated by the beekeeper community. We aim at making non-invasive beekeeping
as affordable and comfortable as possible.
The project uses low-cost, low-power hardware and is built completely with
open source software.
For further details, please see the projects' :ref:`goals`.

Who is behind Hiveeyes?
=======================
We are a group of beekeepers from Berlin regularly meeting on
wednesdays to build a telemetry platform for beehive monitoring.
We are Karsten, Robert, Clemens, Richard, Martin, Andreas and Dazz.
Feel welcome to `join us <Hiveeyes email_>`_.

History
=======
The roots of this project are in the independent `Open Bee Hive`_, `Open Hive`_,
`Hiveeyes <Hiveeyes project_>`_ and `Hive Monitor`_ bee monitoring projects.
It is one of many spin-offs of the popular Arduino Forum thread
`Measuring the weight of a beehive`_.
Please have a look at our detailed shared project :ref:`history`.


***************
Getting started
***************
For sending data to a self-operated Hiveeyes backend or our
open Hiveeyes platform ``swarm.hiveeyes.org``,
please read the :ref:`platform-services` and
:ref:`data-acquisition` documentation pages.


.. _platform:

.. _Hiveeyes platform:

********
Platform
********
The open Hiveeyes platform ``swarm.hiveeyes.org`` is composed of open source
software components like Grafana_, InfluxDB_, Mosquitto_ and Kotori_,
providing an instant-on experience for data collection and visualization.
It always runs the most recent stable release of each software
component while we are making sure all parts fit together well.

All collaborative efforts integrated into the platform
will be available to all of its users.
Enjoy having all upstream changes and new features available
without thinking about backups, maintenance and upgrade procedures.



**************
Do it yourself
**************
All hardware and software components are developed completely in the open,
so you are always free to build and operate your own monitoring infrastructure
based on these technologies.

For getting into the details, please read the :ref:`do-it-yourself`
page or `get in touch with us <Hiveeyes email_>`_.


.. figure:: https://ptrace.hiveeyes.org/2016-02-18_HEnode-field-01.jpg
    :alt: HEnode version 0.2.2 in the field
    :width: 275px
    :align: left

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2001%20-%20Beutenkarl.jpg
    :alt: Scale Frame "Beutenkarl"
    :width: 275px
    :align: left

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2005%20-%20Ready%2C%20Back.jpg
    :alt: Scale frame is mounted. Rear view.
    :width: 275px
    :align: left

|clearfix|



***********
Development
***********
We are always happy getting helping hands on this project in
every area of development and encourage you to have a closer
look at the internals.
For getting a feeling about what is currently going on, please
have a look at the :ref:`changelog <changes>`.
For digging deeper, we may refer you to the :ref:`development`
documents.

.. todo:: There are other projects like ... We are loosely in touch with them using ...

We aim at providing the beekeeper community with a universal infrastructure
for data collection to streamline the process of raw data acquisition when
developing individual solutions.
Our hardware and software is available under free software or similar
licenses to encourage the growth of an open ecosystem.



.. _live-data:

*********
Live data
*********

Intro
=====
Data currently is measured and collected at intervals of
about 15 minutes from the :ref:`labs beehive <labhive-one>`
located in Berlin Wedding.

Legend for *Load cell* panel:

- Turquoise: Weight of the hive
- Blue:      Temperature sensor inside the hive
- Yellow:    Temperature sensor at the air hole, mostly in direct sunlight


Last 30 days
============
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=now-30d&to=now" width="100%" height="425" frameborder="0"></iframe>

.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=1&from=now-30d&to=now" width="100%" height="425" frameborder="0"></iframe>

|clearfix|


Last 7 days
===========
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=now-7d&to=now" width="100%" height="425" frameborder="0"></iframe>

.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=1&from=now-7d&to=now" width="100%" height="425" frameborder="0"></iframe>

|clearfix|


Last 24 hours
=============
.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=now-24h&to=now" width="100%" height="425" frameborder="0"></iframe>

.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=1&from=now-24h&to=now" width="100%" height="425" frameborder="0"></iframe>

|clearfix|


.. tip:: The `full dashboard #hiveeyes-labs-wedding <https://swarm.hiveeyes.org/grafana/dashboard/db/hiveeyes-labs-wedding>`_ is also available.


*****
Terms
*****
Please read the :ref:`terms` when using the Hiveeyes public services.

