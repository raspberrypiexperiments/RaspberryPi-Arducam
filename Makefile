# MIT License
#
# Copyright (c) 2021 Marcin Sielski <marcin.sielski@gmail.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

PYTHONVERION=`python --version | cut -d' ' -f2 | cut -d'.' -f1,2`

dependencies:
	sudo install -m 644 MIPI_Camera/RPI/lib/libarducam_mipicamera.so /usr/local/lib/
	sudo cp MIPI_Camera/RPI/arducam_mipicamera.h /usr/local/include
	sudo mkdir -p /usr/local/lib/python$(PYTHONVERION)/dist-packages/arducam_mipicamera
	sudo cp MIPI_Camera/RPI/python/arducam_mipicamera.py /usr/local/lib/python$(PYTHONVERION)/dist-packages/arducam_mipicamera
	echo PYTHONPATH=/usr/local/lib/python$(PYTHONVERION)/dist-packages:$$PYTHONPATH > ~/.bashrc
	source ~/.bashrc
	sudo ldconfig
	bash MIPI_Camera/RPI/enable_i2c_vc.sh

install: dependencies
	cd gst-arducamsrc && ./autogen.sh --prefix=/usr/local --libdir=/usr/local/lib/arm-linux-gnueabihf/ && sudo make install

uninstall:
	sudo rm -rf /usr/local/lib/libarducam_mipicamera.so
	sudo rm -rf /usr/local/include/arducam_mipicamera.h
	sudo rm -rf /usr/local/lib/python$(PYTHONVERION)/dist-packages/arducam_mipicamera
