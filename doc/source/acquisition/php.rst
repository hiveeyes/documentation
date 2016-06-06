.. include:: ../_resources.rst

.. _daq-php:

#########################
Data acquisition with PHP
#########################
.. highlight:: bash


*******
Library
*******
There is a convenient PHP library for transmitting
measurement values using PHP ready for download.


Download
========
Please download these files and put them alongside into the folder of your PHP program:

- :download:`hiveeyes.php <../_static/content/clients/php/hiveeyes.php>`, the Hiveeyes API
- `terkin-http.php`_, a telemetry data transmitter for PHP


.. todo:: Make distribution package ``hiveeyes-php.zip``.


Telemetry API
=============
Transmitting telemetry data using PHP is pretty easy, read on my dear:

.. literalinclude:: ../_static/content/clients/php/hiveeyes.php
    :language: php
    :lines: 21-38
    :linenos:
    :emphasize-lines: 16-18


.. todo::

    - Emphasize generation of custom "network", "gateway" and "node" identifiers.
    - Add convenience by adding appropriate Javascript widgets.


****
Demo
****

Command line
============
There is a command line program :download:`example.php <../_static/content/clients/php/example.php>`
for demonstration purposes, it will send data to ``swarm.hiveeyes.org``::

    php -f src/clients/php/example.php run demo
    php -f src/clients/php/example.php run sawtooth


****
Todo
****
.. todo::

    - [o] After having export features, implement ``TelemetryClient->fetch(from, to)`` à la Grafana
    - [o] [docs] Link to Kotori: handbook/kotori, setup/getting-started and other appropriate sections

