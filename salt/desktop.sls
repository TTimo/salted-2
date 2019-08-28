desktop-packages:
  pkg.installed:
    - pkgs:
{% if grains['os_family'] == 'Debian' %}
      - i3
{% endif %}
{% if grains['os_family'] == 'Arch' %}
      - i3-gaps
{% endif %}
      - meld
