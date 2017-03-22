#!/bin/sh
docker run -d -p 80:80 -p 443:443 --name aphp -v /WORK/HTML:/WORK/HTML -v /WORK/LOG:/WORK/LOG -v /WORK/HTML/apache_conf:/etc/apache2 \
--add-host web01:10.173.18.230 \
--add-host web02:10.171.47.64 \
--add-host db01:10.170.248.121 \
--add-host db02:10.251.193.186 \
--add-host db03:10.30.47.4 \
--add-host docker01:10.172.222.249 \
--add-host docker02:10.165.124.175 \
--add-host docker03:10.171.112.250 \
--hostname=aphp03 \
aphp:v2.2
#--add-host docker01:10.172.222.249 \

