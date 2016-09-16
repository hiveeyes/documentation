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

    News <history>
    goals
    labhive-one

    handbook
    do-it-yourself

    development
    research
    Changelogs <changes>

    people
    contact
    LICENSE
    terms


.. contents::
   :local:
   :depth: 1

----


*****
About
*****

In a nutshell
=============
The Hiveeyes project is developing a flexible toolkit for beehive monitoring.

We aim at making non-invasive beekeeping as affordable and comfortable as possible
by supporting the beekeeper community with an universal, do-it-yourself infrastructure
for data collection to streamline the process of raw data acquisition when
developing individual solutions.

The toolkit uses low-cost, low-power hardware and contemporary software components.
All our hardware and software is available under free software and similar
licenses to encourage the growth of an open ecosystem.

For further details, please see the projects' :ref:`goals`.
There are :ref:`other-projects` around the world sharing similar ambitions,
we are loosely in touch with them. Please also have a look under the hood
at our detailed :ref:`project news <history>` page.


.. _project-origin:

Who is behind Hiveeyes?
=======================
We are a group of beekeepers from Berlin regularly meeting on
wednesdays to build a telemetry platform for beehive monitoring.
We are Karsten, Robert, Clemens, Nik, Richard, Martin, Andreas and Dazz.
Feel welcome to `join us <Hiveeyes email_>`_.

The community project originated from the independent `Open Bee Hive`_,
`Open Hive`_, `Hiveeyes <Hiveeyes project_>`_ and
`Hive Monitor`_ beehive monitoring projects.
`Karsten <Karsten Harazim_>`_ (`facebook <Karsten Harazim at Facebook_>`_)
aka. `Beutenkarl`_ (`facebook <Beutenkarl at Facebook_>`_)
and the `solidary apiculture mauergarten <Solidarische Imkerei im mauergarten_>`_
(`facebook <Solidarische Imkerei at Facebook_>`_, `bienenblog`_) was one of
the major catalysts for bringing us together.
On the tech side, the project is one of the many spin-offs of the
popular Arduino Forum thread `Measuring the weight of a beehive`_.


***********
Impressions
***********
Some pictures from the trenches.

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


.. figure:: https://ptrace.hiveeyes.org/2016-07-08_open-hive_box-with-electronics.jpg
    :alt: Open Hive Box
    :width: 275px
    :align: left

.. figure:: https://ptrace.hiveeyes.org/2016-06-17_openhive-beescale-assembled.jpg
    :alt: Open Hive Scale
    :width: 275px
    :align: left

.. figure:: https://ptrace.hiveeyes.org/2016-09-03_Harvesting_2016-05.jpg
    :alt: Data display.
    :width: 275px
    :align: left

|clearfix|


.. _platform:

.. _Hiveeyes platform:

****************
Backend platform
****************
The Hiveeyes backend platform ``swarm.hiveeyes.org`` is composed of open source
software components like Grafana_, InfluxDB_, Mosquitto_, Kotori_ and mqttwarn_,
providing an instant-on experience for data collection, visualization and alerting.

The data collection platform is voluntarily operated by the beekeeper community,
it always runs on the most recent stable release of each software
component while we are making sure all parts fit together well.

All collaborative efforts integrated into the platform
will be available to all of its users.
Enjoy having all upstream changes and new features available
without thinking about backups, maintenance and upgrade procedures.


***************
Getting started
***************
For sending data to a self-operated Hiveeyes backend or our
open Hiveeyes platform ``swarm.hiveeyes.org``,
please read the :ref:`platform-services` and
:ref:`data-acquisition` documentation pages.



**************
Do it yourself
**************
All hardware and software components are developed completely in the open,
so you are always free to build and operate your own monitoring infrastructure
based on these technologies.

For getting into the details, please read the :ref:`do-it-yourself`
page or `get in touch with us <Hiveeyes email_>`_. We don't have a
shiny tutorial yet, but there are many components you can build upon.
Just let us know about your specific needs and requirements.


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

