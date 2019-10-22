.. contents:: Sections on this page
   :local:
   :depth: 1

----

.. _hiveeyes-tasks:
.. _hiveeyes-ideas:

###############
Tasks and ideas
###############

As this is our brainstorming area, lots of content is in german, sorry.
You might want to try the `Google translation of the "Hiveeyes system documentation" tasks`_.


****
2017
****


2017-08-08
==========
- Make the OSBH firmware connect to the Hiveeyes backend:

    - https://github.com/opensourcebeehives/BzBox_BETA/blob/master/main_beta.cpp
    - https://community.akerkits.com/t/buzzbox-verifying-product-ownership/485


2017-08-05
==========
- Grok data from http://cloud.4bees.at/channels/2/feed.json?start=2015-09-30
- Grok data from

    - http://www.hawaubee.com/hive-stats.html
    - http://hivetool.org/db/hive_stats3wDownload.pl?chart=Humidity&new_hive_id=60&start_time=2016-07-17+23%3A59%3A59&end_time=2016-07-24+23%3A59%3A59&hive_id=43&number_of_days=7&last_max_dwdt_lbs_per_hour=60&weight_filter=NASA&max_dwdt_lbs_per_hour=&days=&begin=&end=&download_file_format=html
    - http://hivetool.org/db/hive_graph3wDownload.pl?hive_id=60&begin=2015-01-01%2000:00:00&weight_filter=NASA&nasa_weight_dwdt=60&midnight=0&download=Download&download_file_format=csv
    - http://hivetool.org/db/hive_graph5m.pl?hive_id=113&units=Metric&begin=2017-07-28%2023:59:59&end=2017-08-04%2023:59:59&chart=Temperature&weight_filter=Raw&nasa_weight_dwdt=60&midnight=0&width=1150&height=500&download=Download&download_file_format=csv
    - http://hivetool.org/db/hive_graph5m.pl?hive_id=113&units=Metric&begin=2017-07-28%2023:59:59&end=2017-08-04%2023:59:59&weight_filter=Raw&nasa_weight_dwdt=60&midnight=0&download=Download&download_file_format=csv
    - Index page: http://hivetool.net/node/69
    - Examples

        - http://hivetool.net/BEE-SIDE01
        - http://hivetool.net/Anastasia

    - Did not import completely:

        - https://swarm.hiveeyes.org/grafana/dashboard/db/hivetool-org-landhaushains
        - https://swarm.hiveeyes.org/grafana/dashboard/db/hivetool-org-hawaubee02
        - https://swarm.hiveeyes.org/grafana/dashboard/db/hivetool-org-waypoint01

- Answer:

    - http://hivetool.net/node/136
    - http://hivetool.org/w/index.php?title=Hardware:_Hive_Interface_Board_3
      http://hivetool.org/dev_kit_order.pl
    - http://hivetool.org/d/node/115
    - http://hivetool.org/d/node/127
    - http://hivetool.org/d/node/113
    - http://hivetool.org/d/node/119
    - http://hivetool.org/d/node/107
    - http://hivetool.org/d/node/93
    -


2017-08-03
==========
- Add https://www.nectar.buzz/


2017-07-13
==========
- Add Jobee

    - http://jodaille.org/index.php/Project/Jobee
    - http://jodaille.org/snapshots/
    - http://emoncms.jodaille.org/vis/multigraph?embed=1&mid=5
    - http://emoncms.jodaille.org/vis/multigraph/get.json?id=5


2017-06-28
==========
- Add beehacker.com


2017-06-01
==========
- http://hostabee.com/
- https://eth0maz.wordpress.com/2017/05/18/the-beemonitor-project/
- http://beespi.mybluemix.net/


2017-05-05
==========
- Promote using the https://opendatacommons.org/licenses/pddl/ for all collected data.


2017-05-03
==========
- [o] Add:

    - www.sensato.eu
    | https://www.facebook.com/sensatoproject/


2017-04-20
==========
- [o] Tune https://swarm.hiveeyes.org/grafana/dashboard/db/weather-leoni


2017-04-18
==========
- [o] Add https://store.arduino.cc/arduino-mkrfox1200


2017-04-04
==========
- [o] Channel discussion about "Wägegestell" to Forum?
- [o] Add https://www.bee-my.world/. Thanks, Alex!
- [o] https://community.hiveeyes.org/t/wie-geht-ein-schwarmalarm-zu-programmieren/234
- [o] What about TLS @ https://community.hiveeyes.org/t/daten-per-mqtt-bridge-ans-backend-auf-swarm-hiveeyes-org-weiterleiten/237?
- [o] Forum: Write article about the Backend system and how to run a sawtooth signal for test driving
- [o] Forum: Write article about the firmware builder wrt. https://github.com/hiveeyes/arduino/tree/node-gprs-http-firmware-builder
- [o] Forum: https://community.hiveeyes.org/t/annotations-in-grafana-und-kotori/111

    - Refactor parts to "troubleshooting"
    - Show annotations of https://community.hiveeyes.org/t/welcome-markus/127


