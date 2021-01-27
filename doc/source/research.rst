.. include:: _resources.rst

.. _hiveeyes-research:

########
Research
########

.. contents::
   :local:
   :depth: 1

----


****
2017
****

2017-02-03
==========
- https://www.acoustics.asn.au/journal/2014/Vol42No3-Ahmad_technote.pdf
- https://www.researchgate.net/profile/Iftekhar_Ahmad/publication/275517604_Remote_Beehive_Monitoring_using_Acoustic_Signals/links/5580d89d08ae607ddc322c81.pdf

2017-02-02
==========
- https://docs.labs.mediatek.com/resource/linkit-smart-7688/en/faq

2017-01-25
==========
- https://onion.io/
- https://www.indiegogo.com/projects/omega2-5-linux-computer-with-wi-fi-made-for-iot#/
- https://github.com/hallard/Omega2-IO-Power

2017-01-20
==========
- https://docs.labs.mediatek.com/resource/linkit-smart-7688/en/tutorials/audio-playback-and-recording

2017-01-18
==========
Bei [1] gab es noch ein paar kleine Updates und [2] ist ganz neu und basiert auf dem C.H.I.P. [3]::

    [1] https://github.com/hallard/NodeMCU-Gateway
    [2] https://github.com/hallard/LoraCHIP
    [3] https://getchip.com/pages/chip

Zwei weitere Entwicklungen von Charles-Henri Hallard, die sehr interessant und ausgereift aussehen:
Der LoRasPi [1] und seine große Schwester, das RPI-Lora-Gateway [2], beide unterstützen die komplette
Palette an RFM92/95/96/98/69HCW ISM Funkmodulen. Dabei kommt ebenfalls die RadioHead Bibliothek [3,4]
zum Funken per ISM zum Einsatz, die wir auch schon seit längerem benutzen.

Mit Charles' Anpassungen [5] an der kanonischen IBM LMIC (LoraMAC-in-C) Bibliothek für Arduino [6]
läuft sie scheinbar auch nativ auf dem Raspberry [7] und erschließt damit den Zugang zu LoRaWAN
Class A und Class B und dadurch auch zu TTN [8].
::

    [1] https://github.com/hallard/LoRasPI
    [2] https://github.com/hallard/RPI-Lora-Gateway
    [3] https://github.com/hallard/RadioHead
    [4] http://www.airspayce.com/mikem/arduino/RadioHead/
    [5] https://github.com/hallard/arduino-lmic
    [6] https://github.com/matthijskooijman/arduino-lmic
    [7] https://github.com/hallard/arduino-lmic/blob/rpi/README.md
    [8] https://www.thethingsnetwork.org/


2017-01-16
==========
- https://shop.sodaq.com/en/sodaq-autonomo.html
- https://github.com/allthingstalk/arduino-lora
- http://support.sodaq.com/sodaq-one/


2017-01-16
==========
- https://www.honeyflow.com/
- http://forum.honeyflow.com/


2017-01-06
==========
- http://www.libelium.com/temperature-humidity-and-gases-monitoring-in-beehives/
- http://beespoke.info/2016/02/18/remote-bee-hive-monitoring/
- http://pub.jki.bund.de/index.php/JKA/article/download/5328/5073
- http://beetime.eu/
- https://www.bee-safe.eu/


****
2016
****


2016-12-29
==========
- | Honey Bee Colonies Remote Monitoring System
  | http://www.mdpi.com/1424-8220/17/1/55
  | http://www.mdpi.com/1424-8220/17/1/55/pdf


.. _monitoring-the-real-world:

2016-11-30
==========
Jan-Piet Mens attended the Open Source Monitoring Conference (OSMC), where he stumbled across
the talk "Monitoring the Real World" by Antony Stone and also spread the word about our project.
Thanks for that!

- JP's tweet

    - https://twitter.com/jpmens/status/803973198173847552

- Talk "Monitoring the real world" by Antony Stone

    - `Abstract (DE) <https://www.netways.de/?id=3547>`_
    - `Abstract (EN) <https://www.netways.de/?id=3659&L=1#c48147>`_
    - `Presentation-Slides <https://www.netways.de/fileadmin/images/Events_Trainings/Events/OSMC/2016/Slides/Antony_Stone_-_Monitoring_the_Real_World.pdf>`_
    - `Video <https://youtu.be/wcz7N_u0S7Y?list=PLeoxx10paaAlYhVAJIhugFNeZ1kGKmpl9>`_

Antony uses UKHASnet, which describes itself as:

A simple wireless network aimed for use with low power licence exempt wireless modules.
Ideally to be used for a local ground network for example for remote temperature sensing however will
also be designed to allow for high altitude communications such as via meterological balloons.
It is a mesh topology, relaying data from node to node.

- https://ukhas.net/
- https://ukhas.net/wiki/
- https://github.com/UKHASnet/protocol/blob/master/protocol.md
- https://github.com/UKHASnet/protocol/blob/master/fields.md
- https://github.com/UKHASnet-hub
- https://philcrump.co.uk/


2016-11-23
==========
- | Honeybee Colony Vibrational Measurements to Highlight the Brood Cycle
  | http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0141926
- https://github.com/sci3bencsm/brood_cycle_matlab_code
- https://en.wikipedia.org/wiki/Principal_component_analysis
- https://en.wikipedia.org/wiki/Discriminant_function_analysis


2016-11-18
==========

Audio transmission
------------------

| Richard
| 19:12 http://hackaday.com/2015/06/06/esp8266-as-a-networked-mp3-decoder/
| 19:12 https://www.hackster.io/middleca/sending-sound-over-the-internet-f097b4
|
| Andreas
| 19:13 https://github.com/esp8266/Arduino/issues/1183
| 19:13 http://w3.impa.br/~diego/software/luasocket/ftp.html
|
| Andreas
| 19:26 https://nodemcu.readthedocs.io/en/master/en/modules/net/#netcreateserver
| 19:27 https://github.com/nodemcu/nodemcu-firmware/issues/1085
|
| Richard
| 19:44 http://nodemcu.readthedocs.io/en/dev/en/modules/pcm/
| 19:44 https://github.com/nodemcu/nodemcu-firmware/blob/dev/lua_examples/pcm/play_file.lua
|


TCP
---
- https://github.com/me-no-dev/ESPAsyncTCP
- https://github.com/Links2004/arduinoWebSockets

HTTP
----
- https://github.com/esp8266/Arduino/tree/master/libraries/ESP8266HTTPClient
- https://github.com/esp8266/Arduino/blob/master/libraries/ESP8266WebServer
- https://github.com/marcoskirsch/nodemcu-httpserver
- https://github.com/marcoskirsch/nodemcu-httpserver/blob/master/httpserver-connection.lua
- https://github.com/marcoskirsch/nodemcu-httpserver/blob/master/http/file_list.lua
- https://github.com/marcoskirsch/nodemcu-httpserver/blob/master/http/post.lua

FTP
---
- https://github.com/nailbuster/esp8266FTPServer
- https://github.com/gallegojm/Arduino-Ftp-Server/tree/master/FtpServer
- https://github.com/esp8266/Arduino/issues/1183
- http://w3.impa.br/~diego/software/luasocket/ftp.html

Lua
---
- | coroutines
  | https://www.lua.org/pil/9.1.html
  | https://www.lua.org/pil/9.4.html
- https://www.tutorialspoint.com/lua/lua_file_io.htm
- https://stackoverflow.com/questions/30544301/send-entire-html-code-with-clientsend-in-nodemcu-esp8266-lua-programming/35097791#35097791
- http://www.esp8266.com/wiki/doku.php?id=nodemcu-unofficial-faq


2016-11-17
==========

