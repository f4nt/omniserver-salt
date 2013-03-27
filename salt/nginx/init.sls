nginx:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: nginx

/etc/nginx/sites-available/omniserver:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://nginx/omniserver

/etc/nginx/sites-enabled/omniserver:
  file.symlink:
    - target: /etc/nginx/sites-available/omniserver
