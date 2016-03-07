.. include:: _resources.rst

#####
Setup
#####

***************
Setup on Debian
***************

.. seealso:: Setup :ref:`Kotori on Debian AMD64 <kotori:setup-debian>`, with all requirements

Infrastructure
==============

Mosquitto
---------
::

    aptitude install mosquitto mosquitto-clients

InfluxDB
--------
::

    wget https://s3.amazonaws.com/influxdb/influxdb_0.10.2-1_amd64.deb
    dpkg --install influxdb_0.10.2-1_amd64.deb

Grafana
-------
Setup package repository::

    aptitude install apt-transport-https curl
    curl https://packagecloud.io/gpg.key | apt-key add -
    echo 'deb https://packagecloud.io/grafana/stable/debian/ wheezy main' > /etc/apt/sources.list.d/grafana.list
    aptitude update

Install package::

    aptitude install grafana

Enable and start system service::

    systemctl enable grafana-server
    systemctl start  grafana-server


Kotori
======

Setup
-----
::

    wget https://packages.elmyra.de/hiveeyes/debian/kotori_0.6.0-1_amd64.deb
    dpkg --install kotori_0.6.0-1_amd64.deb
    tail -F /var/log/kotori/*.log


Check services
==============
::

    systemctl status mosquitto influxdb grafana-server kotori

When rebooting the system, these four services should signal readyness::

             Starting Kotori is a multi-channel, multi-protocol d...hing toolkit...
    [  OK  ] Started Kotori is a multi-channel, multi-protocol da...aphing toolkit.
             Starting Starts and stops a single grafana instance on this system...
    [  OK  ] Started Starts and stops a single grafana instance on this system.
             Starting Regular background program processing daemon...
    [  OK  ] Started Regular background program processing daemon.
             Starting A high performance web server and a reverse proxy server...
             Starting InfluxDB is an open-source, distributed, ti...ies database...
    [  OK  ] Started InfluxDB is an open-source, distributed, time series database.
