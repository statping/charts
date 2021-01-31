# Statping / Docker / Kubernetes / Helm

[![Codecov](https://img.shields.io/codecov/c/github/statping/statping?style=for-the-badge&logo=codecov)](https://codecov.io/gh/statping/statping)
[![GitHub stars](https://img.shields.io/github/stars/statping/statping?style=for-the-badge&logo=github)](https://github.com/statping/statping/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/statping/statping?style=for-the-badge&logo=github)](https://github.com/statping/statping/issues)
[![DockerHub](https://img.shields.io/docker/pulls/statping/statping.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/repository/docker/statping/statping)
[![DockerHub](https://img.shields.io/badge/SIZE-%3C%2030%20MB-1488C6?style=for-the-badge&logo=docker)](https://hub.docker.com/repository/docker/statping/statping)

> - Read the docs : [https://github.com/statping/statping](https://github.com/statping/statping)
> - Read the [release notes](https://github.com/statping/statping/releases)

Statping is a server that monitors your services.

More information/documentation [Project Repository](https://github.com/statping/statping)

## Adding the Repository

```bash
helm repo add statping https://statping.github.io/charts
helm repo update
```

## Deploy Statping with helm

```bash
helm upgrade -i ${name} statping/statping --namespace ${namespace} --force
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| application.enable.environment | bool | `true` | Enable environment in response |
| application.enable.file | bool | `true` | Enable file in response |
| application.enable.header | bool | `true` | Enable custom header in response |
| application.enable.host | bool | `true` | Enable host in response |
| application.enable.http | bool | `true` | Enable http in response |
| application.enable.request | bool | `true` | Enable request in response |
| application.logs.ignore.ping | bool | `false` | Don't log ping request on route `/ping` |
| database.connection | string | `"sqlite"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"statping/statping"` | https://hub.docker.com/r/statping/statping |
| image.tag | string | `"latest"` | https://github.com/statping/statping/releases |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` | Example `kubernetes.io/ingress.class: nginx` for Nginx Ingress |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.hosts[0].host | string | `"cluster.local"` |  |
| ingress.hosts[0].paths[0] | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.failureThreshold | int | `3` |  |
| livenessProbe.httpGet.httpHeaders[0].name | string | `"x-echo-code"` |  |
| livenessProbe.httpGet.httpHeaders[0].value | string | `"200"` |  |
| livenessProbe.httpGet.path | string | `"/health"` |  |
| livenessProbe.initialDelaySeconds | int | `5` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `2` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` | Pod replicas |
| resources.limits.cpu | string | `"50m"` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"50m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |

## Changelog
