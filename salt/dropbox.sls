# https://www.dropbox.com/install-linux

{% if grains['os_family'] == 'Debian' %}
dropbox-debian:
  pkg.installed:
    - sources:
      - dropbox: salt://dropbox_2018.11.28_amd64.deb
{% endif %}

{% if grains['os_family'] == 'Arch' %}
dropbox-key:
  cmd.run:
    - name: gpg --recv-keys FC918B335044912E

dropbox:
  cmd.run:
    # 'Please avoid running yay as root/sudo.'
    - name: yay --noconfirm -S dropbox
{% endif %}
