FROM centos/systemd

# 安装etcd
RUN yum -y install etcd

# 开启etcd服务
RUN systemctl enable etcd.service

# 复制entrypoint脚本
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
