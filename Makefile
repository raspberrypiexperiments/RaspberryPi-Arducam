dependencies:
	sudo install -m 644 MIPI_Camera/RPI/lib/libarducam_mipicamera.so /usr/local/lib/
	sudo cp MIPI_Camera/RPI/arducam_mipicamera.h /usr/local/include
	sudo ldconfig
	bash MIPI_Camera/RPI/enable_i2c_vc.sh

install: dependencies
    cd gst-arducamsrc && ./autogen.sh --prefix=/usr/local --libdir=/usr/local/lib/arm-linux-gnueabihf/ && sudo make install

uninstall:
    sudo rm -rf /usr/local/lib/libarducam_mipicamera.so
    sudo rm -rf /usr/local/include/arducam_mipicamera.h
	