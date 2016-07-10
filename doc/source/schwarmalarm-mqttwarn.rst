.. include:: _resources.rst

.. _mqttwarn-alerts:

###########################
Schwarmalarm using mqttwarn
###########################


************
Introduction
************

mqttwarn
========
`mqttwarn`_ is a great tool by `Jan-Piet Mens`_ and `Ben Jones`_.
For an intro, please have a look at `Introducing mqttwarn, a pluggable MQTT notifier`_
or `MQTTwarn, Ein Rundum-Sorglos-Notifier`_ (german).
Kudos to Jan-Piet and Ben for conceiving this, it is an exceptional
powerful and versatile swiss-army knife style tool.

We are using mqttwarn as an alerting and notification subsystem,
started adding foundation functionality a while ago (`incorporate topic names into topic targets`_)
and finally managed to provide a simple yet complete implementation for delivering
alert notifications to beekeepers based on measurement data arriving on the MQTT_ bus.
Read on, my dear.

Weight-loss events
==================
Beekeepers usually want to know their colony is swarming, to come catch it back
to their own beehives. To get a feeling about what we are after, a picture is
worth a thousand words:

.. raw:: html

    <iframe src="https://swarm.hiveeyes.org/grafana/dashboard-solo/db/hiveeyes-labs-wedding?panelId=5&from=20160519T040000&to=20160519T170000" width="100%" height="425" frameborder="0"></iframe>

This is a weight-loss event from :ref:`hiveeyes-scale-beutenkarl`
recorded on May 20, 2016 between 10:11 and 10:26 hours CEST after a
bee colony started swarming at the
:ref:`Hiveeyes labs beehive <labhive-one>` in Berlin Wedding.

.. _data-loss events:

Data-loss events
================
As a matter of fact, batteries are always draining. If capacity is too low
and sensor nodes stop transmitting due to shortage on power, a software
watchdog with a configurable timeout will recognize and notify beekeepers
about data-loss events.


*****
Setup
*****
While we are operating an instance of this setup on our :ref:`Hiveeyes platform`,
you can always setup an instance on your own machine.


Installation
============
.. highlight:: bash

Setup dependencies::

    pip install xmpppy==0.5.0rc1 jinja2==2.8

Setup mqttwarn::

    git clone https://github.com/jpmens/mqttwarn
    cd mqttwarn


Configuration
=============
.. highlight:: ini

Please configure ``examples/hiveeyes/hiveeyes.ini`` accordingly.

MQTT
----
Use the MQTT broker ``swarm.hiveeyes.org``::

    [defaults]
    hostname     = 'swarm.hiveeyes.org'

Notification targets
--------------------
For setting up notification targets, please configure the left-hand side
of the ``targets`` mapping to match your Hiveeyes user identifier UUID
(here: "testdrive" for demonstration purposes) and the right-hand side
to match email or xmpp addresses of your choice.

Setup email notification delivery::

    [config:smtp]
    server  =  'localhost:25'
    sender  =  "hiveeyes-alerts <hiveeyes-alerts@beekeepersclub.org>"
    username  =  None
    password  =  None
    starttls  =  False
    targets = {
        'testdrive' : ['testdrive@beekeepersclub.org'],
        }

Setup XMPP notification delivery (you have to register an XMPP account first)::

    [config:xmpp]
    sender   = 'hiveeyes@xmpp.beekeepersclub.org'
    password = 'yourcatsname'
    targets  = {
        'testdrive' : ['testdrive@xmpp.beekeepersclub.org'],
        }


***
Run
***
.. highlight:: bash

Run mqttwarn::

    export MQTTWARNINI=examples/hiveeyes/hiveeyes.ini
    ./mqttwarn.py


****
Test
****
Trigger an alarm by simulating a weight loss event::

    echo '{"wght2": 43.0}' | mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/beehive-1/message-json -l
    echo '{"wght2": 42.0}' | mosquitto_pub -h swarm.hiveeyes.org -t hiveeyes/testdrive/area-42/beehive-1/message-json -l

You should be seeing and receiving an alert message like::

    2016-05-30 14:47:47,692 CRITICAL [log] Alarm from beehive beehive-1.

    ------------------------------------------
    Network..............: testdrive
    Gateway..............: area-42
    Node.................: beehive-1
    Timestamp............: 2016-05-30T12:47:47.677973Z
    Original payload.....: {"wght2": 42}
    Current data.........: {u'wght2': 42}
    History data.........: {u'wght2': 43}
    ------------------------------------------


----

.. hint::

    We are still working on this alerting subsystem to improve all details of its implementation
    including the format of the message reported to beekeepers and its overall robustness.
    Please consider the current state as a working prototype.

