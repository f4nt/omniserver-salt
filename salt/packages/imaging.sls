libjpeg62-dev:
  pkg:
    - installed

libjpeg62:
  pkg:
    - installed

/usr/lib/libjpeg.so:
  file.symlink:
    - target: /usr/lib/x86_64-linux-gnu/libjpeg.so
