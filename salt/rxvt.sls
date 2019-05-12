{% if grains['os_family'] == 'Debian' %}
rxvt-unicode:
  pkg.installed

fonts-inconsolata:
  pkg.installed

/etc/X11/app-defaults/URxvt:
  file.blockreplace:
    - marker_start: "! start linux-salted-2"
    - marker_end: "! end linux-salted-2"
    - append_if_not_found: True
    - content: |
        URxvt*loginShell:true
        URxvt*scrollBar:true
        URxvt*scrollBar_right:true
        URxvt*scrollBar_floating:false
        URxvt*scrollstyle:plain
        URxvt*secondaryScroll:true
        URxvt*saveLines:32767
        URxvt*font: xft:Inconsolata
        URxvt.letterSpace: -1
        URxvt*perl-ext-common: default,matcher,-option-popup,-selection-popup,-realine,tabbed
        ! see https://bbs.archlinux.org/viewtopic.php?id=57823
        URxvt*scrollTtyOutput:      false
        URxvt*scrollWithBuffer:     true
        URxvt*scrollTtyKeypress:    true
{% endif %}