Gateways with ESP8266 / NodeMCU
-------------------------------
- http://tinkerman.cat/rfm69-wifi-gateway/
- http://www.electronics-lab.com/rfm69-wifi-gateway/
- http://johan.kanflo.com/bridging-ism-radio-and-wifi-for-lunch-money/
- http://jeelabs.net/projects/hardware/wiki/JeeLink
- http://www.digitalsmarties.net/products/jeelink
- https://github.com/jcw
- http://jeelabs.org/
- https://github.com/hallard/NodeMCU-Gateway
- https://oshpark.com/shared_projects/HIb6K9BL
- https://harizanov.com/2015/11/rfm69-to-mqtt-gateway-using-esp8266/
- http://buildthebuzz.co.uk/science/research/

2016-11-12
==========
- | A method for observation of the vibro-acoustic and seismic activity within honeycomb
  | https://drive.google.com/file/d/0B1-J3roeA7FeYTNmOGVkOWEtMjQ4Yy00OTY3LWJhMDEtYjQ1NGIwNzRiNWFi/view
- | Honeybee Colony Thermoregulation – Regulatory Mechanisms and Contribution of Individuals in Dependence on Age, Location and Thermal Stress
  | http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0008967
- | Chemical Communication in the Honey Bee Society
  | https://www.ncbi.nlm.nih.gov/books/NBK200983/
- http://sitn.hms.harvard.edu/flash/2015/to-bee-or-not-to-bee-social-dynamics-impact-productivity-and-stress-response-in-honey-bees/
- | Bees as Biosensors: Chemosensory Ability, Honey Bee Monitoring Systems, and Emergent Sensor Technologies Derived from the Pollinator Syndrome
  | http://www.mdpi.com/2079-6374/5/4/678/pdf
  | http://www.mdpi.com/journal/biosensors
- | Corn Dust Research Consortium (CDRC) Preliminary Report
  | http://www.pollinator.org/PDFs/July2015CDRCFINAL.pdf
- http://www.bienenforschung.biozentrum.uni-wuerzburg.de/

2016-11-12
==========
- | Example BOM for http://spellfoundry.com/products/sleepy-pi-2/:
  | https://docs.google.com/spreadsheets/d/1nI3witlPTMcbUZzZZHIfNlv-dO-o5Rbs2B_zqUWT8EA/edit#gid=0

Do we have audio recordings?

- https://github.com/opensourcebeehives/BeehiveAudio
- https://community.osbh.mirror.hiveeyes.org/t/beehive-audio/49/6
- https://drive.google.com/file/d/0Bz7WbjRT9mlmWXNqbVNqWEI4QzA/view
- https://archive.org/details/BeehiveSounds_258
- https://groups.yahoo.com/neo/groups/naturerecordists/conversations/messages/49681
- http://daanhendriks.co.uk/wildlife-nature-sound-recording/bees/
- https://archive.org/details/InsideARooftopBeehiveRueDeFlandre
- https://mega.nz/#F!ZBNxhRTR!OCjEdBzodkbMWmW0chFcyg

Audio recording and analysis

- https://sound.stackexchange.com/questions/14540/how-to-make-very-long-recordings-of-bees
- http://www.beehacker.com/wp/?page_id=103
- http://www.beehacker.com/wp/?p=240
- http://www.beehacker.com/wp/?page_id=189
- https://web.archive.org/web/20110709095007/http://www.beesource.com/build-it-yourself/apidictor/

|

- | Bee-Hives and Bee-Habits
  | https://archive.org/details/jstor-1761967

- | Identification of the honey bee swarming process by analysing the time course of hive vibrations
  | [1] https://community.osbh.mirror.hiveeyes.org/t/beehive-audio-field-recording-kits/96/8
  | [2] https://docs.google.com/file/d/0Bz7WbjRT9mlmaGU1bUhjTUN1NEU/edit
  | [3] http://www.journals.elsevier.com/computers-and-electronics-in-agriculture

- | REMOTE BEEHIVE MONITORING USING ACOUSTIC SIGNALS
  | https://www.acoustics.asn.au/journal/2014/Vol42No3-Ahmad_technote.pdf

- | Battery saving with ESP8266
  | https://forums.adafruit.com/viewtopic.php?f=57&t=91787&p=529630


2016-11-12
==========
- https://www.elektormagazine.de/news/wettbewerb-machen-sie-ihr-projekt-erfolgreich
- https://www.elektormagazine.de/contest/global-start-up-award-2016
- http://br-beratung.com/html/home_ho.html
- https://tinyletter.com/marcusbehrens/letters/maker-faire-berlin-initial-report
- Check https://web.archive.org/web/*/https://hiveeyes.org/*
- http://www.immenfreunde.de/docs/EddieWoods.pdf


2016-11-12
==========
- http://www.dave-cushman.net/elect/apidictor.html
- https://www.google.com/patents/US7549907
- http://colonymonitoring.com/cmwp/other-resources/events/
- http://www.beemaster.com/forum/index.php?topic=36399.0
- http://www.nytimes.com/2010/06/29/business/29airports.html
- https://www.ncbi.nlm.nih.gov/pubmed/26529030
- https://beeinformed.org/2016/11/07/new-web-based-tool-for-fast-identification-of-bee-mites/
- http://idtools.org/news_10_25_2016.php
- http://idtools.org/id/mites/beemites/
- https://beeinformed.org/2016/08/01/explore-the-bip-database/
- https://beeinformed.org/programs/sentinel-hive-scale-program/
- https://beeinformed.org/solutionbee/
- https://beeinformed.org/beewatch-pro/
- BeeWatch: http://www.swienty.com/shop/vare.asp?side=0&vareid=902359
- https://beeinformed.org/arnia/
- http://bipscaleportal.herokuapp.com/
- http://www.dezeen.com/2016/10/26/neri-oxman-synthetic-apiary-mit-mediated-matter-bees-beehive-design-technology/


2016-11-11
==========
- https://github.com/INTECH-RGB/homie-dashboard
- https://wiki.hackerspace.pl/projects:xiaomi-flora
- https://github.com/marcelrv/miflora
- https://www.raspberrypi.org/blog/raspberry-pi-zero/
- http://nanopi.io/nanopi-neo-air.html
- http://www.friendlyarm.com/index.php?route=product/product&path=69&product_id=132
- https://github.com/opensourcebeehives
- https://github.com/opensourcebeehives/OSBHLogger/blob/master/AVrecord.sh
- https://github.com/opensourcebeehives/Node-audio-server
- https://github.com/opensourcebeehives/OSBH-MachineLearning
- https://github.com/opensourcebeehives/BuzzBox
- https://github.com/opensourcebeehives/BuzzBoxApp
- https://github.com/opensourcebeehives/tcpClient
- | Dump non-compressed WAV file to a CSV file.
  | https://github.com/dilawar/sound
- https://ipfs.io/
- https://github.com/ipfs/py-ipfs-api
- https://github.com/ipfs/js-ipfs-api/blob/master/src/get-files-stream.js
- https://www.sparkfun.com/products/13261
- https://www.sparkfun.com/products/13712
- https://github.com/sparkfun/OpenLog
- https://github.com/sparkfun/OpenScale
- https://github.com/sparkfun/OpenScale/blob/master/firmware/OpenScale/OpenScale.ino
- https://learn.sparkfun.com/tutorials/openscale-applications-and-hookup-guide
- https://github.com/sparkfun/OpenScale/blob/master/firmware/particle-sketch/sparkfun_beehive.txt
- https://data.sparkfun.com/streams/wpbq2p0N1rig8WJZRWpO
- https://analog.io/, https://hackaday.io/project/4648-analogio-a-full-stack-iot-platform, http://phant.io/
- Phant

    - http://phant.io/
    - http://phant.io/libraries/
    - https://github.com/sparkfun/phant-docs
    - https://github.com/sparkfun/phant-arduino
    - https://github.com/matze/python-phant
    - https://hackaday.io/project/4648-analogio-a-full-stack-iot-platform/log/23335-analogio-web-application
    - https://hackaday.io/project/4648-analogio-a-full-stack-iot-platform
    - https://hackaday.io/project/4648-analogio-a-full-stack-iot-platform/log/23339-measuring-the-temp-and-humidity-of-beehives
    - https://hackaday.io/project/4648-analogio-a-full-stack-iot-platform/log/23345-measuring-the-weight-of-beehives