2017-04-03
==========
- [o] https://community.akerkits.com/t/access-to-bee-data/416
- [o] Write about LoPy/MicroPython, see also https://forum.pycom.io/topic/693/lopy-communication-with-rfm95-modules
- [o] Anbandelung mit Trachtnet
- Hardware bazaar:

    - https://www.pycom.io/product/lopy/
    - https://getchip.com/pages/chip
    - https://github.com/hallard/LoraCHIP

2017-04-02
==========
- [o] Add http://www.genstr.com/raspberry-pi-imkerei-server.html
- [o] Let all devices send a "system boot" annotation
- [o] Let the Schwarmalarm also set an annotation


2017-03-31
==========
- [o] open() "/usr/share/nginx/html/grafana/dashboard/db/hiveeyes-testdrive-cg-node-002-automatic" failed


2017-03-29
==========
- [o] Update https://community.hiveeyes.org/t/daten-per-mqtt-ans-backend-auf-swarm-hiveeyes-org-ubertragen/94::

    Das widerspricht natürlich obenstehender Information:

    mhies:
    Spricht da was dagegen? Ist die Platform offen?

    Wie oben geschrieben: Im Gegenteil, wir freuen uns! Die Plattform ist derzeit komplett offen, das heißt es gibt bislang keinerlei Authentifizierungsmechanismen.

- [o] Introduce "Hum" as known prefix for "humidity": https://swarm.hiveeyes.org/grafana/dashboard/db/hiveeyes-pw-automatic
- [o] https://community.hiveeyes.org/t/quelltexte-der-firmware-herunterladen-und-kompilieren/206
- [o] Fill https://github.com/hiveeyes/arduino/tree/master/node-yun-http


2017-03-28
==========
- [o] Finally, publish the firmwares as Zip File and/or Tarball, see
  https://community.hiveeyes.org/t/package-and-release-firmware-repository/155


2017-03-27
==========
- [o] Announce that the platform is now MQTT-authenticated. Describe how to get authentication credentials.
- [o] Add http://www.instructables.com/id/Avoid-Hard-Coding-WiFi-Credentials-on-Your-ESP8266/ / https://github.com/tzapu/WiFiManager
- [o] Cool URIs never change: https://hiveeyes.org/docs/system/vendor/hiveeyes-one/topology.html#feature-content-type-signalling


2017-03-20
==========
- https://www.heise.de/newsticker/meldung/Telekom-Internet-der-Dinge-soll-Bienen-retten-3659298.html. Thanks, Andreas!
- https://www.telekom.com/de/medien/medieninformationen/detail/schmalband-funk-sagt-bienensterben-den-kampf-an-488626


2017-03-19
==========
- [o] Add https://hackaday.io/search?term=bee+hive
- [o] Add https://bienenmonitoring.uni-hohenheim.de/
- [o] Add https://www.wdc.com/blog/wd-innovation-electric-bee-hive-project.html
- [o] Add https://blog.arduino.cc/2016/02/23/monitoring-solitary-bees-using-open-technology/


2017-03-17
==========
- [o] Forum: Add Topic "Receiving live data"
- [o] Forum: Add "LoPy" to hardware bazaar and https://community.hiveeyes.org/t/wemos-d1-bosch-bme280-chinese-load-cells/147/8
- [o] BERadio MicroPython implementation
- [o] More meta tags for website: <meta name='description' content='Beehive monitoring'>


2017-03-16
==========
- [o] Strange things happen at @ https://swarm.hiveeyes.org/grafana/dashboard/db/mois?refresh=1m&orgId=2&from=1489645745653&to=1489682129145
- [o] Edit annotations
- [o] Does not work: https://swarm.hiveeyes.org/api/hiveeyes/27041c2a_8afd_4a1e_b3ae_44233fa1f06b/mois/yun/data.txt?from=2017-03-16T08:15:00%200100&to=2017-03-16T09:15:00%200100
- [o] Describe the telemetry for node-wifi-mqtt-homie


2017-03-15
==========
- [o] Write "Welcome, Karsten!" to Forum: https://swarm.hiveeyes.org/grafana/dashboard/db/kh
- [o] Write "Welcome, Markus (mois, euse)!" to Forum: https://swarm.hiveeyes.org/grafana/dashboard/db/mois
- [o] Add historic data from Markus Hies: https://swarm.hiveeyes.org/grafana/dashboard/db/muc-mh-b99-1
- [o] Link to https://forum.pycom.io/topic/693/lopy-communication-with-rfm95-modules
- [o] Link to https://talk2.wisen.com.au/2016/05/24/influxdb-grafana/
- [o] Write topic about "Notifications for MUC-MH-B99" to Forum
- [o] Upstream changes to mqttwarn on elbanco


