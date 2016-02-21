####
TODO
####

****
2016
****

Platform
========
- Zuordnung/Verdrahtung von Sensoren zu Hardware Ports zu measurement fields zu Grafana dashboard/panel [Richard]

    - Beschäftigung mit InfluxDB Tags und deren Benutzung in Grafana

- Implement Grafana dashboard history - we already lost some... ;[

    | 22:33 die strategie mit dem git finde ich gut: https://wikitech.wikimedia.org/wiki/Grafana.wikimedia.org#No_history_of_dashboard_changes
    | 22:33 "One could run grafcli or something using the grafana HTTP API with git in a cron to have a better history."
- hiveeyes reference dashboard text
- Check backup of elbanco
- Issue PR2 of mqttwarn, write documentation (scenario window control)
- Obfuscate email address at https://swarm.hiveeyes.org/
- Improve splash page

    - http://bulma.io/
    - https://github.com/mozilla/Fira
    - http://mozilla.github.io/Fira/
    - http://www.carrois.com/fira-4-1/
- Redesign topic namespace
- Improve documentation

    - Interlink with documentation of foundation projects
    - Write about the integration of the components
    - Add Hardware Stückliste
    - Add more information fragments from distilled mailing list exchange

- Package pinning for Grafana
- Document how to upload pictures and screenshots, which should not go into a repository::

    # manual
    scp ~/Backup/Desktop/2016-02-19/2016-02-12_hiveeyes-notification-xmpp.jpg root@ptrace.hiveeyes.org:/var/www/ptrace.hiveeyes.org/htdocs/

    # automatic
    make upload-picture source=/tmp/grafana-ber-prototype-1.jpeg



BERadio
=======
- Add SMILE and UBJSON to `BERadio serialization format comparison <https://hiveeyes.org/docs/beradio/test/comparison.html>`_

    - https://en.wikipedia.org/wiki/Smile_%28data_interchange_format%29
    - https://en.wikipedia.org/wiki/UBJSON
    - http://ubjson.org/
    - via: http://johan.kanflo.com/serializing-data-from-iot-nodes/

- Improve formatting: https://hiveeyes.org/docs/beradio/research/binary-sizes.html
- Add computourist and others: https://hiveeyes.org/docs/beradio/research/prior-art.html
- Work on https://git.elmyra.de/hiveeyes/beradio/blob/master/src/cpp/examples/simple_message.cpp

Kotori
======
- Add more protocols
    - CoAP
    - CSV over UDP
    - HTTP/REST

        - CSV
        - Single values via x-www-form-urlencoded
        - Bunch of JSON
- Add software tests
- Log file rotation for /var/log/kotori/kotori.log

::

    2016-02-15T10:13:50+0100 [kotori.daq.storage.influx        ] INFO: Storing measurement succeeded: {'fields': {u'RSSI1': -67.0, u'wght1': -631.0, u'time': 1.455527630507804e+18}, 'measurement': '3756782252718325761_1'}
    2016-02-15T10:13:50+0100 [mqtt.client.subscriber           ] DEBUG: ==> PUBLISH (id=None qos=0 dup=False retain=False)
    2016-02-15T10:13:50+0100 [kotori.daq.application.beradio   ] DEBUG: MQTT receive: topic=hiveeyes/25a0e5df-9517-405b-ab14-cb5b514ac9e8/3756782252718325761/1/message-beradio, payload=d1:_2:h11:#i1e1:wi-631e1:ri-67ee
    2016-02-15T12:48:38+0100 [mqtt.client.factory.MQTTFactory  ] INFO: Stopping factory <mqtt.client.factory.MQTTFactory instance at 0x7f347c5b9a28>


Audio analysis
==============
- https://academo.org/demos/spectrum-analyzer/
- https://github.com/borismus/spectrogram
- https://news.ycombinator.com/item?id=11033290



****
2015
****

Platform
========

Prio 1
------
- [x] Close sensitive ports
- [x] Backupninja handler for InfluxDB
- [x] Run with non-admin Grafana account
- [x] Make system reboot-safe
- [o] Run with non-admin InfluxDB account

Prio 2
------
- [x] map domains
- [x] change url in beradio
- [x] make application/index
- [x] enhance 04-hiveeyes
- [o] graph-screenshot for splash screen
- [o] setup packages.hiveeyes.org
- [o] Makefile deb: replace "build/virt" by variable
- [o] Publish more user documentation

    - [o] Sending field names with underscore prefixes
    - [o] Sending timestamps
- [x] Republish / link to more technical information from BERadio and Kotori


Software
========

- [o] Send measurements via Javascript from https://swarm.hiveeyes.org/
- [o] Extract essential boilerplate code from "beradio" and publish as "mqttkit"
- [o] Publish Kotori repository