2016-11-07
==========
- [o] http://forum.arduino.cc/index.php?topic=113534.msg2806320#msg2806320
- More:

    - https://community.akerkits.com/t/beehive-audio-analysis-workflow/285
    - https://kithub.cc/
    - http://phasm.co.uk/gss-projects/science-garden/

- https://community.particle.io/t/beehive-monitor-udp-sleep-thermistor-wifi-antenna-adc-speed-ram/4524/43
- https://photosbykris.exposure.co/aurecons-urban-bee-colony
- Acoustical communication in honeybees
  http://www.apidologie.org/articles/apido/pdf/1993/03/Apidologie_0044-8435_1993_24_3_ART0009.pdf
- Frequenzüberwachung des Bienenvolks
  https://www.imkerforum.de/showthread.php?t=32478
- Remote Hive Monitoring
  http://www.apimondia.com/congresses/2013/Economy/Plenary-Session/Remote%20Hive%20Monitoring%20-%20Huw%20Evans%20Beng.pdf
- http://www.apimondia.com/
- http://www.apidologie.org/
  http://www.springer.com/life+sciences/entomology/journal/13592
- Records of toxicity events on honeybee colonies
  https://docs.google.com/forms/d/e/1FAIpQLSd_sc2RTQ1FmHgH8eZIg3L5-CNOqm4IRIzmnaQWJrnqKkZhQw/viewform?c=0&w=1


2016-11-06
==========
- http://bugthebees.blogspot.de/2014/12/beesbug-this-blog-is-all-about.html
- https://grabcad.com/challenges/cnc-beehive-for-citizen-science
- https://www.sparkfun.com/products/13774
- http://phenomena.nationalgeographic.com/2013/03/26/honeybees-can-move-each-other-with-electric-fields/
- http://www.watterott.com/de/Pycom-LoPy
- http://www.lowtechmagazine.com/2015/10/how-to-build-a-low-tech-internet.html#more


2016-10-26
==========
- [o] Add https://oxnatbees.wordpress.com/2016/10/24/the-sounds-of-the-bees-putting-a-microphone-inside-the-hive/


2016-10-24
==========
- [o] Add http://broodminder.com/
    - http://app.beekeeping.io
    - https://www.indiegogo.com/projects/broodminder-beehive-health-telemetry/
    - https://www.indiegogo.com/projects/broodminder-w-wireless-beehive-scale--3/
    - https://www.dropbox.com/s/hun7ju125gi31c5/2-Pager%201%20-%20Hive%20Weight%20Profiles%20FINAL.pdf
    - https://www.dropbox.com/s/qkkzep8ha8mh71m/2-Pager%206%20-%20Citizen%20Science%20Observations.pdf
    - https://www.dropbox.com/s/id8dirvlcdduecz/Device%20Locations.pdf
    - https://www.dropbox.com/s/lk6eafxcgjwws8b/2-Pager%202%20-%20Swarm%20Detection%20FINAL.pdf
    - https://www.linkedin.com/in/rich-morris-0b07474


2016-10-23
==========
Homie MQTT topics ...

::

    homie/bee1/$online false
    homie/bee1/$homie 2.0.0
    homie/bee1/$implementation esp8266
    homie/bee1/temperature0/$type temperature
    homie/bee1/temperature0/$properties unit,degrees
    homie/bee1/temperature1/$type temperature
    homie/bee1/temperature1/$properties unit,degrees
    homie/bee1/weight/$type weight
    homie/bee1/weight/$properties unit,kilogram
    homie/bee1/$name bee1
    homie/bee1/$localip 192.168.1.147
    homie/bee1/$uptime/interval 120
    homie/bee1/$fw/name Bienen
    homie/bee1/$fw/version 1.0.7
    homie/bee1/$implementation/config {"name":"bee1","wifi":{"ssid":"we break for nobody"},"mqtt":{"host":"omd.atze.lan","port":1883,"ssl":false,"auth":true},"ota":{"enabled":true,"host":"omd.atze.lan","port":80,"ssl":false,"path":"/ota"},"device_id":"bee1"}
    homie/bee1/$implementation/version 2.0.0
    homie/bee1/$implementation/ota/enabled true
    homie/bee1/$online true
    homie/bee1/$signal 98
    homie/bee1/$uptime/value 261078

::

    homie/bee2/$implementation/config {"wifi":{"ssid":"we break for nobody"},"mqtt":{"host":"omd.atze.lan","port":1883,"auth":true},"name":"bee2","ota":{"enabled":true},"device_id":"bee2","settings":{"sendInterval":123}}
    homie/bee2/$implementation/version 2.0.0
    homie/bee2/$implementation/ota/enabled true
    homie/bee2/$online true
    homie/bee2/temperature0/unit c
    homie/bee2/temperature1/unit c
    homie/bee2/weight/unit kg
    homie/bee2/$signal 100
    homie/bee2/$uptime/value 4
    homie/bee2/temperature0/degrees 0.00
    homie/bee2/temperature1/degrees 0.00
    homie/bee2/weight/kilogram -3.82
    homie/bee2/battery/volt 3173.00
    homie/bee2/$online false
    homie/bee2/$homie 2.0.0
    homie/bee2/$implementation esp8266
    homie/bee2/temperature0/$type temperature
    homie/bee2/temperature0/$properties unit:settable,degrees:settable
    homie/bee2/temperature1/$type temperature
    homie/bee2/temperature1/$properties unit,degrees:settable
    homie/bee2/weight/$type weight
    homie/bee2/weight/$properties unit,kilogram:settable
    homie/bee2/battery/$type voltage
    homie/bee2/battery/$properties unit:settable,volt:settable
    homie/bee2/$name bee2
    homie/bee2/$localip 192.168.1.149
    homie/bee2/$uptime/interval 120
    homie/bee2/$fw/name Bienen-ULP
    homie/bee2/$fw/version 1.0.0


2016-10-22
==========
- http://www.hackerbee.com/
- http://www.beehacker.com/
- http://www.beehacker.com/wp/?p=969
- http://www.beehacker.com/wp/?page_id=55
- http://www.beehacker.com/wp/wp-content/uploads/2015/07/2015_06_26-HIVEWEIGHTMACHINE.pdf
- http://www.beehacker.com/wp/?page_id=55
- http://www.beehacker.com/wp/?p=229
- http://www.beehacker.com/wp/?cat=14
- http://www.beehacker.com/wp/?page_id=681
    - http://www.beehacker.com/apiary/
    - http://www.beehacker.com/apiary12/
- https://www.bosche.eu/waagenkomponenten/waegezellen/plattform-waegezellen/plattform-waegezellen-h30a


.. _sim-everywhere:

2016-10-08
==========
- https://www.eseye.com/
- https://www.eseye.com/sim-cards/
- https://github.com/ubirch/ubirch-board-examples/blob/master/src/gsm_console/call.txt


.. _blitzortung:

2016-10-08
==========
- http://ams.com/eng/Products/Wireless-Connectivity/Wireless-Sensor-Connectivity/AS3935
- https://github.com/raivisr/AS3935-Arduino-Library
- http://www.rrkb.lv/musings/?p=109
- https://twitter.com/tautic
- https://www.rs-online.com/designspark/detecting-lightning-with-an-arduino
- http://www.elv.de/elektronikwissen/franklin-lightning-sensor-as3935.html
- https://www.youtube.com/watch?v=hpKbZC1DEp4
- https://www.tindie.com/products/TAUTIC/as3935-lightning-sensor-board/


.. _trachtnet:

2016-10-07
==========

Stockwaagen
-----------
- http://www.bienenkunde.rlp.de/
- http://www.bienenkunde.rlp.de/Internet/Bienenkunde/BiWa.nsf/Web_Bundesland/9f88ea300daf57e4c125772000415b89?OpenDocument

