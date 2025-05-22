.PHONY: build clean

build:
	. /opt/ros/humble/setup.sh && \
	colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
clean:
	rm -rf build install log
