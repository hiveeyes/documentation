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

- :download:`hiveeyes.php <../_static/content/clients/php5/hiveeyes.php>`, the Hiveeyes API
- `terkin-http.php`_, a telemetry data transmitter for PHP

.. hint::

    If you're stuck with PHP4, use

    - :download:`hiveeyes.php4 <../_static/content/clients/php4/hiveeyes.php4>`, the Hiveeyes API for PHP4
    - `terkin-http.php4`_, a telemetry data transmitter for PHP4


.. todo:: Make distribution packages ``hiveeyes-php.zip`` and ``hiveeyes-php4.zip``.


Telemetry API
=============
Transmitting telemetry data using PHP is pretty easy, read on my dear:

.. literalinclude:: ../_static/content/clients/php5/hiveeyes.php
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
There is a command line program :download:`example.php <../_static/content/clients/php5/example.php>`
for demonstration purposes, it will send data to ``swarm.hiveeyes.org``::

    php -f src/clients/php5/example.php run demo
    php -f src/clients/php5/example.php run sawtooth

.. hint::

    If you're stuck with PHP4, please use
    :download:`example.php4 <../_static/content/clients/php4/example.php4>`.


****
Todo
****
.. todo::

    - [o] After having export features, implement ``TelemetryClient->fetch(from, to)`` à la Grafana
    - [o] [docs] Link to Kotori: handbook/kotori, setup/getting-started and other appropriate sections

