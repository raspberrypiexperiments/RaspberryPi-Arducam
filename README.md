# RaspberryPi-Arducam

## Overview

This repository provides enables to install GStreamer plugin for **arducamsrc**.

## Dependencies

This repository depends on:
* [RaspberryPi-GStreamer-1.0](https://github.com/raspberrypiexperiments/RaspberryPi-GStreamer-1.0) on Buster,
* No dependency on Bullseye.

## Known supported Raspberry Pi

* Raspberry Pi 3B,
* Raspberry Pi 4B.

## Known supported OS

* Buster,
* Bullseye.

## Installation

Installation procedure:

```bash
git clone --recurse-submodules -j$(nproc) https://github.com/raspberrypiexperiments/RaspberryPi-Arducam.git
```
```bash
cd RaspberryPi-Arducam
```
```bash
make install
```

## Uninstalaltion

Uninstallation procedure:

```bash
make uninstall
```
```bash
cd ..
```
```bash
sudo rm -rf RaspberryPi-Arducam
```

## License

MIT License

Copyright (c) 2021-2022 Marcin Sielski <marcin.sielski@gmail.com>
