# settings for network states
#
{%- set host    = salt['pillar.get']('host', {}) %}
{%- set cluster = salt['pillar.get']('cluster', {}) %}
{%- set zone    = salt['pillar.get']('zone', {}) %}
{%- set host_default = salt['pillar.get']('host_default', {}) %}

{%- set net_default = host_default.get('net', {}) %}
{%- set interface_default = net_default.get('interfaces', {
 'type' : 'inet',
 'proto': 'static',
 'enabled': true
}) %}

{% set config = {} %}
{% do config.update({ 'host': {} }) %}
{% do config.update({ 'cluster': {} }) %}
{% do config.update({ 'zone': {} }) %}



{# Setup host configuration #}
{% do config.host.update({ 'net': {} }) %}
{% do config.host.net.update({ 'interfaces': [] }) %}


{% for interface in host.net.interfaces %}
  {% set item = {} %}
  {% do item.update({
    'name'      : interface.get('name'   , 'error: no name set'),
    'type'      : interface.get('type'   , interface_default.type),
    'proto'     : interface.get('proto'  , interface_default.proto),
    'enabled'   : interface.get('enabled', interface_default.enabled),
    'iface'     : interface.get('iface'),
    'kvmbridge' : interface.get('kvmbridge'),
    'ipaddr'    : interface.get('ipaddr'),
    'netmask'   : interface.get('netmask'),
    'routes'    : interface.get('routes', {})
    })
  %}
  {% do config.host.net.interfaces.append(item) %}
{% endfor %}


{# Setup cluster configuration #}
{% do config.update({ 'cluster': cluster }) %}

{# Setup zone configuration #}
{% do config.update({ 'zone': zone }) %}
