FROM jlesage/baseimage-gui:alpine-3.6
RUN add-pkg xterm
COPY startapp.sh /startapp.sh
ENV APP_NAME="Xterm"
