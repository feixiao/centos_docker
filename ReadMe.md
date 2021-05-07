## 构建基于CentOS的Docker镜像

### cpp_build
+ 基于CentOS 7.6.1810的编译容器平台
    ```
    # build
    make

    # Launch
    docker-compose up -d

    docker run -dit feixiao/cpp_build_centos /bin/bash 
    ```
    支持SSH(用户名frank 密码１)，支持远程调试

