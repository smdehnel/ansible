include:
  - .includes.defaults

host:
  name: pcg-rdr
  dummy_ip: 10.3.247.62
  ip: 104.160.173.18
  netmask: 255.255.255.252

nat:
  use_haproxy: true
  snat:
    - { src_ip: '10.1.10.42', public_ip: '104.160.173.18' }
  dnat:
    - { public_ip: '104.160.173.18', dst_ip: '10.1.10.42', dst_ports: ['25','465'], proto: ['tcp'] }
    - { public_ip: '104.160.173.18', dst_ip: '10.1.10.42', dst_ports: ['80','443'], proto: ['tcp'] }
    - { public_ip: '104.160.173.18', dst_ip: '10.1.10.42', dst_ports: ['4569','5060','10000:60000'], proto: ['udp'] }

oam:
  zabbix:
    agent:
      config: HostMetadata:'5b8qiks4436l7424eec21a1f04fdbvfrd97f767f06f5d1857e486da64e534f444'
  lockdown:
    packages:
      additional_packages:
        - tcpdump
        - net-tools

vpn:
  enabled: True
  instance:
    "1":
      oam: True
      name: sb1-hub-la1
      type: ipsec
      gre:
        tun_src_ip: 104.160.173.18
        tun_dst_ip: 216.73.156.146
        local_gre_ip: 10.3.246.155
        remote_gre_ip: 10.3.246.154
      ipsec:
        local_ip: 104.160.173.18
        peer_ip: 216.73.156.146
        pre_shared_key: "X9PbkxuZ3A9I3bo7afJtV9WyYhNoufCsbZ4SOfn4dHXPjDZwzViF8Gwf7bD4s"
  policy_routes:
    main:
      - 10.1.10.42    #pcg-front.sa1.sky
