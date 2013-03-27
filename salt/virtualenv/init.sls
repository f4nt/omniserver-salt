python-virtualenv:
  pkg:
    - installed

/var/www/omnispective:
  virtualenv.managed:
    - no_site_packages: True
    - requirements: salt://virtualenv/REQUIREMENTS.txt
