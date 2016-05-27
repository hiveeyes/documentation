.. include:: _resources.rst

.. _platform-services:

Platform services
=================
The :ref:`Hiveeyes platform <Hiveeyes platform>` provides these services to the public:


MQTT
----
Most data link communication paths are MQTT_-driven and completely
transparent to all bus subscribers. The MQTT broker is available at:

    mqtt://swarm.hiveeyes.org

.. note:: Accessing the MQTT bus is not secured and currently unrestricted during beta.


Grafana
-------
Received telemetry data is automatically displayed in Grafana,
which is available at:

    https://swarm.hiveeyes.org/grafana/

use these credentials for signing in::

    username: hiveeyes
    password: Efocmunk


Multi-tenancy
-------------
The platform is designed with multi-tenancy in mind. Just `drop us an email <Hiveeyes email_>`_
to register your own (sub-)domains with us, e.g. beehive-monitor.example.org.

