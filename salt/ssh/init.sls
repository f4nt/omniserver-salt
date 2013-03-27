sshkeys:
  ssh_auth:
    - present
    - user: f4nt
    - comment: f4ntkey
    - source: salt://f4nt.id_rsa.pub
