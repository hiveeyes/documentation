.. include:: ../_resources.rst

.. _data-acquisition:

################
Data acquisition
################

.. contents::
   :local:
   :depth: 1

----

************
Introduction
************
We offer various ways of sending data to our data collection platform ``swarm.hiveeyes.org``.
To successfully publish data to the platform, you should get familiar with the addressing scheme.
We call it the »quadruple hierarchy strategy«.

.. _topology-spec-0.1-rationale:

Addressing
==========
The topology hierarchy is made up of a minimum of four identifiers describing the core structure::

    realm / network / gateway / node

The topology identifiers are specified as:

    - "realm" is the designated root realm. You should prefix the topic name
      with this label when opting in for all features of the telemetry platform.
      For Hiveeyes, this should be called ``hiveeyes``.

    - "network" is your personal realm, it designates the **owner**.
      Choose anything you like or use an
      `Online UUID Generator <https://www.uuidgenerator.net/>`_
      to gain maximum uniqueness.

    - "gateway" is your gateway identifier, it designates a sensor node **location**.
      Choose anything you like.
      This does not have to be very unique, so you might use labels
      having the names of sites. While you are the owner of this
      namespace hierarchy, remember these labels might be visible on
      the collaborative ether, though.
      So the best thing would be to give kind of nicknames to your
      sites which don't identify their location.

    - "node" is your **node identifier**. Choose anything you like. This usually
      gets transmitted from a sensor device.

In the following examples, this topology address will be encoded into the variable ``CHANNEL``.


***************
Getting started
***************
We prepared some examples for transmitting measurement values to the "testdrive"
channel of our community data collection platform. Feel free to try it on your own,
the system currently offers the HTTP and MQTT transport protocols.
The accepted payload formats are JSON, x-www-form-urlencoded and CSV.


.. _daq-mqtt:

MQTT
====
.. highlight:: bash

Publish telemetry data to the MQTT bus using ``swarm.hiveeyes.org`` as hostname and ``hiveeyes`` as realm,
as seen in this example::

    # Get hold of a MQTT client of your choice
    aptitude install mosquitto-clients

    # Define the target address
    export BROKER=swarm.hiveeyes.org
    export CHANNEL=hiveeyes/testdrive/area-42/node-1

    # Publish a single measurement sample
    echo '{"temperature": 42.84, "humidity": 83}' | mosquitto_pub -h $BROKER -t $CHANNEL/data.json -l



.. _daq-http:

HTTP
====
.. highlight:: bash

Please use ``swarm.hiveeyes.org`` as hostname and ``hiveeyes`` as realm, giving
a base URI of ``https://swarm.hiveeyes.org/api/hiveeyes``.

.. tip::

    As sensor node hardware like the GPRSbee doesn't do TLS, there's an additional
    endpoint for unencrypted communication. In this case, just use::

        export HTTPURI=http://swarm.hiveeyes.org/api-notls

Use HTTP for submitting telemetry data using the HTTP client of your choice.
This example uses HTTPie_, a command line http client that will make you smile.
::

    # A. Get hold of a HTTP client of your choice
    aptitude install httpie

    # B. Define the target address
    export HTTPURI=https://swarm.hiveeyes.org/api
    export CHANNEL=hiveeyes/testdrive/area-42/node-1

    # C. Publish a single measurement sample

    # C.1 Post as application/json
    http POST $HTTPURI/$CHANNEL/data temperature:=42.84 humidity:=83

    # C.2 Post as application/x-www-form-urlencoded
    http --form POST $HTTPURI/$CHANNEL/data temperature:=42.84 humidity:=83


HTTP CSV
========

Single readings
---------------
::

    # 1. Define the target address
    export HTTPURI=https://swarm.hiveeyes.org/api
    export CHANNEL=hiveeyes/testdrive/area-42/node-1

    # 2. Register field names once
    echo '## weight, temperature, humidity, voltage' | http POST $HTTPURI/$CHANNEL/data Content-Type:text/csv

    # 3. Send readings
    echo '58.697, 19.6, 56.1, 4.13' | http POST $HTTPURI/$CHANNEL/data Content-Type:text/csv


Bulk mode
---------
``cat data.csv``::

    ## time, weight, temperature, humidity, voltage
    2016-08-14T22:02:06Z, 58.697, 19.6, 56.1, 4.13
    2016-08-14T22:22:06Z, 58.663, 19.4, 58.3, 4.13
    2016-08-14T22:42:06Z, 58.601, 19.1, 57.7, 4.12

Send readings::

    cat data.csv | http POST $HTTPURI/$CHANNEL/data Content-Type:text/csv



**************
Advanced usage
**************
For more detailed information, please have a look at

- :ref:`How to send telemetry data using MQTT <kotori:daq-mqtt>` and
- :ref:`How to send telemetry data using HTTP <kotori:daq-http>`


----

.. todo::

    - Add more convenience by adding appropriate Javascript widgets.


*****************************
Client libraries and programs
*****************************
- For a generic Python library, visit :ref:`daq-python`.
- For a generic PHP library, visit :ref:`daq-php`.
- There is also :ref:`beradio-python <beradio-python>`, a serial-to-mqtt
  forwarder used as gateway for RF telemetry by :ref:`hiveeyes-one`.

.. tip::

    For feeding a sawtooth signal right from your shell without having any
    hardware in place, take a look at the :ref:`kotori:sawtooth-signal` page.

.. note::

    For selecting a client library and communication style
    of your choice, we recommend taking a look at the
    :ref:`Kotori data acquisition handbook <kotori:data-acquisition>`.

