## 构建基于CentOS的Docker镜像

### cpp_build
+ 基于CentOS 7.2.1511的编译容器平台
    ```
    # build
    docker build ./ -t feixiao/cpp_build_centos

    # Launch
    docker-compose up -d

    docker run -dit feixiao/cpp_build_centos /bin/bash 
    ```
    支持SSH(用户名frank 密码１)，支持远程调试

