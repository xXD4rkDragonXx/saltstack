rsys:
  file.managed:
    - name: /etc/rsyslog.conf
    - source: salt://rsyslog.conf

default-stuff:
  file.managed:
    - name: /etc/rsyslog.d/50-default.conf
    - source: salt://50-default.conf

reload-stuff:
  cmd.run:
    - name: sudo service rsyslog restart
