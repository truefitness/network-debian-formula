# network states
# setup basic network configuration based on pillar data
#

{%- from 'network-debian/map.jinja' import map with context %}
{%- from 'network-debian/settings.jinja' import config with context %}

# remove resolvconf package - we want to control resolv.conf ourselves.
#
network_remove_resolvconf:
  pkg.removed:
    - name: resolvconf


/etc/network/interfaces:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - source:   salt://network-debian/files/interfaces.jinja
    - context:
      host:    {{ config.host }}
      cluster: {{ config.cluster }}
      zone:    {{ config.zone }}

/etc/network/routes:
  file.managed:
    - user: root
    - group: root
    - mode: 755
    - template: jinja
    - source:   salt://network-debian/files/routes.jinja
    - context:
      host:    {{ config.host }}
      cluster: {{ config.cluster }}
      zone:    {{ config.zone }}

/etc/resolv.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - source:   salt://network-debian/files/resolvconf.jinja
    - context:
      host:    {{ config.host }}
      cluster: {{ config.cluster }}
      zone:    {{ config.zone }}

