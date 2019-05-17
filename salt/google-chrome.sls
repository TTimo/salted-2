{% if grains['os_family'] == 'Arch' %}
google-chrome:
  cmd.run:
    - name: yay --noconfirm -S google-chrome
    - runas: timo
    - unless: which google-chrome-stable
{% endif %}
