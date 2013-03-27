supervisor:
  pkg:
    - installed

wsgi_server:
  supervisord:
    - running
    - restart: False
    - require:
        - pkg: supervisor