Graphen
^^^^^^^
- http://dlr45.aspdienste.de/cgi-bin/tdaa/chart_client.pl?id=1034&period=730&outformat=30&parameters_bien=11,15&parameters_am=001,011&w=600&h=900
- Stunde: http://dlr45.aspdienste.de/cgi-bin/tdaa/chart_client.pl?type=load_chart&refid=BIEN&id=1034&period=144&outformat=20&parameters_bien=3,6&parameters_am=001,011
- Tag: http://dlr45.aspdienste.de/cgi-bin/tdaa/chart_client.pl?type=load_chart&refid=BIEN&id=1034&period=365&outformat=30&parameters_bien=11,15&parameters_am=001,011

Tabellen
^^^^^^^^
- http://www.bienenkunde.rlp.de/Internet/Bienenkunde/BiWa.nsf/web_stationen/bc7b53372a07c446c1257fd80026c31c?OpenDocument
- 5 min.: http://217.5.174.45/cgi-bin/bntracht.single.gen.tbl.m5.pl?w=1034
- Stündlich: http://217.5.174.45/cgi-bin/bntracht.single.gen.tbl.hh.pl?w=1034
- Tag: http://217.5.174.45/cgi-bin/bntracht.single.gen.tbl.dd.pl?w=1034

Blühprognosen
-------------
- http://www.bienenkunde.rlp.de/Internet/global/inetcntr.nsf/dlr_web_full.xsp?src=04716OL52Q&p1=26F62VR54O&p3=952Z07W19V&p4=XF10F330RV
- http://www.bienenkunde.rlp.de/Internet/global/inetcntr.nsf/dlr_web_full.xsp?src=04716OL52Q&p1=title%3DBad+Bergzabern%7E%7Eurl%3D%2FInternet%2FAM%2FNotesAM.nsf%2Famwebwgtbiene%2F81B25F606CB66884C1257171002E8A89%3FOpenDocument&p3=952Z07W19V&p4=XF10F330RV
- http://217.5.174.45/cgi-bin/phaenowgt.pl?c=9&sid=90&pg=07


.. _icarus:

2016-10-06
==========

Volkart Wildermuth: Tiere als Umweltwächter
-------------------------------------------
- http://www.deutschlandfunk.de/sensoren-tiere-als-messstation.676.de.html?dram:article_id=367820
- http://podcast-mp3.dradio.de/podcast/2016/10/06/tiere_als_umweltwaechter_datenschreiber_liefern_eine_dlf_20161006_1648_799d2ef5.mp3

- http://www.deutschlandfunk.de/sensoren-tiere-als-messstation.676.de.html?dram:article_id=367820
- http://www.orn.mpg.de/Abteilung_Wikelski
- https://de.wikipedia.org/wiki/Martin_Wikelski
- http://www.orn.mpg.de/employees/26213/2168
- https://de.wikipedia.org/wiki/International_Cooperation_for_Animal_Research_Using_Space
- http://www.orn.mpg.de/ICARUS
- http://icarusinitiative.org/
- http://www.deutschlandradiokultur.de/icarus-projekt-tiere-beobachten-aus-dem-all.976.de.html?dram:article_id=367123
- http://www.suedkurier.de/region/bodenseekreis-oberschwaben/friedrichshafen/Forschungsprojekt-Icarus-bietet-beeindruckende-Chancen;art372474,8437495

- http://www.deutschlandfunk.de/forschung-aktuell.675.de.html
- http://www.deutschlandfunk.de/podcast-forschung-aktuell.677.de.podcast.xml

ICARUS Initiative
-----------------
- International Cooperation for Animal Research Using Space
- http://icarusinitiative.org/technical-solution
- http://icarusinitiative.org/pre-order-basic-icarus-tags-non-binding
- https://www.movebank.org/
- https://www.movebank.org/node/5788
- https://www.movebank.org/node/34
- https://www.movebank.org/node/15294
- http://www.orn.mpg.de/33343/Movebank

- | MoveVRE (MoveBank - Virtual Research Environment)
  | http://www.ub.uni-konstanz.de/index.php?id=1225&L=1

- | Probing the Impact of Climate Change on Wildlife, Ecosystems
  | http://www.nasa.gov/topics/earth/features/climate_partners.html


.. _esp-link:

2016-10-05
==========
ESP-LINK: Wifi-Serial Bridge w/REST&MQTT

- https://github.com/jeelabs/esp-link
- https://github.com/jeelabs/el-client
- https://github.com/jeelabs/el-client/blob/master/ELClient/examples/mqtt/mqtt.ino#L38
- https://github.com/jeelabs/el-client/blob/master/ELClient/examples/mqtt/mqtt.ino#L54

- https://www.elektormagazine.de/news/mein-weg-ins-iot-11-pretzel-board-als-wlan-dongle
- https://www.elektor.de/pretzel-board-iot-wifi-board

- http://tuanpm.net/rock-solid-esp8266-wifi-mqtt-restful-client-for-arduino/
- https://github.com/tuanpmt/espduino


.. _weather-and-more:

2016-10-04
==========

DWD Python clients
------------------
- https://pypi.python.org/pypi/dwdweather
- https://github.com/marians/dwd-weather
- https://pypi.python.org/pypi/pydwd
- https://github.com/ckaus/pydwd
- https://pypi.python.org/pypi/dwdatareader
- https://github.com/costerwi/dwdatareader/

DWD Python integrations
-----------------------
- smarthome

    - https://github.com/mknx/smarthome/wiki/DWD
    - https://mknx.github.io/smarthome/plugins/dwd.html
    - https://github.com/mknx/smarthome/blob/master/plugins/dwd/__init__.py

DWD Data
--------
- http://www.dwd.de/EN/climate_environment/cdc/cdc_node.html
- http://www.dwd.de/DE/klimaumwelt/cdc/klinfo_systeme/kl_ftpserver/kl_ftpserver_node.html
- ftp://ftp.dwd.de/pub/CDC/observations_germany/phenology/
- ftp://ftp.dwd.de/pub/CDC/observations_germany/phenology/annual_reporters/
- ftp://ftp.dwd.de/pub/CDC/observations_germany/phenology/annual_reporters/fruit/recent/
- ftp://ftp.dwd.de/pub/CDC/observations_germany/phenology/immediate_reporters/fruit/historical/
- ftp://ftp.dwd.de/pub/CDC/grids_germany/annual/
- ftp://ftp.dwd.de/pub/CDC/grids_germany/annual/vegetation_begin/
- ftp://ftp.dwd.de/pub/CDC/grids_germany/annual/vegetation_begin/BESCHREIBUNG_gridsgermany_annual_vegetation_begin_de.pdf
- ftp://ftp-outgoing2.dwd.de/gds/specials/
- ftp://ftp-outgoing2.dwd.de/gds/specials/alerts/
- ftp://ftp-outgoing2.dwd.de/gds/specials/alerts/cap/MS/Z_CAP_C_EDZW_20161002223945_PVW_WWMS59_AOXX.xml
- ftp://ftp-outgoing2.dwd.de/gds/specials/alerts/health/
- ftp://ftp-outgoing2.dwd.de/gds/help/legend_warnings.pdf
- http://icdc.cen.uni-hamburg.de/1/daten/atmosphere/dwd-station.html
- ftp://ftp-cdc.dwd.de/pub/CDC/observations_germany/phenology/annual_reporters/fruit/historical/PH_Beschreibung_Phasendefinition_Jahresmelder_Obst.txt
- http://www.dwd.de/DE/klimaumwelt/klimaueberwachung/phaenologie/produkte/produkte_node.html
- http://www.dwd.de/DE/klimaumwelt/klimaueberwachung/phaenologie/produkte/phaenouhr/phaenouhr.html
- http://www.dwd.de/DE/klimaumwelt/klimaueberwachung/phaenologie/produkte/bienenuhr/bienenuhr.html
- http://www.dwd-shop.de/index.php/default/aktuelles-wetter-vorhersagen/agrarwetter.html
- http://www.dwd.de/DE/klimaumwelt/klimaueberwachung/phaenologie/produkte/langereihen/langereihen.html
- http://www.dwd.de/DE/fachnutzer/freizeitgaertner/2_pflanzenentwicklung/_node.html
- http://www.dwd.de/DE/klimaumwelt/klimaueberwachung/phaenologie/daten_international/daten_international_node.html
- ftp://ftp-cdc.dwd.de/pub/CDC/observations_germany/phenology/immediate_reporters/wild/historical/BESCHREIBUNG_obsgermany_phenology_immediate_reporters_wild_historical_de.pdf
- http://www.dwd.de/DE/leistungen/phaeno_akt/phaenoakt.html
- http://www.dwd.de/DE/leistungen/phaeno_akt/meldestatistik_link.pdf?view=nasPublication&nn=380288
- http://www.dwd.de/DWD/klima/agrar/phaeno/phaeno_tmittel_BEBB.png

