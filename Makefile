.PHONY: logstash-sophos-utm.conf

logstash-sophos-utm.conf:
	logstash -f $@

clean:
	curl -XDELETE localhost:9200/utm
	rm -f ~/.since*
