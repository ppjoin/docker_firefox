FROM jlesage/baseimage-gui:debian-8-v3.3.6
RUN apt-get update && apt-get install -y dbus libasound2 libdbus-glib-1-2 libgtk2.0-0 openvpn && apt-get autoclean
ADD firefox_config_eb1_am1_vg1_linux_64bit.tar.bz2 /config/.mozilla/
ADD firefox-38.0b1.tar.bz2 /usr/lib/
RUN ln -sf /usr/lib/firefox/firefox /usr/bin/firefox
#ADD eb.sh /config/
#RUN cd /config/ && chmod +x eb.sh
#RUN /init & sleep 10 && /config/firefox/firefox --display=0:0 & sleep 5 
COPY s6_firefox /etc/services.d/firefox/run
COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh && chmod 777 /startapp.sh
ENV APP_NAME="firefox"