DWD More
--------
- https://www.dmi.dk/fileadmin/Rapporter/DKC/DKC09-10_chap09.pdf
- http://www.ecmwf.int/sites/default/files/elibrary/2011/14888-recent-developments-ninjo-workstation.pdf
- http://www.digital-geography.com/advanced-access-free-climate-data-germany-climate-data-center/
- https://www.bmvi-data-run.de/datensaetze/dateien/Phaenologische_Daten.pdf
- http://www.adv-sci-res.net/11/93/2014/asr-11-93-2014.pdf
- http://www.dwd.de/DE/klimaumwelt/ku_beratung/landwirtschaft/ku_best_und_bio_messungen/ku_lw_messungen_node.html
- http://www.dwd.de/DE/fachnutzer/freizeitgaertner/2_pflanzenentwicklung/_node.html
- | Weather Request and Distribution System
  | https://werdis.dwd.de/werdis/

Open Data
---------
- | Open Data - Freie Daten und Dienste des BKG
  | http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=0&gdz_unt_zeile=0&gdz_user_id=0
- https://igs.bkg.bund.de/
- https://www.bkg.bund.de/DE/Produkte-und-Services/Shop-und-Downloads/Webdienste/webdienste.html;jsessionid=111AF57A2A02C1D30D41EB81201B02AF.live21

Phenological databases and more
-------------------------------
- Fluxnet, Fluxdata
    - http://fluxnet.fluxdata.org/about/regional-networks/
    - http://fluxnet.fluxdata.org/data/fluxnet2015-dataset/
    - http://fluxnet.fluxdata.org/data/fluxnet2015-dataset/data-processing/
    - http://www.fluxdata.org/DataInfo/default.aspx
    - http://www.fluxdata.org/DataInfo/Dataset%20Doc%20Lib/FLUXNET_phenophase_protocol.pdf
    - https://cran.r-project.org/web/packages/pheno/pheno.pdf

- | Paneuropäische Phänologische Datenbank (PEP)
  | http://www.dwd.de/DE/klimaumwelt/klimaueberwachung/phaenologie/daten_international/pep/pep.html?nn=575710
  | http://www.zamg.ac.at/pep725/
- | Globales-Phänologisches-Monitoring-Netzwerk (GPM)
  | http://www.dwd.de/DE/klimaumwelt/klimaueberwachung/phaenologie/daten_international/gpm/gpm.html?nn=575710
- | GPM program of the HU Berlin: Global Phenological Monitoring
  | http://gpm.hu-berlin.de/gpm/faces/list_planttypes.xhtml
- | PPODB: Plant-Phenological Online Database
  | http://www.ppodb.de/
  | http://rumo.biologie.hu-berlin.de/PPODB/main/docu
  | http://rumo.biologie.hu-berlin.de/PPODB/static/documentation/DescriptionPPODB.pdf
  | http://www.sysbiolab.net/
  | The plant phenological online database (PPODB): an online database for long-term phenological data
  | https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3745622/
  | http://www.med.uni-magdeburg.de/fme/sysbio/wp-content/uploads/papers/Dierenbach2013IJB.pdf
- http://www.dwd.de/DE/klimaumwelt/klimaueberwachung/phaenologie/daten_international/tierphaeno/tierphaeno.html?nn=575710
- | PhenoWatch - Citizen Science seit 1851
  | http://www.phenowatch.at/
  | http://www.phenowatch.at/beobachtung/phaenologischer-kalender.html
  | http://www.phenowatch.at/beobachtung/beobachtungsnetz.html

Other environmental monitoring and data collection projects
-----------------------------------------------------------
- https://www.pik-potsdam.de/research/publications/pikreports/.files/pr78.pdf
- http://ipg.hu-berlin.de/ipg/faces/list_stations.xhtml
- http://gpm.hu-berlin.de/
- http://www.biometeorology.org/
- http://www.am.rlp.de/
- http://www.am.rlp.de/Internet/AM/inetcntrBY.nsf
- http://www.am.rlp.de/Internet/global/inetcntr.nsf/dlr_web_full.xsp?src=YSK1DNJ886&p1=27156DXG8H&p3=5PW3P32TF7&p4=XF10F330RV
- http://www.bienenkunde.rlp.de/
- http://www.bienenkunde.rlp.de/Internet/global/inetcntr.nsf/dlr_web_full.xsp?src=YSK1DNJ886&p1=27156DXG8H&p3=5PW3P32TF7&p4=XF10F330RV
- http://wetter-bw.de/Internet/AM/inetcntrBw.nsf/cuhome.xsp?src=VO374H97W1&p1=9N4PQJQLT5&p3=MHLF51ETRP


.. _esp32-development:

2016-10-03
==========

Hardware
--------
- | Espressif ESP32 Development Board
  | https://www.adafruit.com/products/3269
- http://hackaday.com/2016/09/15/esp32-hands-on-awesome-promise/
- https://twitter.com/tuanpmt
- https://github.com/espressif/esp-idf
- https://espressif.com/en/producttype/esp-wroom-32
- http://www.pighixxx.com/test/2016/08/wroom32/
- https://espressif.com/en/products/hardware/esp32/overview

Software
--------
- https://github.com/espressif/arduino-esp32
- http://www.instructables.com/id/ESP32-With-Arduino-IDE/?ALLSTEPS
- https://www.pubpub.org/pub/esp32-osx-setup
- http://tuanpm.net/
- https://github.com/nodemcu/nodemcu-firmware
- http://nodemcu.com/
- http://www.eluaproject.net/
- https://nodemcu.readthedocs.io/en/master/en/upload/
- http://esp8266.ru/esplorer/
- https://github.com/4refr0nt/ESPlorer
- https://github.com/4refr0nt/luatool

USB Dongles
-----------
- http://www.whitefordresearch.com/products/espdoogle-esp8266-usb-dongle
- http://41j.com/blog/2016/08/the-wifi-doogle/
- http://www.whitefordresearch.com/products/espusb-esp8266-usb-sd-card-interface-preorder
- http://41j.com/blog/2016/10/esp32-usb-stick-esp32-ch340g-buck-conv-sd-card/
- http://41j.com/blog/2016/08/the-esp8266-and-sd-cards/

Resources
---------
- http://esp31.de/
- http://www.esp32.de/
- http://esp32.com/
- http://esp32.net/
- https://twitter.com/ESP32net
- http://www.cnx-software.com/2016/09/02/espressif-esp32-wifi-bluetooth-soc-is-now-up-for-sale-for-2-85/


2016-09-16
==========

