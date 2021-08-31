# LAN HA

Uses Keepalived and HAProxy to create high available services behind a NAT with a focus on that NAT being your local ISP router

## How to use

```bash
cp examples local

# edit configuration files to suite
make start
```

### Provides

- Layer 4 Network Proxy (6443)
- Layer 7 Network Proxy (80/443)

### IP Mapping

| IP      | Description |
| ----------- | ----------- |
| 172.16.16.1      | Gateway/NAT       |
| 172.16.16.80   | Virtual IP Address        |
| 172.16.16.71   | LB01        |
| 172.16.16.72   | LB02        |
| 172.16.16.81   | Kubernetes Node        |
| 172.16.16.85   | Kubernetes Node        |
| 172.16.16.86   | Kubernetes Node        |
