FROM ppjoin/debian_openbox_firefox:latest
ADD firefox-38.0b1.tar.bz2 /usr/lib/
ENV APP_NAME="Firefox_38_lang_de"