2017-03-06
==========
- [o] Add http://melixa.eu/en/ (https://community.hiveeyes.org/t/apisfero-and-melixa-system-projects/165)


2017-02-21
==========
- [o] Add link to https://www.facebook.com/pg/hiveeyes.community/
- [o] Add "SensaTo - sensing the bees": https://www.facebook.com/sensatoproject/
- [o] Add "Apivox Auditor - B": https://www.facebook.com/beekeepers.acoustic.assistant/


2017-02-12
==========
- [o] How to export data?

    - CSV raw data export

        - https://swarm.hiveeyes.org/api/hiveeyes/testdrive-sg/dettelbach/node-001/data.txt?from=2016-01-01&exclude=Gewicht
        - https://swarm.hiveeyes.org/api/hiveeyes/testdrive-sg/dettelbach/node-001/data.txt?from=2016-01-01&include=Brut-Temperatur,Aussen-Temperatur

    - PNG rendering: https://swarm.hiveeyes.org/grafana/render/dashboard/db/demo-with-annotations

- State of the Hive per OSBH::

    test(0), active(1), dormant(2), pre_swarm(3), swarm(4), sick_v(5), sick_w(6), sick_n(7), theft(8), collapsed(9), missing_queen(10), queen_hatching(11);

  https://github.com/opensourcebeehives/BzBoxServer/blob/master/src/analysis/State.java


2017-02-07
==========
- [o] Move content from "Agenda - finally!" to Forum


