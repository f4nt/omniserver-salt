supervisor:
  pkg:
    - installed
  service:
    - running
    - restart: False
    - require:
        - pkg: supervisor

/etc/supervisor/conf.d/omniserver.conf:
  file.managed:
    - user: root
    - group: root
    - chmod: 644
    - source: salt://supervisord/omniserver.conf
