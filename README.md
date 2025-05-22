# ROS 2 Rust Example Workspace

This is an example ROS 2 workspace demonstrating how to use [ros2_rust](https://github.com/ros2-rust/ros2_rust) to develop robotics applications in Rust. It showcases the integration between the `rclrs` client library and various ROS 2 interface packages.

This workspace demonstrates:
- How to set up a ROS 2 Rust development environment
- Automatic discovery and binding generation for ROS interface packages
- Integration between Rust code and standard ROS 2 message types
- Examples of publishers, subscribers, clients, and services in Rust

## What's Included

### Core ROS 2 Rust Packages
- **`rclrs`** - The main ROS 2 client library for Rust
- **`rosidl_runtime_rs`** - Runtime utilities for ROS message types
- **`rosidl_generator_rs`** - Code generator for Rust bindings from ROS interfaces

### ROS 2 Interface Packages
- **Common Interfaces**: `std_msgs`, `sensor_msgs`, `geometry_msgs`, `nav_msgs`
- **RCL Interfaces**: `builtin_interfaces`, `action_msgs`, `lifecycle_msgs`
- **Examples**: `example_interfaces`, `test_interface_files`
- **Vision**: `vision_msgs`
- **Additional**: `unique_identifier_msgs`, `shape_msgs`, `trajectory_msgs`, `visualization_msgs`

### Examples
- Minimal publisher/subscriber (`minimal_pub_sub`)
- Client/service examples (`minimal_client_service`)
- Custom message demonstration (`message_demo`)
- Simple pub/sub examples (`rust_pubsub`)

## How It Works

When you build this workspace, `rclrs` automatically:
1. Discovers all ROS interface packages (those containing `.msg`, `.srv`, `.action` files)
2. Generates Rust FFI bindings for each message type
3. Creates both ergonomic and zero-copy compatible structs
4. Makes them available for use in your Rust ROS 2 applications

This means you can use standard ROS 2 message types like `std_msgs::msg::String` or `geometry_msgs::msg::Twist` directly in your Rust code.

## Quick Start

### Prerequisites
- ROS 2 Humble installed and sourced
- Rust toolchain
- Required packages: `libclang-dev`, `python3-vcstool`
- Colcon plugins: `colcon-cargo`, `colcon-ros-cargo`

### Build and Run
```bash
# Build the workspace
make build

# Source the workspace
. ./install/setup.sh

# Run examples
ros2 run examples_rclrs_minimal_pub_sub minimal_publisher
ros2 run examples_rclrs_minimal_pub_sub minimal_subscriber

# Or use launch file
ros2 launch examples_rclrs_minimal_pub_sub minimal_pub_sub.launch.xml
```

## Repository Structure

This workspace uses git submodules to track packages:
- `src/ros2_rust/` - The main ros2_rust repository (submodule)
- `src/ros2/` - Standard ROS 2 interface packages imported via `vcs`
- Additional packages added manually as needed

## References

- [ROS 2 Rust Documentation](https://github.com/ros2-rust/ros2_rust/blob/main/docs/)
- [Writing Your First Node](https://github.com/ros2-rust/ros2_rust/blob/main/docs/writing-your-first-rclrs-node.md)
- [Building Guide](https://github.com/ros2-rust/ros2_rust/blob/main/docs/building.md)
- [Contributing Guide](https://github.com/ros2-rust/ros2_rust/blob/main/docs/CONTRIBUTING.md)

## License

This workspace follows the same licensing as the upstream ros2_rust project - Apache 2.0 License.