OSBH
----
- http://www.talkshopbot.com/forum/showthread.php?19354-Open-Source-Bee-Hives
- http://www.shareable.net/blog/will-open-source-beehives-solve-colony-collapse
- http://www.wedemain.fr/Peut-on-sauver-les-abeilles-grace-a-l-open-source_a389.html
- https://blog.arduino.cc/2014/03/19/support-open-source-beehives/
- http://www.open-electronics.org/saving-bees-in-open-source-interview-to-tristan-copley-smith-and-open-source-beehives-project/
- https://www.indiegogo.com/projects/open-source-beehives
- https://github.com/opensourcebeehives/
- http://www.heise.de/make/meldung/OSBH-Maker-retten-die-Bienen-2150227.html
- https://permies.com/t/34647/bees/critters/Open-Source-Beehives-Indiegogo-project
- https://boingboing.net/2014/03/10/crowdfunding-a-smart-open-sou.html
- http://permaculturenews.org/2014/03/19/open-source-beehives/

Misc
----
- https://www.siliconrepublic.com/innovation/new-tracking-device-developed-to-better-understand-bee-bee-haviour
- https://www.siliconrepublic.com/earth-science/ireland-saving-the-bees-plan-to-tackle-pollinator-decline
- https://www.pinterest.com/pin/407294360029073155/
- https://blog.adafruit.com/2016/05/24/open-source-beehives-incorporate-smart-citizen-platform-for-iot-hive-monitoring-iotuesday-citizenscience/


2016-06-11
==========
- http://urbanbeelab.okno.be/doku.php?id=bee_monitoring_technology


2016-06-08
==========
- http://shop.sodaq.com/en/gprsbee-rev6.html
- http://www.open-electronics.org/how-to-send-and-receive-sms-with-gsmgprs-gps-shield/
- http://www.tamberg.org/mtc/2014/IoTConnectivity.txt
- http://wireless.ictp.it/rwanda_2015/labs/Lab_3_manual.pdf
- http://beesource.com/build-it-yourself/apidictor/


2016-06-05
==========

Geophone
--------
- | Code and Arduino shield for a frequency analyzer for geometric sensors
  | https://github.com/olewolf/geophone
- | Sensor SM-24 from Mitcham Industries
  | http://www.mitchamindustries.com/products-for-lease/land-seismic/sensors/sensor-sm-24/
- | SM-24 Geophone Element Data Sheet
  | http://dlnmh9ip6v2uc.cloudfront.net/datasheets/Sensors/Accelerometers/DS_SEN_121007SM24.pdf
- | Geophone - SM-24 @ Sparkfun
  | https://www.sparkfun.com/products/11744
- | Geophone - SM-24 @ Watterott
  | http://www.watterott.com/de/Geophone-SM-24


2016-06-03
==========
- `White Paper: Routing und Netzwerktopologien für 802.15.4 Low Power Geräte <https://www.dresden-elektronik.de/fileadmin/Downloads/Dokumente/white_paper/routing_and_network_topologies-WP-de.pdf>`_
- `6LoWPAN Einführung <https://www.dresden-elektronik.de/funktechnik/products/software/sources/6lowpan/>`_
- `White Paper: Grundlagen 6LoWPAN <https://www.dresden-elektronik.de/fileadmin/Downloads/Dokumente/white_paper/fundamentals_6lowpan-WP-de.pdf>`_


2016-06-02
==========

More LoRaWAN / LMIC
-------------------
- http://forum.thethingsnetwork.org/t/anyone-used-the-im880b-l/1644/4
- http://forum.thethingsnetwork.org/t/lmic-1-51-fitting-in-arduino-atmega-328/1239
- http://forum.thethingsnetwork.org/t/the-things-uno-usb-problem/333/11
- http://forum.thethingsnetwork.org/t/esp8266-rfm95w-node-how-long-should-a-send-take/1890/2
- http://forum.thethingsnetwork.org/t/arduino-lmic-library-updated/1295/9
- http://forum.thethingsnetwork.org/t/lora-featherwing-development-breakout/1406/2

    - https://blog.adafruit.com/2016/03/03/lora-featherwing-development-breakout/
    - http://syncchannel.blogspot.de/2016/02/lora-featherwing-development-breakout.html

- http://www.wireless-solutions.de/products/radiomodules/im880b-l

TheThingsNetwork
----------------
- http://staging.thethingsnetwork.org/wiki/Backend/Overview

LoRa gateway
------------
- http://forum.thethingsnetwork.org/t/gateway-for-mexico-city/284/6

    - http://www.multitech.com/models/94557202LF
    - http://www.multitech.com/models/99999107LF
    - http://www.link-labs.com/product/lora-enabled-m2m-gateways/

LoRa with Arduino
-----------------
- https://github.com/allthingstalk/arduino-lora
- https://github.com/allthingstalk/arduino-lora/blob/master/ATT_Lora_IOT/examples/demo/demo.ino

LoRa with ESP8266
-----------------
- | Node with ESP8266 and RFM95W
  | http://forum.thethingsnetwork.org/t/node-with-esp8266-and-rfm95w/1002


Misc
----
- http://sodaq.com/
- https://github.com/SodaqMoja
- http://support.sodaq.com/
- https://lowpowerlab.com/moteino/#lora

LoRaWAN modules
---------------
- http://webshop.imst.de/im880b-l-long-range-radio-module.html
- https://www.microchip.com/wwwproducts/en/RN2483
- http://www.microchip.com/forums/m884258.aspx
- http://www.embit.eu/products/wireless-modules/emb-lr1272/


2016-06-01
==========

Misc
----
- https://loriot.io/
- https://www.pine64.com/
- https://www.i-keys.de/de/Transponder/125-khz/EM4102-Uni/E675-1.58-Uni.html
- | CircuitHub - Scalable Electronics Manufacturing
  | https://circuithub.com/

UEXT
----
- https://en.wikipedia.org/wiki/UEXT
- https://www.olimex.com/Products/Modules/UEXT/
- https://www.olimex.com/Products/Modules/RF/
- https://www.olimex.com/Products/Modules/RF/MOD-MRF89-868/


2016-05-31
==========
- Grafana drawing performance

    - http://dygraphs.com/
    - https://github.com/danvk/dygraphs
    - https://github.com/flot/flot/issues/1149
    - https://github.com/grafana/grafana/issues/643
    - http://blog.dygraphs.com/2012/08/html5-charting-tool-performance.html
    - http://stackoverflow.com/questions/19871637/dygraph-renders-9-times-slower-with-3-series-compared-to-single-series
    - http://stackoverflow.com/questions/22588831/javascript-big-data-visualisation
    - https://github.com/sveinn-steinarsson/flot-downsample/


2016-05-30
==========

LoRa COTS
---------
- https://developer.mbed.org/platforms/NAMote-72/
- https://developer.mbed.org/teams/Semtech/wiki/NAMote-72-wiki
- http://www.digikey.com/product-search/en?keywords=sx1272LM1CEP
- https://developer.mbed.org/components/SX1276MB1xAS/
- https://developer.mbed.org/teams/Semtech/code/
- https://developer.mbed.org/questions/61789/How-does-the-NAMote72-interface-with-Ard/
- https://developer.mbed.org/platforms/MTS-mDot-F411/
- http://www.multitech.com/lz/mbed-mdot

GPS
---
- https://github.com/mikalhart/TinyGPSPlus

ESP8266
-------
- http://www.esp8266.nu/index.php/ESPEasy
- https://github.com/someburner/esp-rfm69
- https://github.com/someburner/esp-rfm69/wiki/MQTT
- https://github.com/tuanpmt/esp_mqtt



2016-05-25
==========

BERadio
-------
- http://johan.kanflo.com/the-aaduino/
- https://github.com/kanflo/aaduino
- http://johan.kanflo.com/meet-the-branly-iot-platform/
- https://github.com/kanflo/branly-iot/blob/master/branly_node/branly_node.ino

