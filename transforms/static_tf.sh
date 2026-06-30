#!/bin/bash

ros2 run tf2_ros static_transform_publisher --x 0 --y 0 --z 0 --roll 0 --pitch 0 --yaw 0 --frame-id world --child-frame-id base_link &

ros2 run tf2_ros static_transform_publisher --x 0.0 --y 0.0 --z 0.5 --roll 0 --pitch 0 --yaw 0 --frame-id base_link --child-frame-id torso_link &

ros2 run tf2_ros static_transform_publisher --x 0.1 --y 0.0 --z 0.3 --roll 0 --pitch 0.3 --yaw 0 --frame-id torso_link --child-frame-id rgb_camera_link &

ros2 run tf2_ros static_transform_publisher --x 0.13 --y 0.06 --z 0.3 --roll 0 --pitch 0.3 --yaw 0 --frame-id torso_link --child-frame-id thermal_camera_link &

ros2 run tf2_ros static_transform_publisher --x 0.0 --y 0.0 --z 0.8 --roll 0 --pitch 0 --yaw 0 --frame-id torso_link --child-frame-id imu_link &

ros2 run tf2_ros static_transform_publisher --x 0.0 --y 0.0 --z 0.15 --roll 0 --pitch 0 --yaw 0 --frame-id base_link --child-frame-id lidar_link &

ros2 run tf2_ros static_transform_publisher --x 0.2 --y 0.15 --z 0.0 --roll 0 --pitch 0 --yaw 0 --frame-id base_link --child-frame-id left_wheel_link &

ros2 run tf2_ros static_transform_publisher --x 0.2 --y -0.15 --z 0.0 --roll 0 --pitch 0 --yaw 0 --frame-id base_link --child-frame-id right_wheel_link &

wait