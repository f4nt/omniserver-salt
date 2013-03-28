postgresql-client:
  pkg:
    - installed

postgresql:
  pkg:
    - installed
  service:
    - running
    - restart: False
    - require:
        - pkg: postgresql 

omniserver:
  postgres_user.present:
    - createdb: True
    - password: omnipass
    - runas: postgres