LoRaWAN
-------
- https://www.lora-alliance.org/What-Is-LoRa/Technology
- https://en.wikipedia.org/wiki/LPWAN
- https://www.cooking-hacks.com/documentation/tutorials/lorawan-for-arduino-raspberry-pi-waspmote-868-900-915-433-mhz/
- https://www.cooking-hacks.com/lorawan-module-for-arduino-raspberry-pi-868-mhz-xbee-socket
- http://blog.trifork.com/2016/03/04/from-the-trenches-lora-lorawan-with-the-lorabee/

    - http://www.wireless-solutions.de/products/radiomodules/ic880a.html
    - http://www.wireless-solutions.de/images/stories/downloads/Radio%20Modules/iC880A/iC880A_QuickStartGuide.pdf
    - http://webshop.imst.de/ic880a-spi-lorawan-concentrator-868mhz.html
    - https://www.thingiverse.com/thing:1531261
    - https://github.com/ttn-zh/ic880a-gateway/wiki

LMIC - IBM "LoRa WAN in C"
--------------------------

Original
^^^^^^^^
- https://www.research.ibm.com/labs/zurich/ics/lrsc/
- https://www.research.ibm.com/labs/zurich/ics/lrsc/lmic.html

Ports
^^^^^
- | LoraWAN-in-C library, adapted to run under the Arduino environment
  | https://github.com/matthijskooijman/arduino-lmic
- | This is a port of the original lmic HAL for STM32 microcontroller to EFM32.
  | https://github.com/mirakonta/lmic
  | https://de.wikipedia.org/wiki/EFM32

RadioHead
---------
- http://www.airspayce.com/mikem/arduino/RadioHead/
- https://github.com/Yveaux/RadioHead
- https://github.com/PaulStoffregen/RadioHead

Misc
----
- http://www.decentlab.com/
- http://johan.kanflo.com/a-versatile-esp8266-development-board/


2016-05-20
==========

LoRa gateway DIY
----------------
- Awesome research by `Congduc Pham <http://cpham.perso.univ-pau.fr/>`_, University of Pau, France:

    - `A DIY low-cost LoRa gateway <http://cpham.perso.univ-pau.fr/LORA/RPIgateway.html>`_
      based on Raspberry PI and `ThingSpeak <https://thingspeak.com/>`_ or `Freeboard.IO <https://freeboard.io>`_
    - `A low-power, low-cost image sensor board <http://cpham.perso.univ-pau.fr/WSN-MODEL/tool-html/imagesensor.html>`_
    - `Low-power, long-range WAN for IoT: a technology overview <http://cpham.perso.univ-pau.fr/LORA/WAZIUP/RESSACS16-LPWAN-review.pdf>`_,
      Talk at RESSACS'2016, IRD Bondy, May 10th 2016.
    - https://github.com/CongducPham/LowCostLoRaGw
    - https://github.com/CongducPham/LowCostLoRaGw/blob/master/Arduino/Arduino_LoRa_temp/Arduino_LoRa_temp.ino
    - https://github.com/CongducPham/LowCostLoRaGw/blob/master/Arduino/Arduino_LoRa_Gateway/Arduino_LoRa_Gateway.ino
    - https://github.com/CongducPham/LowCostLoRaGw/blob/master/Raspberry/lora_gateway.cpp
    - https://github.com/CongducPham/LowCostLoRaGw/blob/master/Raspberry/post_processing_gw.py

- `Building a Raspberry Pi Powered LoRaWAN Gateway <http://www.rs-online.com/designspark/electronics/eng/blog/building-a-raspberry-pi-powered-lorawan-gateway>`_.

- `Make your own 200€ LoRa gateway powered by a RaspberryPi and a Multitech mCard-LoRa module <https://github.com/mirakonta/lora_gateway/wiki>`_.


LoRa gateway COTS
-----------------
- `NAMote72 <https://developer.mbed.org/teams/Semtech/wiki/NAMote-72-wiki>`_,
  Semtech's North America LoRaMote mbed Platform based on the SX1272 LoRa Transceiver.


Misc
----
- http://kotahi.net/

    - http://kotahi.net/sensor-data/
    - http://kotahi.net/test-network-part-1/


2016-04-12
==========
- https://en.wikipedia.org/wiki/Akbil_%28smart_ticket%29


2016-04-10
==========
- https://github.com/sparkfun/OpenScale


2016-03-27
==========
- https://blog.cesanta.com/esp8266-superfast-flashing-flash-esp-in-5-seconds
    - https://news.ycombinator.com/item?id=11342958


2016-03-06
==========

MXCHIP EMW3162 and EMW3165
--------------------------
- http://www.cnx-software.com/2015/03/26/mxchip-emw3162-is-a-10-low-power-wi-fi-module-for-iot-applications/
- http://www.cnx-software.com/2015/07/17/mxchip-emw3165-is-an-8-cefcc-certified-module-with-a-stm32f4-cortex-m4-mcu/
- http://www.emw3165.com/
- http://hackaday.com/2015/07/13/new-part-day-the-esp8266-killer/
- http://www.seeedstudio.com/depot/EMW3165-p-2488.html

Wear-leveling
-------------
- | Wear-leveled SPI flash file system for embedded devices
  | https://github.com/pellepl/spiffs


IEEE 802.15.4
-------------

Intro
^^^^^
- https://en.wikipedia.org/wiki/IEEE_802.15.4
- https://de.wikipedia.org/wiki/IEEE_802.15.4
- https://www.kernel.org/doc/Documentation/networking/ieee802154.txt

Overview
^^^^^^^^
- | The Sensor Network Museum
  | http://www.snm.ethz.ch/

BTnodes
^^^^^^^
A Distributed Environment for Prototyping Ad Hoc Networks

- http://www.btnode.ethz.ch/

TelosB
^^^^^^
Open-source TelosB / Tmote Sky platform design developed and published by the University of California, Berkeley.
Usually compatible with TinyOS 2.x & ContikiOS.

- http://www.snm.ethz.ch/Projects/TmoteSky
- http://tmote-sky.blogspot.de/
- http://wirelesssensornetworks.weebly.com/1/post/2013/08/tmote-sky.html
- http://www.advanticsys.com/shop/mtmcm5000msp-p-14.html
- https://www.youtube.com/watch?v=3G5IyzN8kiE

HopeRF RFM73
^^^^^^^^^^^^
- http://rf-store.com/index.php?view=2&pv=showart&prod_id=RFM73-S
- http://rf-store.com/media/pdf/rfm73.pdf



6LoWPAN
-------

Intro
^^^^^
- https://en.wikipedia.org/wiki/6LoWPAN
- http://6lowpan.tzi.org/
- https://de.wikipedia.org/wiki/Routing_Protocol_for_Low_power_and_Lossy_Networks

Linux
^^^^^
- Raspberry Pi 802.15.4 radio

    - http://openlabs.co/OSHW/Raspberry-Pi-802.15.4-radio
    - http://openlabs.co/store/Raspberry-Pi-802.15.4-radio

- Kernel (linux-wpan)

    - http://wpan.cakelab.org/
    - https://github.com/linux-wpan/linux-wpan
    - https://github.com/linux-wpan/wpan-tools
    - https://github.com/analogdevicesinc/linux/tree/xcomm_zynq/Documentation/devicetree/bindings/net/ieee802154
    - | Status Report for IEEE 802.15.4 and 6LoWPAN in Linux
      | http://events.linuxfoundation.org/sites/events/files/slides/ELC-US-2015.pdf

- Howto

    - https://openlabs.co/blog/archives/1-6LoWPAN-kernel-on-a-Raspberry-Pi
    - https://github.com/RIOT-OS/RIOT/wiki/How-to-install-6LoWPAN-Linux-Kernel-on-Raspberry-Pi


Chips
^^^^^
- Atmel AT86RF230, AT86RF233

    - http://www.atmel.com/devices/AT86RF233.aspx
    - http://www.atmel.com/Images/Atmel-8351-MCU_Wireless-AT86RF233_Datasheet.pdf
    - https://github.com/analogdevicesinc/linux/blob/xcomm_zynq/Documentation/devicetree/bindings/net/ieee802154/at86rf230.txt

