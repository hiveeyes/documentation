.. include:: _resources.rst

.. _goals:

#####
Goals
#####


**********
Background
**********

Intro
=====
While tech itself sometimes is hard enough, the real challenge today is to
assemble commodity hardware and software into functional and usable systems.

When starting the project in 2014, we have been unsatisfied with the current
state that different efforts in the area of open source beehive monitoring
would use different kinds of data sinks and backend systems, thus making
it difficult for truly collaborative data collection efforts to interoperate.

Vendor lock-in
==============
Further, the increased usage of commercial IoT cloud services in otherwise
open source projects gave reason to worry. This, while looking attractive
at first, wasn't a path we wanted to take.

Abundance for all, this decision was promoted through recent stories from
the industry about different kinds of vendor lock-in effects, costs spiraling
out of control and - last but not least - cloud service backend systems
actively supporting customer devices in the field going completely out of
service, effectively bricking all the devices at once.

This happened to a number of customers of such products in quick succession
2016 and will probably continue to do so.


*********
Objective
*********
We take the challenge in the area of open source beehive monitoring to
lower the bar for starting own beehive monitoring projects significantly
by building upon a mature stack of proven hardware- and software components.


********
Progress
********


Short term
==========
- The primary goal is to gain insight into the environment inside the beehive
  by collecting environmental data using cheap microcontroller and
  sensor hardware.
  The telemetry data is transmitted to the data collection backend for
  storage, postprocessing, redistribution, visualization and analysis.

- .. todo:: The constraints are somewhat harsh in all terms of efficiency, flexibility and robustness.

- Software running on the embedded sensor node devices and on the backend
  side are both available under libre software licenses like GPL and AGPL.

.. note::

    The first :ref:`labs beehive <labhive-one>` is online since February 2016
    in Berlin Wedding.
    We receive :ref:`live-data` from the hive and already have been able to
    record and discuss some :ref:`labhive-one-events`.


Mid term
========
- Make it easy for beekeepers to send data already collected with existing systems
  by further improving the documentation and adding more data sink interfaces
  like CoAP or just plain HTTP with "x-www-form-urlencoded" or CSV serialization
  formats.

- Make it possible for everyone to rebuild and make use of the toolkit on her own
  by further improving the documentation, working through more iterations and
  streamlining the prototypes into one or two designated hardware models,
  favorably supported by custom PCBs to reduce assembly time.

- Get started with LoRa and integrate an :ref:`apidictor` into :ref:`labhive-one`.


Long term
=========
- The stretch goal is to let the system evolve into an open toolkit to
  support collaborative data collection and sensor network projects in
  and around the scientific environmental monitoring community.

- The system should continuously meet demands on both small- and
  large-scale projects, always keeping up the "instant-on" effect.

- Reapplied to beehive monitoring, this could be a powerful foundation
  for building a distributed "seismographic" sensor network, an objective
  shared by other similar ambitious projects.

