.. include:: _resources.rst

.. _do-it-yourself:

##############
Do it yourself
##############

    | About the technologies, standards, protocols and software
    | components used for building the whole system.
    |
    | We are building upon Arduino_ and compatibles, ESP8266_-based MCUs
    | and ARM_-based SoC computers like the RaspberryPi_ or ODROID_
    | as well as regular x86/amd64-based systems like the `Intel NUC`_.
    |
    | Standing on the shoulders of giants.


************
Introduction
************
Feel free to use the system to your own needs in beehive monitoring, no
matter which sensor hardware is in use at your site.
Just `drop us an email <Hiveeyes email_>`_ about custom requirements for
data adapters, we are closely working together with the developers of
upstream software and happy to support any protocol or data serialization
format you are already using in the field.


Disclaimer
==========
We are still working on the documentation and happy about
`getting any feedback <Hiveeyes email_>`_ for improving it.


Preview
=======

.. figure:: https://ptrace.hiveeyes.org/2016-02-18_HEnode-field-01.jpg
    :alt: HEnode version 0.2.2 in the field
    :width: 275px
    :align: left

    Electronics

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2001%20-%20Beutenkarl.jpg
    :alt: Scale Frame "Beutenkarl"
    :width: 275px
    :align: left

    Plumbing

.. figure:: https://ptrace.hiveeyes.org/2016-05-25_Scale%20Frame%20-%2005%20-%20Ready%2C%20Back.jpg
    :alt: Scale frame is mounted. Rear view.
    :width: 275px
    :align: left

    Ready

|clearfix|


**********
Components
**********


Electronics
===========
There are currently two different sensor kits in the making:

- :ref:`hiveeyes-one` uses RF for transmitting telemetry data
- :ref:`open-hive` is aiming at GPRS and WiFi for connectivity

.. todo:: Describe how to order the parts, build your own sensor kit and finally operate it.
.. todo:: Describe how to package the electronics and choose an appropriate power supply.


Plumbing
========
.. todo:: Describe how to wire electronics with sensors.

There are currently two different beehive scales in the making:

- :ref:`Scale frame "Beutenkarl" <history-beutenkarl-mounted>` for heavy lifting
- :ref:`openhive-bee-scale` for low-cost installments

.. todo::

    Describe how to get the parts and build one of the scale
    frames/sockets and how to connect it to the electronics.


Software
========
- `Hiveeyes Arduino`_ Sensors: Arduino-compatible MCU code for sensor reading and telemetry data transmission.

    .. todo:: Describe how to start transmitting data from the new sensor node.

- BERadio_ Gateway (optional): The RFM69_ to MQTT_ gateway used with the :ref:`hiveeyes-one` setup
  is a convenient and versatile serial-to-mqtt forwarder implementing some specific details of the
  Bencode_-based communication protocol.

    .. todo:: Describe how to operate BERadio_ and forward telemetry data from the new sensor node to the backend.

- Kotori_ Backend: The backend platform is completely open and driven by
  a multi-channel, multi-protocol data acquisition and graphing
  toolkit in turn based on Grafana_, InfluxDB_ and Mosquitto_.
  Read :ref:`platform-setup` about how to setup an instance on your machine.

    .. todo:: Describe how to receive and display telemetry data from different sensor nodes in Grafana_.

    .. note::

        While the whole backend software stack can be installed on your own machine,
        we encourage using our collaborative and open :ref:`Hiveeyes platform <Hiveeyes platform>`
        for getting started without effort.


******
System
******

.. todo::

    Describe how to start transmitting, receiving, publishing and visualizing
    telemetry data, all together now.

