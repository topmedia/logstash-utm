.PHONY: logstash-packetfilter.conf

logstash-packetfilter.conf: clean
	logstash -f $@

clean:
	curl -XDELETE 192.168.99.100:32771/utm
	rm -f ~/.since*
