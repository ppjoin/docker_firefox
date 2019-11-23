FROM ppjoin/debian_openbox_firefox:init
RUN apt-get update && apt-get install -y ttf-wqy-* && apt-get autoclean
ADD firefox-45.9.0esr_zh_cn.tar.bz2 /usr/lib/
ADD firefox_config_ff45_eb1_linux_64bit.tar.bz2 /config/.mozilla/
RUN ln -sf /usr/lib/firefox/firefox /usr/bin/firefox
COPY rc.xml /etc/xdg/openbox/rc.xml
COPY startapp.sh /startapp.sh
ENV APP_NAME="Firefox 45.9 ESR 中文版" KEEP_APP_RUNNING=1