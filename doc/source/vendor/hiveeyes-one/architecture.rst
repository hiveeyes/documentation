.. include:: ../../_resources.rst

.. _hiveeyes-one-architecture:

#########################
Hiveeyes One architecture
#########################

.. contents::
   :local:
   :depth: 2

**********
Components
**********

Radio-to-MQTT gateway
=====================
The wide area communication is performed by BERadio_ and `Eclipse Mosquitto`_,
the former reads BEncode_ data payloads from the radio link adapter
JeeLink_ and forwards it to the latter using MQTT_::

    Node [AS]    -->    BERadio    -->    Serial [AG] ---> Serial [L]   -->   MQTT [L]
    |                      |                           |                             |
    |    N sensor nodes    |    1 RFM gateway node     |  1 internet gateway (MQTT)  |
    |                      |                           |                             |
    |                                                  |                             |
    |                  [Arduino]                       |          [Linux]            |
    |                                                  |                             |

Legend::

    [AS]        Arduino sensor node
    [AG]        Arduino gateway node
    [L]         Linux Host
    BERadio     Bencode over Radio

.. todo:: GraphViz_ flow graph


Backend
=======
The storage and visualization is performed by Kotori_, InfluxDB_ and Grafana_.
::

    MQTT [L] --------------> MQTT [swarm.hiveeyes.org] --> Kotori DAQ --> InfluxDB --> Grafana
    |                    |                                                                   |
    |  internet gateway  |                     1 data acquisition platform                   |
    |                    |                                                                   |

.. todo:: GraphViz_ flow graph


*********
Scenarios
*********

.. _hiveeyes-one-swarm-setup:

The "swarm" setup
=================
Hiveeyes, a Berlin-based beekeeper collective, is hosting the backend on ``swarm.hiveeyes.org``.
This is conceived as an open platform, we're ready to accept feature requests from the community.

.. Participate in collaborative data collecting and citizen science projects. Share and compare data with others.

- N Arduino sensor nodes
- 1 Arduino gateway node
- 1 RaspberryPi_ gateway host
- 1 Data collector platform


.. _hiveeyes-one-island-setup:

The "island" setup
==================
Run the infrastructure on your own system.
One goal might be to run all of BERadio_, `Eclipse Mosquitto`_, Kotori_, InfluxDB_ and Grafana_
on the same SoC machine, e.g. on a RaspberryPi_ or an `Intel NUC`_.

- N Arduino sensor nodes
- 1 Arduino gateway node
- 1 RaspberryPi_ data acquisition host

::

    Node [AS]    -->    BERadio    -->   Serial [AG] ---> Serial [L] --> MQTT [L] --> Kotori DAQ --> InfluxDB --> Grafana
    |                      |                          |                                                                 |
    |    N sensor nodes    |    1 RFM gateway node    |                    1 data acquisition host                      |
    |                      |                          |                                                                 |
    |                                                 |                                                                 |
    |                  [Arduino]                      |                           [Linux]                               |
    |                                                 |                                                                 |

    Legend:
    [AS]        Arduino sensor node
    [AG]        Arduino gateway node
    [L]         Linux Host
    BERadio     Bencode over Radio

.. todo:: GraphViz_ flow graph

Using this picture, it's easier to point at the place of ``beradio forward``, it helps at the step::

    Serial [L] --> MQTT [L]


The "desert" setup
==================
.. todo:: TBD.


The "PHP developer" setup
=========================
.. todo:: TBD.