2017-02-05
==========
- [o] Comment on https://github.com/hiveeyes/arduino/pull/1 re. Makefile based infrastructure
- [o] Send around "How to Build a Low-tech Internet" (http://www.lowtechmagazine.com/2015/10/how-to-build-a-low-tech-internet.html#more)
- | Hacking on lua bindings for LWM2M on the NodeMCU - I have device object configurable now - sensors to be added soon!
  | https://twitter.com/JOAKlM/status/827522068480716800
- Link to

    - https://community.akerkits.com/t/hardware-firmware-package-updates/329
    - https://community.akerkits.com/t/infrastructure-mobile-app-updates/330


2017-02-02
==========
- https://www.facebook.com/opensourcebeehives/photos/a.566687303404578.1073741828.560921137314528/1357849694288331/?type=3&theater


2017-01-16
==========
- Maybe Transfer some content juwels like "Investigations into low-cost load cells" to community.hiveeyes.org


2017-01-12
==========
- Update History and write Email "Projektupdate/Rückblick"

    - Firmware
        - TerkinData C++
          https://hiveeyes.org/docs/arduino/TerkinData/README.html
        - Makefile support for ESP8266
            - https://hiveeyes.org/docs/arduino/firmware/node-gprs-http/README.html
            - https://hiveeyes.org/docs/arduino/firmware/node-wifi-mqtt/README.html
            - https://hiveeyes.org/docs/arduino/firmware/node-wifi-mqtt-homie/README.html
        - Things about "generic.ino"
    - Backend
        - CSV Datenkanal
        - Neue InfluxDB und Grafana Versionen
        - Annotations?
    - This and that
        - New project members
        - Community Forum

- Add more system resources to elbanco (swarm.hiveeyes.org)


2017-01-10
==========
- Answer: https://community.akerkits.com/t/where-are-all-the-old-topics/323
- https://github.com/opensourcebeehives/BuzzBoxInfrastructure


2017-01-04
==========
- https://www.facebook.com/cgruber.de/posts/10208442618282724


****
2016
****


2016-12-30
==========
- archive.hiveeyes.org à la archive.luftdaten.info


2016-12-29
==========
- https://community.akerkits.com/t/introduce-yourself/18/33
- Add material from scale calibration


2016-12-20
==========
- | Temperaturanstieg in der Wintertraube nach Oxalsäure-Behandlung?
  | https://www.imkerforum.de/showthread.php?t=54253
  | https://community.hiveeyes.org/t/oxalsaurebehandlung/103


2016-11-22
==========
- https://www.youtube.com/watch?annotation_id=annotation_1824032931&feature=iv&src_vid=8PMshYiEICM&v=kpaGvG_fpg0
- http://www.deutschebahn.com/bienen


2016-11-12
==========
- [o] Add Theater (with texts): https://www.facebook.com/beutenkarl/posts/1090324331081462


2016-11-12
==========
- mosquitto_sub -h swarm.hiveeyes.org -t '#' -v
- [o] re. jo: https://twitter.com/jpmens/status/784057898334875648
- https://www.gl-inet.com/mt300a/


2016-11-08
==========
- [o] Add https://forum.arduino.cc/index.php?topic=265119.0
- https://hivecity.wordpress.com/
- http://www.beesource.com/build-it-yourself/apidictor/
- http://apisuk.com/Bees/2011/05/research-%E2%80%93-a-new-apidictor/


2016-11-07
==========
- [o] Add

    - https://github.com/opensourcebeehives/OSBHLogger
    - https://github.com/opensourcebeehives/Node-audio-server
    - https://github.com/opensourcebeehives/OSBH-MachineLearning

- [o] Collect all links from https://community.osbh.mirror.hiveeyes.org


2016-11-06
==========
- [o] Add https://www.facebook.com/media/set/?set=a.10207277434753864.1073741832.1224510416&type=1&l=a2520d4b06
    - http://www.open-hive.org/apiary/clemens/node002.html
- [o] Add more from https://www.facebook.com/media/set/?set=a.10207788637453612.1073741834.1224510416&type=1&l=2fce61f90b


2016-11-05
==========
- [o] Add https://github.com/marvinroger/homie-esp8266/issues/199


2016-11-01
==========
- [o] Move PHP clients out of this repository. Put into Terkin.


2016-10-30
==========
- [o] Contribute to https://github.com/beelogger/RPi-Beelogger like https://github.com/Hiverize/Sensorbeuten/pull/1
- [o] Contribute to http://www.we-gro.de/funk-bienenstockwaage/
      => https://cdn.website-start.de/proxy/apps/cei7th/uploads/gleichzwei/instances/CAC7B535-BF5D-4F54-890C-5DA360BF75FF/wcinstances/epaper/d5405bed-0dd5-4ad8-912f-07adc8e0d5ff/pdf/F%C3%BCr-Imker-mit-PC-Kenntnissen-k%C3%B6nnen-die-Daten-auch-in-Excel-dargestellt-werden.pdf
- [x] Contribute https://github.com/hiveeyes/mqttwarn/compare/master...homie-dynamic-targets
      => https://github.com/jpmens/mqttwarn/pull/215


2016-10-23
==========
- [o] Adapt Homie MQTT topic to Hiveeyes semantics


2016-10-19
==========
- [o] https://www.hackster.io/contests/HomeandOfficeFuture/ideas/4680


2016-10-11
==========
- [o] http://www.forbes.com/sites/sap/2016/07/07/saving-bees-with-the-internet-of-things/
- [o] Watch Grafana issue "Add annotation/event from graph panel"
  | https://github.com/grafana/grafana/issues/1286


2016-10-07
==========
- [o] Add https://www.facebook.com/raspberrypi/posts/572631982920276
- [o] Add https://github.com/opensourcebeehives/BuzzBox
- [o] Write to Sarah Tappon (https://github.com/stappon) and Scott Piette (https://github.com/mtnscott),
  both contributed to the OSBH Firmware code (https://github.com/opensourcebeehives/OSBH).


2016-10-06
==========
- [o] Add http://www.beecontroller.com/
- [o] Add https://swarm.hiveeyes.org/grafana/dashboard/snapshot/3BUu1GPRfbdmuffCAoRHjNqMHfviKu5Z
      Blueprint: http://file1.npage.de/009563/21/bilder/wagejuli2016.jpg
- [o] Add http://monitor.earthship-tempelhof.de/dashboard/db/earthship-tempelhof
- [o] Firmware builder frontend like https://freifunk-berlin.github.io/firmware-wizard-frontend/


2016-09-16
==========
- [o] Add "contact" page.
- [o] Add qr code: https://zxing.org/w/chart?cht=qr&chs=1024x1024&chld=H&choe=UTF-8&chl=https%3A%2F%2Fwww.hiveeyes.org


2016-09-14
==========
- http://forum.arduino.cc/index.php?topic=160450.0
- http://scientificbeekeeping.com/
- https://www.heise.de/newsticker/meldung/Ideen-gegen-das-Bienensterben-3317982.html
- https://www.heise.de/tr/artikel/Bedrohte-Bienen-3317984.html


2016-09-05
==========
- Grafana export:

    - https://blog.mattionline.de/grafana-api-export-graph-as-png/
    - https://github.com/grafana/grafana/issues/2085

- Florian Altermatt (Schweiz)
- Add LICENSE badges to GitHub repositories


2016-09-03
==========
- Get early pictures from founding/designing phase, e.g. http://www.mauergarten.net/wp-content/uploads/IMG_5676.jpg

    - http://www.mauergarten.net/2014/09/5226/
    - http://www.mauergarten.net/2014/11/workshop-digitales-bienenmonitoring-ii/
    - https://imkerverein-kreuzberg.de/wordpress/?page_id=170&id=1



2016-06-12
==========
- http://karstenharazim.de/bienenmonitoring-hiveeyes-ping/
- https://www.facebook.com/photo.php?fbid=10206778412358616&set=pb.1224510416.-2207520000.1465756500.&type=3&theater


2016-06-08
==========
- [x] Add Homepage. More blueprints:

    - https://urbit.org/
    - https://mozilla.github.io/tofino/

- [o] Add more content from http://karstenharazim.de/bienenmonitoring-hiveeyes-ping/


2016-06-06
==========
- https://de-de.facebook.com/photo.php?fbid=10206766041769359&set=a.1682013409900.2083192.1224510416&type=1&theater
- Write documentation about Nginx configuration
- Make :ref:`daq-php` PHP4-compatible
- Investigate Software API of GPRSbee re. HTTP vs. FTP and
  single measurement vs. bulk upload in memory-constrained environments

    - http://gprsbee.com/
    - http://support.sodaq.com/gprsbee-connection/
    - https://github.com/SodaqMoja/GPRSbee



2016-06-05
==========
- | Rangefinder Beacon with a Smartphone
  | Buzzer, Beeper and GPS feedback for https://github.com/ksksue/Android-USB-Serial-Monitor-Lite
- Build distribution packages of artefacts in hiveeyes/arduino

    - Source tarball and zip
    - Binary firmware, debug and stripped
    - Documentation about how to acquire and how to upload firmware from different operating systems

        - ino
        - avrdude
        - Windows and Mac OSX GUI

- Refactor docs re. Handbook vs. Data acquisition vs. X


2016-06-04
==========
- Setup https://www.discourse.org/ on community.hiveeyes.org


2016-06-03
==========
- Add MQTT authentication based on https://github.com/jpmens/mosquitto-auth-plug ?
- "smskaufen.com" service plugin for mqttwarn
- "Signal" service plugin for mqttwarn

    - https://github.com/tgalal/python-axolotl
    - https://pypi.python.org/pypi/python-axolotl/
    - https://github.com/tgalal/yowsup

- Move from ATmega328P_ to ATmega644P_
- Build an apidictor with http://wiki.openmusiclabs.com/wiki/ArduinoFHT, see also:

    - http://www.elektronika.kvalitne.cz/ATMEL/necoteorie/transformation/AVRFHT/AVRFHT.html
    - http://wiki.openmusiclabs.com/wiki/ArduinoFFT


.. _raspberry-imst-ic880a-howto:

2016-06-02
==========
- Build a TTN/LoRaWAN Gateway with RaspberryPi and IMST iC880A

    - http://www.rs-online.com/designspark/electronics/eng/blog/building-a-raspberry-pi-powered-lorawan-gateway
    - Gonzalo Casas wrote a nice tutorial about it

        - https://github.com/ttn-zh/ic880a-gateway
        - https://thethingsnetwork.org/labs/story/how-to-build-your-own-lorawan-gateway/

- Link to OSCE

    - https://oscedays.org/berlin-2016/
    - http://community.oscedays.org/t/our-challenge-is-to-set-up-an-open-source-bee-monitoring-system-to-which-anyone-can-contribute-and-share-data-easily/4873

- Redirect https://swarm.hiveeyes.org/grafana/dashboard-solo/db/1-prototype-wip-amo to https://swarm.hiveeyes.org/grafana/dashboard/db/hiveeyes-labs-wedding
- Setup https://github.com/discourse/discourse on (community|forum.hiveeyes.org)


2016-06-01
==========
- | Beehive- and frame-tracking and inventory
  | https://www.i-keys.de/de/Transponder/125-khz.html
  | https://www.i-keys.de/de/Transponder/125-khz/EM4102-Uni/E675-1.58-Uni.html

- Link to https://www.facebook.com/StadtbienenOrg/posts/1238354899523194
- Integrate blossom times from DWD [msw]


2016-05-27
==========
- [o] https://github.com/search?q=hiveeyes&type=Issues


2016-05-26
==========
- [o] Improve liability disclaimer: Explicitly mention all "hardware"
  having the notion of implicitly being part of an overall "system".
- [o] Replace all "get in touch" or "please email us" links through
  http links to community.hiveeyes.org
- [o] Backlink with history.html#mqttwarn-xmpp
- [o] Add proper content attributions to media elements from 3rd-party authors
- [o] Display license in documentation
- [o] Add more "bills of material" (Teileliste)


2016-05-25
==========
- [o] Is it clear how to download, setup, configure and run BERadio_ yet?
- [o] Add pictures of hive locations, like
  https://www.facebook.com/photo.php?fbid=10204054704427620&set=pb.1224510416.-2207520000.1454976667.&type=3&theater
- [o] Write about technical specs in detail
- [o] Grafana's "dashboard-solo" should

    - display current datetime range
    - allow zooming out

- [o] Check https://packages.elmyra.de/hiveeyes/python/eggs/ at https://hiveeyes.org/docs/beradio/setup.html


2016-05-24
==========
- [o] Publish at hiveeyes.org/docs, redirect from swarm.hiveeyes.org
- [o] Add documentation license. https://creativecommons.org/licenses/by-sa/4.0/ ?
- [o] Send measurement values from the website
- [o] Provide a HTTP-based data sink
- [o] Write tutorial about how to actually get started with own hardware.
- [o] List some of the embedded components we build upon.
- [o] Describe the software interfaces in detail.
- [o] Refactor main index.rst
- [o] Add docs/why-hiveeyes
- [o] Add to docs: http://open-hive.org/apiary/index.html?user=clemens&hive=1
- [o] Add to docs: http://www.projektwerkstaetten.tu-berlin.de/menue/laufende_projektwerkstaetten_und_tu_projects/soziodiversitaet/


2016-05-23
==========
- [o] Schwarmalarm v1, HiveeyesDaily


2016-05-20 rpo, amo
===================
- [o] Use both raw and effective sensor values. Effective sensor values are modified by a specific delta.


2016-05-14 rpo, amo
===================
- [o] Add Homepage. Some blueprints:

* https://wordpress.com/
* https://www.cesanta.com/products/smart-js
* https://www.docker.com/products/docker-compose
* http://www.jyt.io/
* https://gortool.com/
* https://panopticon.re/
* http://opendesk.github.io/smartdesk/


2016-04-24
==========
- http://blog.durablescope.com/2015/03/build-speed-camera-and-traffic-logger.html
- https://github.com/tonbut/rpi-traffic-radar/blob/master/radar.pysmart


2016-03-06 amo
==============
- [x] Get proper trusted certificates from Let's Encrypt for hiveeyes.org
- [o] Improve docs

    - foundation (more pointers)
    - hiveeyes-one (more pointers)


2016-02-27 amo
==============
- [o] Consider using the upcoming Raspberry Pi 3 as a flexible and universal gateway


2016-02-25 rgu, cgr, rpo, msw, amo
==================================
- [o] BERadio Lua implementation for OpenWrt
- [o] Get Vagrant going for Windows users
- [o] Consider LoRaWAN
- [o] Rephrase wording on splash screen
- [o] How to do store-and-forward if Mosquitto doesn't have it? Use DTN finally?


2016-02-23 jho, rpo, amo
========================
- [o] Get into Mosquitto store-and-forward mechanism. Does it actually have it?
- [o] Check out improved "Annotations" feature of Grafana

    .. figure:: https://cloud.githubusercontent.com/assets/10999/13244830/928ab8a0-da09-11e5-8ce9-676ee55bcce8.gif
        :target: https://github.com/grafana/grafana/issues/1588
        :alt: Annotations: Click links and select text from annotation popover
        :width: 640px

        Annotations: Click links and select text from annotation popover

- [o] Setup Grafana HEAD from git repository at beta.hiveeyes.org for having a look at new features


2016-02-23 amo
==============
- [o] link to recent discussion about payload serialization formats


2016-02-22 rpo, amo
===================
- [o] Datenimport und -export über CSV
- [o] Tabellarische Daten über datatable_
- Naming things: Will *HiveFive* be a proper name for the convenience kit?


2016-02-22 cgr, amo
===================

Improvements
------------
- [o] Open Hive: Add Fritzing schema for ESP8266
- [o] Add Stückliste (via Excel file)
- [o] Improve documentation of HiveeyesOne_

    - Foundation libraries
    - Text from Grafana reference dashboard
    - Pictures


Features
--------
- [o] Kotori_ should be able to talk FTP (e.g. for batch-mode transmission of CSV data)

  .. todo:: Link to GPRS module capable of talking FTP

- [o] There should be a PHP script which is API-compatible to a future CoAP_ interface of Kotori_
  to smooth the learning curve and lower the bar.

  .. todo:: Research whether there already is a convenient PHP library talking CoAP_

- [o] This PHP script could also be used as a generic WebHook_ receiver
  when Kotori_ is dispatching messages to different receivers. mqttwarn_ might help.


2016-02-22 amo
==============
Documentation updates

- [o] Use the `"Group images" feature of sphinxcontrib-images`_ of the fine `sphinxcontrib-images`_ Sphinx_ module
- [o] Proper certificates for hiveeyes.org and ptrace.hiveeyes.org
- [o] Add topology 0.2.0 proposals from :ref:`Hiveeyes One Topology 0.2.0 proposal <topology-0.2.0-proposal-todo>`


2016-02-21 amo
==============
Documentation updates

- [x] Add stub "About Open Hive"
- [x] Write text about :ref:`HiveeyesOne`
- [x] Write text about :ref:`OpenHive`
- [x] Auf Kotori 0.3.2 and BERadio 0.4.4 CHANGELOG verlinken
- [x] rpos neue Bilder reintun
- [x] This and that
- [x] Tag swarm-hiveeyes-org @ 0.1.0
- [x] Add bumpversion
- [x] Improve Kotori_ and BERadio_ docs

    - [x] Migrate use-case scenarios from BERadio_
    - [x] Migrate Hiveeyes wishlist from Kotori_


2016-02-20 amo
==============

MS 1
----
- Kotori

    - Arbeit an der Dokumentation, siehe commits von gestern
    - Vorbereitung des Release 0.6.0 im aktuellen Zustand mit den Doku Updates (die 0.5.1 ist vom 26. November)
    - Release eines einigermaßen sauberen bzw. benutzbaren Debian Pakets

- BERadio

    - Arbeit an der Dokumentation
    - Vorbereitung des Release 0.5.0 im aktuellen Zustand mit den Doku Updates (die 0.4.4 ist vom 27. Oktober)
    - Release per Python source Paket (egg), wie gehabt

- swarm.hiveeyes.org

    - [x] Anlegen der Sphinx Doku, Bilder!
    - [x] Vollautomatisierung der Sphinx_ Doku Publikation als `Hiveeyes system documentation`_ auf ``swarm.hiveeyes.org``
    - [x] Erste Inhalte, Projekthistorie
    - [o] Ein paar einleitende Worte zum Gesamtprojekt in einer ``about.rst``
    - [x] Verlagerung der technischen Details vom derzeitigen Splashscreen der :ref:`Hiveeyes platform <Hiveeyes platform>`
      in die Sphinx_ Doku der `Hiveeyes system documentation`_
    - [o] Übertragung von rpos Inhalten aus `grafana_about.md`_ sowie `sensor_setup.md`_
      in die Sphinx_ Doku als reStructuredText_, Konvertierung per Pandoc_
    - [o] Halbautomatisierung der Rückkonvertierung von reStructuredText_ zu Markdown_ per Pandoc_
      zur Weiterverwendung innerhalb von Grafana_ Textpanels wie z.B. `Grafana dashboard "BER prototype #1"`_
    - [o] Die nach reStructuredText_ umgewandelten Inhalte aus `grafana_about.md`_ und `sensor_setup.md`_
      auch in die Sphinx Doku von BERadio_ und Kotori_ einbauen und/oder verlinken

.. _grafana_about.md: https://git.elmyra.de/hiveeyes/arduino-playground/blob/master/doc/grafana_about.md
.. _sensor_setup.md:  https://git.elmyra.de/hiveeyes/arduino-playground/blob/master/doc/sensor_setup.md


MS 2
----

.. tip:: Ab jetzt möglichst auch mit feature branches in den code repositories arbeiten.

.. _topology-0.2.0-proposal-todo:

- Kotori 0.7.0

    - Reguläres refactoring

    - MQTT Topic

        - Implementierung der "Content Type" Signalisierung über pseudo-Dateiendungen wie geplant
          (Inspired by Nick O’Leary and Jan-Piet Mens; Acked by cgr and rpo)::

                hiveeyes/testdrive/area-42/hive3/temperature vs. hiveeyes/testdrive/area-42/hive3.json

          Weitere Diskussion und Implementierung der "Direction" Signalisierung (Inspired by computourist, Pushed by rpo)
          Proposal::

                .../node3/{direction}/{sensor}.foo

        - Generalisierung der BERadioNetworkApplication / HiveeyesApplication vendor Architektur
        - Verbesserung der service-in-service Infrastruktur mit nativen Twisted service containern
        - Flexiblere Anwendungsfälle ähnlich dem von Hiveeyes ermöglichen: mqtt topic first-level segment "hiveeyes/"
          (the "realm") per Konfigurationsdatei bestimmen (Wunsch von Dazz)
        - Einführung von Softwaretests

- BERadio 0.6.0

    - Generalisierung der Funktionalität, Stichwort "mqttkit"
    - Verbesserung der Dokumentation

- swarm.hiveeyes.org

    - Prototypische Einbindung von mqttwarn_ in unser Gesamtsystem :-)



Research
--------
Mit ein paar Dingen müssen wir uns bei Gelegenheit stärker beschäftigen.

- InfluxDB

    - Wie geht man am besten mit InfluxDB-nativen Tags in unserem Kontext um?
      Bemerkung: Vielleicht war die Trennung auf Datenbank/Tableebene die falsche Strategie
      bzw. es gibt noch weitere, die orthogonal davon zusätzlich oder alternativ sinnvoll sind.

- Grafana

    - Wie kann man hier die Tags aus InfluxDB am besten verarbeiten und in den Dashboards praktisch nutzen?
    - Wie funktionieren Annotations mit InfluxDB?

- Gesamtsystem

    - Auch hier wird im Zusammenspiel der Komponenten noch viel geschwummst werden müssen.
      Ausblick: mqttwarn_ besser mit Kotori integrieren (via API)
      und als universeller Nachrichtenvermittler auf ``swarm.hiveeyes.org`` betreiben.


2016-02-15 amo
==============

Audio analysis
--------------
- https://academo.org/demos/spectrum-analyzer/
- https://github.com/borismus/spectrogram
- https://news.ycombinator.com/item?id=11033290



2016-02-12 rpo, amo
===================

Platform
--------
- Zuordnung/Verdrahtung von Sensoren zu Hardware Ports zu measurement fields zu Grafana dashboard/panel [rpo]

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
    - http://www.carrois.com/fira-4-1/
    - http://mozilla.github.io/Fira/
    - https://github.com/mozilla/Fira

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
    make ptrace-hiveeyes source=/tmp/grafana-ber-prototype-1.jpeg


BERadio
-------
- Add SMILE_ and UBJSON_ to `BERadio serialization format comparison <https://hiveeyes.org/docs/beradio/test/comparison.html>`_

    - https://en.wikipedia.org/wiki/Smile_%28data_interchange_format%29
    - https://en.wikipedia.org/wiki/UBJSON
    - http://ubjson.org/
    - via: http://johan.kanflo.com/serializing-data-from-iot-nodes/

- Improve formatting: https://hiveeyes.org/docs/beradio/research/binary-sizes.html
- Add computourist and others: https://hiveeyes.org/docs/beradio/research/prior-art.html
- Work on https://git.elmyra.de/hiveeyes/beradio/blob/master/src/cpp/examples/simple_message.cpp

- Add SenML_ serialization
    - http://wiki.1248.io/doku.php?id=senml
    - https://github.com/fluffy/senml-spec
    - https://tools.ietf.org/html/draft-jennings-senml-08
    - https://datatracker.ietf.org/doc/draft-jennings-core-senml/
    - via: http://www.earth.org.uk/note-on-IoT-comms-backhaul.html
    - via: http://opentrv.org.uk/


Kotori
------
- Add more protocols

    - CoAP
    - CSV over UDP
    - HTTP/REST

        - CSV
        - Single values via x-www-form-urlencoded
        - Bunch of JSON

- Add software tests
- Log file rotation for ``/var/log/kotori/kotori.log``

::

    2016-02-15T10:13:50+0100 [kotori.daq.storage.influx        ] INFO: Storing measurement succeeded: {'fields': {u'RSSI1': -67.0, u'wght1': -631.0, u'time': 1.455527630507804e+18}, 'measurement': '3756782252718325761_1'}
    2016-02-15T10:13:50+0100 [mqtt.client.subscriber           ] DEBUG: ==> PUBLISH (id=None qos=0 dup=False retain=False)
    2016-02-15T10:13:50+0100 [kotori.daq.application.beradio   ] DEBUG: MQTT receive: topic=hiveeyes/25a0e5df-9517-405b-ab14-cb5b514ac9e8/3756782252718325761/1/message-beradio, payload=d1:_2:h11:#i1e1:wi-631e1:ri-67ee
    2016-02-15T12:48:38+0100 [mqtt.client.factory.MQTTFactory  ] INFO: Stopping factory <mqtt.client.factory.MQTTFactory instance at 0x7f347c5b9a28>



*************
2015 December
*************

Platform
========

Prio 1
------
- [x] Close sensitive ports
- [x] Backupninja_ handler for InfluxDB_
- [x] Run with non-admin Grafana_ account
- [x] Make system reboot-safe
- [o] Run with non-admin InfluxDB_ account

Prio 2
------
- [x] map domains
- [x] change url in BERadio_
- [x] make application/index
- [x] enhance 04-hiveeyes
- [o] graph-screenshot for splash screen
- [o] setup packages.hiveeyes.org
- [o] Makefile deb: replace "build/virt" by variable
- [o] Publish more user documentation

    - [o] Sending field names with underscore prefixes
    - [o] Sending timestamps
- [x] Republish / link to more technical information from BERadio_ and Kotori_


Software
========
- [o] Send measurements via Javascript from https://swarm.hiveeyes.org/
- [o] Extract essential boilerplate code from BERadio_ and publish as mqttkit_
- [o] Publish Kotori_ repository


*************
2015 November
*************

2015-11-06 rpo, amo
===================

.. _hiveeyes-one-wishlist:

Wishlist
--------
- Aggregate measurements over time ranges (e.g. daily) and republish summary to MQTT

    - Provide reasonable "delta" values in relation to the point of last summary
    - Proposal for summary topics: hiveeyes/username/summary/foo/daily/bar
    - Schedule at: Morning, Noon, Evening

- Threshold alerting
- :ref:`weather-information-publishing`
- "Stockkarte" subsystem

    - marking point in graphs and filling the Stockkarte questioning
    - https://github.com/Dieterbe/anthracite/
    - https://twitter.github.io/labella.js/

- Timeseries anomaly detection using machine learning


2015-03-22
==========
- https://www.heise.de/tp/features/Die-Symbolische-Kommunikation-der-Bienen-3370588.html



----

.. _hiveeyes-todo:

####
Todo
####

List of collected ``.. todo::`` admonitions:

.. todoList::
