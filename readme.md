## 使用方法

### 0. 预备工作

- 编译两个workspace
- source对应的setup.bash
- 终端运行roscore

### 1. 启动drive

```
$ rosrun nmea_navsat_driver nmea_serial_driver _port:=/dev/ttyUSB0 _baud:=115200
```

- _port: 端口
- _baud: 波特率



### 2. 启动gnss_parse

```
rosrun process_gnss parse_gnss_node 
```



### 3. rviz显示

![rviz数据展示](./pic/gnss.png)



#### 注意

- 当前因为室内没法读取到gnss数据，我这边是用提前保存好的[txt文件](./nmea.txt)做测试

- 我在程序中写死txt文件目录了，记得更改

- 如果正常使用串口读取数据的话，记得修改对应的nmea_serial_driver程序

- 第一个工作空间已经集成到ros sourcelist里面，可以直接使用apt下载：

  ```
  sudo apt install ros-kinetic-nmea-navsat-driver 
  ```

## unicore部分

unicore包主要包括和芯星通的组合导航设备中的三种主要信息格式进行解析，并发送对应ros节点输出：

三种格式为: 
inspva:组合导航
rawimu:纯IMU数据
gpgga：gps数据

使用方法：新建workspace，在workspace下新建src, 将unicore包放在src目录下，然后在工作空间catkin_make安装编译即可。

依赖：
sudo apt install ros-kinetic-novatel-gps-driver   
