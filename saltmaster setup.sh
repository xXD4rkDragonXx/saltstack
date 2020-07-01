#cloud-config
package_update: true

packages
    - salt-master

salt_minion:
    pkg_name: 'salt-minion'
    service_name: 'salt-minion'
    config_dir: '/etc/salt'
    conf:
        master: 10.0.6.49