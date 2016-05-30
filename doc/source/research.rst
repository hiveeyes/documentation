.. include:: _resources.rst

.. _hiveeyes-research:

########
Research
########


****
2016
****


2016-05-20
==========

LoRa
----
- Awesome research by `Congduc Pham <http://cpham.perso.univ-pau.fr/>`_, University of Pau, France:

    - `A DIY low-cost LoRa gateway <http://cpham.perso.univ-pau.fr/LORA/RPIgateway.html>`_
      based on Raspberry PI and `ThingSpeak <https://thingspeak.com/>`_ or `Freeboard.IO <https://freeboard.io>`_
    - `A low-power, low-cost image sensor board <http://cpham.perso.univ-pau.fr/WSN-MODEL/tool-html/imagesensor.html>`_
    - `Low-power, long-range WAN for IoT: a technology overview <http://cpham.perso.univ-pau.fr/LORA/WAZIUP/RESSACS16-LPWAN-review.pdf>`_,
      Talk at RESSACS'2016, IRD Bondy, May 10th 2016.

- .. seealso::

    - `Building a Raspberry Pi Powered LoRaWAN Gateway <http://www.rs-online.com/designspark/electronics/eng/blog/building-a-raspberry-pi-powered-lorawan-gateway>`_.
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
~~~~~
- https://en.wikipedia.org/wiki/IEEE_802.15.4
- https://de.wikipedia.org/wiki/IEEE_802.15.4
- https://www.kernel.org/doc/Documentation/networking/ieee802154.txt

Overview
~~~~~~~~
- | The Sensor Network Museum
  | http://www.snm.ethz.ch/

BTnodes
~~~~~~~
A Distributed Environment for Prototyping Ad Hoc Networks

- http://www.btnode.ethz.ch/

TelosB
~~~~~~
Open-source TelosB / Tmote Sky platform design developed and published by the University of California, Berkeley.
Usually compatible with TinyOS 2.x & ContikiOS.

- http://www.snm.ethz.ch/Projects/TmoteSky
- http://tmote-sky.blogspot.de/
- http://wirelesssensornetworks.weebly.com/1/post/2013/08/tmote-sky.html
- http://www.advanticsys.com/shop/mtmcm5000msp-p-14.html
- https://www.youtube.com/watch?v=3G5IyzN8kiE

HopeRF RFM73
~~~~~~~~~~~~
- http://rf-store.com/index.php?view=2&pv=showart&prod_id=RFM73-S
- http://rf-store.com/media/pdf/rfm73.pdf



6LoWPAN
-------

Intro
~~~~~
- https://en.wikipedia.org/wiki/6LoWPAN
- http://6lowpan.tzi.org/
- https://de.wikipedia.org/wiki/Routing_Protocol_for_Low_power_and_Lossy_Networks

Linux
~~~~~
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
~~~~~
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
~~~~~~~~~~~~~~~~~
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
