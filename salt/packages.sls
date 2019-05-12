# Packages nice enough to have the same name in Debian and Arch distros
general-packages:
  pkg.installed:
    - pkgs:
      - fish
      - tmux
      - mosh
      - net-tools
      - htop
      - iotop
      - sysstat

      - git

      - unzip
      - autossh

      - schroot
      - docker

      - inotify-tools


{% if grains['os_family'] == 'Debian' %}
general-packages-debian:
  pkg.installed:
    - pkgs:
      - aptitude
      - apt-file
      - gdebi
      - deborphan

      - emacs-nox

      - python3-pip
      - pylint3
      - ipython3
      - python3-boto3

      - virt-what
      - cpuid

      - yaml-mode

      - flip
      - btrfs-tools

      - awscli
{% endif %}


{% if grains['os_family'] == 'Arch' %}
general-packages-debian:
  pkg.installed:
    - pkgs:
      - yay
      - aws-cli
      - iptraf-ng
      - perf
{% endif %}
