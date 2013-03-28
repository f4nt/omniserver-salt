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

libpq-dev:
  pkg:
    - installed

omniserver:
  postgres_user.present:
    - createdb: True
    - password: omnipass
    - runas: postgres

omniserver_db:
  postgres_database.present:
    - owner: omniserver
    - encoding: UNICODE
    - runas: postgres
