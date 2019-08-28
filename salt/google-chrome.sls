{% if grains['os_family'] == 'Arch' %}
google-chrome:
  cmd.run:
    - name: yay --noconfirm -S google-chrome
    - runas: timo
    - unless: which google-chrome-stable

chrome-remote-desktop:
  cmd.run:
    - name: yay --noconfirm -S chrome-remote-desktop
    - runas: timo
    - unless: which crd
{% endif %}
