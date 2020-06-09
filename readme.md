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

  