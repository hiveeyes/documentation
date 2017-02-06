.. include:: ../../_resources.rst

.. _hiveeyes-one-topology:

#####################
Hiveeyes One topology
#####################

.. contents::
   :local:
   :depth: 2

************
Introduction
************
.. todo:: Write more text about this topic.

There is already some research material at the upstream
project BERadio_ at :ref:`beradio:mqtt-topic-naming`.


*************
Specification
*************

The *Hiveeyes One topology version 0.1* specfication currently is implemented,
we are working on :ref:`version 0.2 <topology-spec-0.2>`.


Version 0.1
===========

:status: stable

.. _topology-spec-0.1-example:

By example
----------
.. highlight:: bash

::

    # get hold of a MQTT client of your choice
    aptitude install mosquitto-clients

    # publish multiple measurements
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/node-1/message-json -m '{"temperature": 42.84, "humidity": 83}'

    # publish a single measurement
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/node-1/measure/temperature -m 42.84


.. _topology-spec-0.1-implementation:

By implementation
-----------------
This is the topic decoder implementation currently used with Kotori_/:ref:`vendor-hiveeyes`.

.. code-block:: python
   :caption: topic_to_topology decoder 0.1
   :name: topic_to_topology-0.1

    def topic_to_topology(self, topic):

        # regular expression pattern for decoding MQTT topic address segments
        pattern = r'^(?P<realm>.+?)/(?P<network>.+?)/(?P<gateway>.+?)/(?P<node>.+?)(?:/(?P<kind>.+?))?$'

        # decode the topic
        p = re.compile(pattern)
        m = p.match(topic)
        if m:
            address = Bunch(m.groupdict())
        else:
            address = {}

        return address

*****
Usage
*****
The decoded topology information is used at the Kotori_/:ref:`vendor-hiveeyes`
application for computing how to map inbound MQTT data messages appropriately
into InfluxDB databases and time series (tables).

When using the »quadruple hierarchy strategy«, a data message sent to the MQTT topic ``hiveeyes/999/1/99``
will be stored in a database named ``hiveeyes_999`` and a series named ``1_99``::

    hiveeyes  /  999  /  1  /  99
    |                 |         |
    |    database     | series  |
    |  hiveeyes_999   |  1_99   |
    |                 |         |

.. todo:: GraphViz_ drawing

Find the routines implementing this strategy in ``kotori/vendor/hiveeyes/application.py``, lines 44 ff.:


.. todo::

    Use ``.. literalinclude`` in the future when projects are more interlinked::

        .. literalinclude:: kotori/vendor/hiveeyes/application.py
           :lines: 1,3,5-10,20-



********
Appendix
********

.. _topology-spec-0.2:

Version 0.2
===========

:status: draft

.. _topology-spec-0.2-example:

By example
----------
.. highlight:: bash

Feature "content type signalling"
.................................
::

    # single measurement
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/hive-3/data/temperature      -m 42.84
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/hive-3/data/humidity         -m 83

    # multiple measurements of arbitrary family
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/hive-3/data.json             -m '{"temperature": 42.84, "humidity": 83}'

    # multiple measurements in CSV format
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/hive-3/data.csv              -m '## weight, temperature, humidity'
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/hive-3/data.csv              -m '42.42, 34.02, 82.82'

    # multiple measurements of same family
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/hive-3/data/temperature.csv  -m '42.84,21.42'
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/hive-3/data/humidity.csv     -m '83,41.5'

    # or even
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/hive-3/data.xml              -m '<temperature>42.84</temperature><humidity>83<humidity>'


Feature "network domains"
.........................
Proposal: Inject a *network domain identifier* after the network identifier.
Here it is ``sensor`` for sending telemetry data to the *sensor bus segment*.
::

    # single measurement
    mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/sensor/area-42/hive-3/temperature      -m 42.84

So we have::

    realm / network / domain / gateway / node

``domain`` should be used as the *network domain* by all subsystems as of 2016M04,
it should be a list of fixed identifiers, like:

    - sensor
    - command
    - data
    - human

Maybe also:

    - device
    - report

.. todo:: Discuss wording and describe use cases of *network domain identifiers*.

