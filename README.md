Firefox 31/45镜像,配置已优化,适合挂机.
检测到火狐关闭,会10秒后自动重启

# 默认小镜像

```shell
docker run -d --name Firefox -p 5800:5800 ppjoin/debian_openbox_firefox;
```

# 中文字体显示 (镜像文件会大一点点)

```shell
docker run -d --name Firefox \
    --restart=always \
    -p 5800:5800 \
    ppjoin/debian_openbox_firefox:lang_chinese;
```
# 自动挂AM ( ID自定义,参数 AM= )

```shell
docker run -d --name Firefox \
    --restart=always \
    -p 5800:5800 \
    -e AM=12345 \
    ppjoin/debian_openbox_firefox;
```
