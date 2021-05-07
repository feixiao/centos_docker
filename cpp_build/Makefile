
TEMPLATE_NAME ?= registry.cn-hangzhou.aliyuncs.com/frank_dev/cpp_build_centos:1.0


build:
	@docker build ./ -t ${TEMPLATE_NAME}

run:
	@docker run -dit --name="cpp_build_centos" ${TEMPLATE_NAME} /bin/bash 

push:
	@docker push ${TEMPLATE_NAME}

stop:
	@docker stop cpp_build_centos	