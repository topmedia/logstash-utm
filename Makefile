.PHONY: logstash-sophos-utm.conf

logstash-sophos-utm.conf:
	logstash --allow-env -f $@

clean:
	curl -XDELETE localhost:9200/utm
	rm -f ~/.since*
