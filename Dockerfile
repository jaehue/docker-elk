FROM logstash:latest

WORKDIR /etc/logstash
RUN wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz

RUN wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz && \
	gunzip GeoLiteCity.dat.gz

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["logstash", "agent"]