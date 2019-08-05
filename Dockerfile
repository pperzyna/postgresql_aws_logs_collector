FROM fluent/fluentd:v1.6-1

USER root

RUN gem install fluent-plugin-elasticsearch -v 3.5.4; \
  gem install fluent-plugin-rds-pgsql-log -v 0.5.0; \
  gem install fluent-plugin-time-filter -v 0.1.0; \
  gem sources --clear-all; \
  rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem

COPY fluent.conf /fluentd/etc/

USER fluent