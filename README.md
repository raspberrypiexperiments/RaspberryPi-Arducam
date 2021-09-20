# RaspberryPi-ArduCAM

## Overview

This repository provides enables to install GStreamer plugin for **arducamsrc**.

## Dependencies

This repository depends on:
* [RaspberryPi-GStreamer-1.0](https://github.com/raspberrypiexperiments/RaspberryPi-GStreamer-1.0).

## Known supported Raspberry Pi

* Raspberry Pi 4B.

## Installation

Installation procedure:

```bash
git clone --recurse-submodules -j$(nproc) https://github.com/raspberrypiexperiments/RaspberryPi-ArduCAM.git
cd RaspberryPi-ArduCAM
make install
```

## Uninstalaltion

Uninstallation procedure:

```bash
make uninstall
cd ..
sudo rm -rf RaspberryPi-ArduCAM
```

## License

MIT License

Copyright (c) 2021 Marcin Sielski <marcin.sielski@gmail.com>
