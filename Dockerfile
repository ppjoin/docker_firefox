FROM jlesage/baseimage-gui:debian-8-v3.3.6
RUN apt-get update && apt-get install -y dbus libasound2 libdbus-glib-1-2 libgtk2.0-0 wget && apt-get autoclean
ADD firefox-38.0b1.tar.bz2 /config/
RUN ln -sf /config/firefox/firefox /usr/bin/firefox
ADD firefox_config_eb1_am1_vg1_linux_64bit.tar.bz2 /config/.mozilla/
#ADD eb.sh /config/
#RUN cd /config/ && chmod +x eb.sh
#RUN /init & sleep 10 && /config/firefox/firefox --display=0:0 & sleep 5 
COPY startapp.sh /startapp.sh
ENV APP_NAME="firefox"
