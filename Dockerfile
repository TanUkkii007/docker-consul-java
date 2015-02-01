FROM        tanukkii007/docker-consul
MAINTAINER  Yusuke Yasuda <yusuke.007.yasud@gmail.com>

#
# The following codes are same as
# https://github.com/dockerfile/java
#
# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-7-jre && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# Define default command.
CMD ["bash"]