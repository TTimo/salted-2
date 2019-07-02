/usr/local/bin/p4:
  file.managed:
    - source: salt://p4/p4
    - mode: 755

{% set dirname = 'p4v-2019.1.1815056' %}

/opt/{{ dirname }}:
  archive.extracted:
    - source: salt://p4/p4v.tgz
    - name: /opt

/usr/local/bin/p4v:
  file.symlink:
    - target: /opt/{{ dirname }}/bin/p4v
