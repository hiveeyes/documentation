.. include:: _resources.rst

.. _do-it-yourself:

##############
Do it yourself
##############

    | About the technologies, standards, protocols and software components used for building the whole system.
    | We are standing on the shoulders of giants.

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


Plumbing
========
.. todo:: Describe how to build the :ref:`scale frame "Beutenkarl" <history-beutenkarl-mounted>`.
.. todo:: Describe how to package the electronics and the power supply

Hardware
========
We currently have two different sensor kits in the making:

- :ref:`hiveeyes-one` uses RF for transmitting telemetry data
- :ref:`open-hive` is aiming at GPRS and WiFi for connectivity

Software
========
- `Hiveeyes Arduino`_ Sensors: Atmel AVR MCU code for sensor reading and telemetry data transmission.

- BERadio_ Gateway (optional): The RFM69_ to MQTT_ gateway used with the :ref:`hiveeyes-one` setup
  is a convenient and versatile serial-to-mqtt forwarder implementing some specific details of the
  Bencode_-based communication protocol.

- Kotori_ Backend: The backend platform is completely open and driven by
  a multi-channel, multi-protocol data acquisition and graphing
  toolkit in turn based on Grafana_, InfluxDB_ and Mosquitto_.
  Read :ref:`platform-setup` about how to setup an instance on your machine.

.. note::

    While the whole backend software stack can be installed on your own machine,
    we encourage using our collaborative and open Hiveeyes :ref:`platform`.

