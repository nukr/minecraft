#!/bin/bash

if [ -z "${SPIGOT_VERSION}" ]
then
  SPIGOT_VERSION=1.10
fi

java -jar /data/BuildTools.jar --rev ${SPIGOT_VERSION}

echo eula=true > /data/eula.txt

java -Xms1G -Xmx4G -XX:MaxPermSize=128M -XX:+UseConcMarkSweepGC -jar /data/spigot-${SPIGOT_VERSION}.jar
