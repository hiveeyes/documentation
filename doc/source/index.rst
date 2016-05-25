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

********
Platform
********
The open Hiveeyes platform ``swarm.hiveeyes.org`` provides an
instant-on experience for data collection and visualization.
It always runs the most recent stable releases of each software
component while making sure all parts fit together well.
The backend is currently composed of Grafana_, InfluxDB_,
Mosquitto_ and Kotori_.

All collaborative efforts integrated into the platform
will be available to all of its users.
Enjoy having all upstream changes and new features available
without thinking about backup, maintenance and upgrade procedures.



**************
Do it yourself
**************
All hardware and software components are developed completely in the open,
so you are always free to build and operate your own monitoring infrastructure
based on these technologies.

For getting into doing that, please read the :ref:`do-it-yourself`
page or `get in touch with us <Hiveeyes email_>`_. We are still
working on the documentation and happy to get any feedback.

Feel free to use the system to your own needs in beehive monitoring, no
matter which sensor hardware is in use at your site.
Just `drop us an email <Hiveeyes email_>`_ about custom requirements for
data adapters, we are closely working together with the developers of
upstream software and happy to support any protocol or serialization
format you are already using in the field.

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
We are a small group of beekeepers doing this in their spare time,
so we are always happy getting helping hands on this project in
every area of development.
For getting a feeling about what is currently going on, please
have a look at the :ref:`changelog <changes>`.
For digging deeper, we encourage reading
the :ref:`development` documents.

.. todo:: There are other projects like ... We are loosely in touch with them using ...

We aim at providing the beekeeper community with a universal infrastructure
for data collection to make the raw data acquisition part a no-brainer when
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
about 15 minutes from our labs beehive located in Berlin Wedding.

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

