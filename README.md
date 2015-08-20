# logstash-utm

Logstash configuration and templates to parse Sophos UTM logs.

## Supported log types

At this point only the packet filter and web filter (`http*.log`) file types are supported.

## Usage

* [Install Logstash](https://www.elastic.co/guide/en/logstash/current/getting-started-with-logstash.html)
* Unpack your UTM logs into the `input/` sub-directory.
* Run `make`. Logstash will start up, work through all files that are already present and then wait for more.

## Syslog Pipe

The syslog pipe can easily be implemented by using the [syslog](https://www.elastic.co/guide/en/logstash/current/plugins-inputs-syslog.html) input plugin instead of the current configuration's [file input](https://www.elastic.co/guide/en/logstash/current/plugins-inputs-file.html). You can then configure your UTM to push logfiles directly into Logstash. This allows for realtime analytics.