- Analog Devices ADF7242

    - http://www.analog.com/en/products/rf-microwave/integrated-transceivers-transmitters-receivers/low-power-rf-transceivers/adf7242.html
    - http://www.analog.com/en/design-center/evaluation-hardware-and-software/evaluation-boards-kits/EVAL-ADF7242-PMOD.html#eb-overview
    - http://www.analog.com/media/en/technical-documentation/application-notes/AN-1151.pdf
    - https://wiki.analog.com/resources/eval/user-guides/circuits-from-the-lab/adf7242-pmod
    - https://wiki.analog.com/resources/tools-software/linux-drivers/networking-mac802154/adf7242
    - http://www.microwavejournal.com/articles/print/9648-a-2-4-ghz-low-power-short-range-transceiver
    - http://www.electroniccircuitsdesign.com/radio-circuits/adf7242-low-power-transceiver-circuit-design.html
    - https://www.flickr.com/photos/csete/sets/72157627709627619/
    - https://github.com/analogdevicesinc/linux/blob/xcomm_zynq/Documentation/devicetree/bindings/net/ieee802154/adf7242.txt
    - http://www.spinics.net/lists/linux-wpan/msg03292.html
    - http://www.spinics.net/lists/linux-wpan/msg03319.html
    - https://github.com/linux-wpan/linux-wpan/issues/25

- Texas Instruments CC2520

    - http://www.ti.com/product/CC2520
    - https://github.com/analogdevicesinc/linux/blob/xcomm_zynq/Documentation/devicetree/bindings/net/ieee802154/cc2520.txt

- Texas Instruments CC2531

- Microchip MRF24J40

    - http://www.microchip.com/wwwproducts/en/MRF24J40
    - https://github.com/analogdevicesinc/linux/blob/xcomm_zynq/Documentation/devicetree/bindings/net/ieee802154/mrf24j40.txt


Devices / Modules
^^^^^^^^^^^^^^^^^
- http://wpan.cakelab.org/#_supported_hardware
- | SAM R21 Xplained Pro Evaluation Kit
  | http://www.atmel.com/tools/ATSAMR21-XPRO.aspx

- USB, CC2531 based

    - http://de.aliexpress.com/wholesale?catId=0&initiative_id=&SearchText=CC2531+USB
    - http://de.aliexpress.com/item/Zigbee-usb-dongle-cc2531-cc2530-bag-module-wireless-keyboard/1763694083.html
    - http://de.aliexpress.com/item/5PCS-LOT-cc2530-cc2531-zigbee-USB-dongle-free-shipping/32235507350.html
    - http://de.aliexpress.com/item/5-pcs-lot-free-shipping-usb-Zigbee-CC2531-Dongle-Sniffer/32508840158.html
    - http://de.aliexpress.com/item/Free-Shipping-1pc-CC2531-USB-Dongle-F256-protocol-analyzer-Ethereal-packet-sniffer/1230103271.html

- USB, AT86RF230 based

    - https://www.element14.com/community/docs/DOC-67532/l/avr-rz-usb-stick-module

- USB, AT86RF231 based

    - http://downloads.qi-hardware.com/people/werner/wpan/web/


RIOT OS
-------
- http://www.riot-os.org/
- https://github.com/RIOT-OS/RIOT
- https://github.com/RIOT-OS/RIOT/wiki/Creating-your-first-RIOT-project
- https://github.com/RIOT-OS/RIOT/wiki/Virtual-riot-network
- https://github.com/RIOT-OS/RIOT/wiki/Family%3A-native


2016-03-03
==========
- | ESP8266+OpenWRT+Mosquitto+mqttwarn - ThingSpeak, EMAIL, Android, iOS, Twitter, CloudMQTT
  | https://www.youtube.com/watch?v=goHvyJ2AORA
- | http://www.pulp-platform.org/
  | https://news.ycombinator.com/item?id=11216251
- | What 50,000 watts of RF energy sounds like through a jumper cable
  | https://news.ycombinator.com/item?id=11078533
- | How To Listen To The Radio Using Plants
  | https://www.youtube.com/watch?v=82s5Q3GIO9I
  | https://news.ycombinator.com/item?id=11078533
- https://learn.adafruit.com/adafruit-fona-mini-gsm-gprs-cellular-phone-module/fm-radio-fona800
- https://www.hackster.io/chipmc/cellular-data-logger-1e328b
- http://ubidots.com/docs/devices/FONA.html
- http://ubidots.com/
- https://learn.adafruit.com/fona-tethering-to-raspberry-pi-or-beaglebone-black/usage
- https://learn.adafruit.com/usb-dc-and-solar-lipoly-charger
- http://blog.atmel.com/2015/09/30/exclusive-ladyada-shows-off-adafruits-brand-spankin-new-feather-board/
- http://blog.atmel.com/2015/11/16/adafruit-debuts-the-feather-32u4-adalogger/
- https://blog.adafruit.com/2015/11/11/new-product-adafruit-feather-32u4-adalogger/
- https://www.adafruit.com/product/2795
- http://www.exp-tech.de/adafruit-feather-huzzah-with-esp8266-wifi
- http://distressnet.nfshost.com/about


2016-02-26
==========
- Researchers create super-efficient Wi-Fi aka. "Synthesize WiFi by using baseband reflection, consuming only 15-60 uW"

    - http://arstechnica.com/information-technology/2016/02/researchers-create-super-low-power-wi-fi/
    - via: https://news.ycombinator.com/item?id=11162490

- A Note On IoT Communications Backhaul

    - http://www.earth.org.uk/note-on-IoT-comms-backhaul.html



****
2015
****

2015-10
=======

LoRaWAN
-------
- https://en.wikipedia.org/wiki/LoRaWAN
- https://www.lora-alliance.org/
- https://www.cooking-hacks.com/documentation/tutorials/extreme-range-lora-sx1272-module-shield-arduino-raspberry-pi-intel-galileo/
- http://thethingsnetwork.org/wiki/Hardware/OverviewNodes
- https://github.com/things4u/LoRa-LMIC-1.51
- http://www.libelium.com/products/waspmote/


2015-08
=======

DTN
---
- https://trac.ibr.cs.tu-bs.de/project-cm-2012-ibrdtn/
- https://github.com/ibrdtn/ibrdtn/blob/master/ibrdtn/daemon/etc/ibrdtnd.conf
- https://trac.ibr.cs.tu-bs.de/project-cm-2012-ibrdtn/wiki/howto-autoip-openwrt
- http://distressnet.nfshost.com/about
- https://code.google.com/archive/p/distressnet/


2015-06
=======

ESP8266
-------
- https://en.wikipedia.org/wiki/NodeMCU
- https://github.com/esp8266/Arduino
- https://github.com/esp8266/esp8266-wiki/wiki/Toolchain

Xtensa
------
- https://en.wikipedia.org/wiki/Tensilica
- http://ip.cadence.com/ipportfolio/tensilica-ip/xtensa-customizable
- http://ip.cadence.com/ipportfolio/tensilica-ip
- https://github.com/jcmvbkbc/gcc-xtensa
- https://gcc.gnu.org/onlinedocs/gcc-4.8.1/gcc/Xtensa-Options.html


2015-09
=======
- http://makezine.com/projects/bees-sensors-monitor-hive-health/
- https://data.sparkfun.com/streams/wpbq2p0N1rig8WJZRWpO
- https://analog.io/#/s8Q
- https://github.com/sparkfun/Load_Sensor_Combinator
- https://github.com/sparkfun/OpenScale


2014-09-23
==========
- http://hackaday.com/2014/09/23/thp-semifinalist-honeybee-hive-monitoring/
- https://hackaday.io/project/1741-honeybee-hive-monitoring
- http://www.apitronics.com/
- https://www.kickstarter.com/projects/lthiery/apitronics-wireless-platform
- http://wiki.apitronics.com/
- https://groups.google.com/forum/?hl=en#!topic/apitronicsforum/
- https://farmhub.net/
