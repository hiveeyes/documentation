.. include:: _resources.rst

.. _hiveeyes-architecture:

#####################
Hiveeyes architecture
#####################

*************
System design
*************

Bus communication
=================

MQTT topic
----------
If you're in a hurry, just go to :ref:`more examples v0.1 <topology-spec-0-1-example>`
or :ref:`more examples v0.2 <topology-spec-0-2-example>`.

The :ref:`rationale of the topology <topology-spec-0.1-rationale>` tells you
how the MQTT topic looks like and tries to explain why it is designed this way.

You can even peek at the :ref:`topic decoder implementation <topology-spec-0.1-implementation>`.

MQTT message
------------
We usually prefer bunches of multiple measurement values, but sending them
discrete one by one is perfectly fine as well, see also
:ref:`message payload by example <topology-spec-0-1-example>`.

It's really just a plain flat JSON object, mapping field names to measurement
values like::

    {"temperature": 42.84, "humidity": 83}

Go ahead and send anything you like.

