{% if grains['os_family'] == 'Arch' %}
p4python:
  cmd.script:
    - source: salt://scripts/arch/p4python.sh
    - unless: python -c "import P4"
{% endif %}
