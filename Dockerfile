FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/bitcore-btx/BitCore/releases/download/0.90.9.10/bitcore-x86_64-linux-gnu_qt5_with-libs.tar.gz
RUN tar zxvf bitcore-x86_64-linux-gnu_qt5_with-libs.tar.gz
RUN mv bin/bitcored /usr/bin/
RUN mv bin/bitcore-cli /usr/bin/
RUN rm -R bin
RUN rm bitcore-x86_64-linux-gnu_qt5_with-libs.tar.gz
CMD /usr/bin/bitcored -printtoconsole
