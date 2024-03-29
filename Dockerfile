FROM beevelop/ionic:v5.2.3

ENV ANGULAR_VER=7.2.4 \
	PATH="/opt/android/tools/bin/:${PATH}"

RUN npm install -g @angular/cli@${ANGULAR_VER} && \
 apt-get -qq update && \
 apt-get -qq install python && \
 npm install -g cordova && \
 npm install --unsafe-perm -g cordova-res && \
 npm install --unsafe-perm -g node-sass
