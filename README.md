# Installation 

## Requirements
```bash
brew install yq
brew install helm
brew install helmfile
brew install kubectl
```
docker desktop also needed for k8 management

#### install local dependencies
installs  [grafana](charts%2Frio-local%2Fgrafana)
[loki](charts%2Frio-local%2Floki)
[mongo](charts%2Frio-local%2Fmongo)
[prometheus](charts%2Frio-local%2Fprometheus)
[rabbitmq](charts%2Frio-local%2Frabbitmq)
[redis](charts%2Frio-local%2Fredis)
[scheduler-redis](charts%2Frio-local%2Fscheduler-redis)
```bash
cd charts/rio-local
kubectl create namespace monitoring  # if not exists
helmfile sync
 ```

#### install runtime 
```bash
./build.sh n
 ```

#### we need to create mongo project config to root->root_rdk collection
```json
{
  "_id": "projectid3#config",
  "_rio_pk": "projectid3",
  "data": {
    "accessTokenSecret": "e6WQvq4jgO7QRx6uPnFWPGwE2OOMhtsuTOPjKhccOij0tT2wMDi9TkFOHPtp5JGv",
    "customTokenSecret": "FJRFbSRrOxdh9FKjAImXXCem6MmFUAQjeLKlursvcgbYOcDlJJMpFJejuvWMZTnw",
    "refreshTokenSecret": "Qpai5Q0LDtPSHJIgJBcKEeAfa9nkXV4l0ZdV1rioGPMxFJebhv4Kkb46kgaNaZsx",
    "subscriptionId": "partner",
    "authenticationRules": [],
    "loggingAdapters": [],
    "stateStreamTargets": [],
    "status": {
      "type": "active"
    },
    "secrets": [
      {
        "algorithm": "HS256",
        "customTokenSecret": "FJRFbSRrOxdh9FKjAImXXCem6MmFUAQjeLKlursvcgbYOcDlJJMpFJejuvWMZTnw",
        "accessTokenSecret": "e6WQvq4jgO7QRx6uPnFWPGwE2OOMhtsuTOPjKhccOij0tT2wMDi9TkFOHPtp5JGv",
        "refreshTokenSecret": "Qpai5Q0LDtPSHJIgJBcKEeAfa9nkXV4l0ZdV1rioGPMxFJebhv4Kkb46kgaNaZsx"
      },
      {
        "algorithm": "RS256",
        "customTokenSecret": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC+Imx8brYaXHYP\n+g4uqmbyp3UKWBL5VCWNLVKLX8poKTI3FmEzLS1niDep4aJyuu+xA/Kqb3upk+G+\nWP6kAqmi4rWZYTT++1383nkBe7/Rb0c2FyYPb0aR3FnlPlhbSS9Aem21526HdlxU\n1pOb16Xw3jCzWbzBz4f88aUga+aaWhD7QAjjYXcPCPaaIdYodfux6xOQJ6Ec8Cv6\n+Z0saomttV8JivvLoZQ286LELgm/k/bho12nwxgiSkwyqWf9S2GrywyL7CAGD5+5\nVup98mpv7cbrMnarNYWQwwP/0c7YgIVXtC1mp5qDFoncChRgGF/Ya+cmFqMfZ6jH\nuK95PH+zAgMBAAECggEAGLiPFGqsoKbO7urbNzQOqJQfQpYK+YH4U+/FoLt2rK5W\nihUN1EKWebSbUCo3HeWyTnit730JPhYtLruReC+kcLo7VFLwOgriwIMIhqnZWdi3\nEJBX8X/NVB+rTIQbptrQGvkQFKufkltQS/OOQ5/5QmURPfB3+1cJXljo2FtPI1hD\nIwRTXNrbBLaHKbY8YJu9qb2Y2g75APqh5n39N+BSQB4+75aXzQjAR0rQYKSUQBvQ\nxHejTtZt2vsfEDeDogwFVxsV/bR5cmoFa4ETjtJVmD4Fgvrt/3ajZ3OvGjZnjC9C\nzfpSFYQizw8m096udUH1IXOx/vwXPhvch93ImL+rAQKBgQDid89C0d1gG2qKtasS\nzA5RoWEQ+u6WopzSF9+5ELJu7ikIWInQz422wq7Y61Uc8RWLuqTjcZmHOPoLXDMU\nFKeguc+T3fyjHQhcU3sSiVBQK2BHdk0TXv2t2titJFqUKpQCSuFL1cLZtJVgmbae\n9D15AicnsMTRS5H3Bd+UTdZlgQKBgQDW7bCx2AGdaK5/l/3OPcmB8TIs5Pac8ONK\n86iLwS6fOf2CtcP84RT/T9LA6RJ2HUu1gFS9Ik/CrlbFeCN49yk5mIe9wWtxSWx0\nWlZUKH3MMpkpgJmHZeqLfNw7dfa9nvfO/iD2TQTUa01mVjMP4FnagcL6FSXjqtKF\nRWYWBB/HMwKBgQCF8CX8dvJerNhOQTN0Yor1bGRkDoSdQn9NIiGG6oEdam2KKhMY\nFCjUNkACuuwTueHsSe7LNZx/hQsdPOJYtf6N6FcENP392mXfdOANDnkZcQ34NddP\n5ZZTBGOxwxZvGt9+m5qzpzEeYNcX0tFXIUxaDRPrPXip7+/cEPUyWPa8AQKBgCfi\noEHAtjwB6zAegqk9aiHFIuyV6PYi9es44HRe+0ntNxCErsRE+OKQa6oFFrn4oc4i\n7JbUwTx9ofivXNXb+DiKB9a9CDVTzN6izRZ9FStJ0IaVKOipjycnmq8mKw3xbEdr\nfa53iIfrCcgOAxfVKJeWMRq7xfZEAyFcSZ+YUFVlAoGAB+igtVyGGYDm9q7+726D\nZOtzx5OVmy6G3qdDClmYaAlpMlVISGnhb3diFW8BqEgYECwlcoFzRbfhr0XAkoV7\nPL0W03nACYAtn6nqwj2glWlXNbZVoieTzz4zBBHzMD2N3AlVdVZjqVjlr7xBNgbJ\ntJBVt9v9LONw5MDkD0nYax0=\n-----END PRIVATE KEY-----\n",
        "accessTokenSecret": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCxraorNNY1jsf0\nZbQJdxUqPyC2EtJO9hhK1RX0IfcTF+crAST4++aoR80F53CC7MUmUOlNmmxVSIsB\ndH2sf3Y9r/EQbRxXlZpg673o0u01GTLMjK1vm5kHGIYYvpO97EkgtmAlzLQYzTiY\nnVmiBntYTjoUHN2toSY9wMtkdF5QWoiKTqYrof5RG09TM2ZfdwzCUKqUeXwkXb/v\njV+AKSOmE3CSaPd3bzCy8zDL/N/pC9WgVpBi/oTfZo2ZdJD5HvBp9gdqdd0Qj2p3\nzB4q1LxPgvuJkYhLEEVy443mGKY7UqqseNu7U4JvNy7D2EBftrkmJI2UcEuOfwB3\nsVbW9KlNAgMBAAECggEACu2PE804h5H0KZhZWsoTzfj7MarPe8L8rect/6/yTeuG\n1xXg7xD/MZM8JurPK4Su5rMyeW8DNSBn4q6f51lUYM+1C4X9qKovSCeRRjdpSeTD\nQ3vVIJIsKhjC1qH4dqvu63yMEu1+MWOESAHiUdBrca9a0k91yu7bnUMbjCtXSakA\npkn1fwaWdzwjwk1m0s9ADPpoJPlRFs/6HmqQuVYBec2EpgTwJh8FkZkrZ70uYvuW\nChCzQ0fkMGLEfGWeg+ildVpF3l8c2BU94KgdDo01+TfbGUVhIyiRdVAsS++QVWSQ\nSiQDev/1pLFzUIPPeHFEUDoOA28Bf2a57/cLNWAT+QKBgQDruHG4CW4NhOOAgI42\nRGjSZ9wSIm0NSQPrXGAY8puJmIeI+44NVcESXl6CsLfzSvYG2bmLkZGSYGQxOOuM\nZlxVChSMqZ/hz6LskDggwAj3jdJHiOtwmEXUwCsl5YxmnP9UBoGQS0FfY1ved+Oe\niLvIB8B2TDW1Jr3BaOQ6ZHrFgwKBgQDA9uOtD62B6zlE39Un9n518AHmTGh4GIh9\nabLoDg2QG0coONWYKRmfxvSLF6Zkl47Yc57+AsoJhTKs6UfFs7ZM84XRsmuJPS8U\nR5TytICjziY0JZtylidBDApIsnAvWYY33UCIwBrVzQnUH0yoyNV/pOJCYATS0QQ0\nFwvPkoFs7wKBgD6JaYok3lCx39WYxaH6FkE0Eruw7HOo2mRX1prnyoH/uH2MF4zM\nInPoG3Taw4LFcW4x1zsC/Lbz4cD5U+ykv3xEN112Jxe2iYfvXyS5LefXdWFLHwN5\nMpWWAhyEwPH8VvUI4NjSTl6rMpVcA0RtDDyuac44u8r6oz8rv9kKDVRXAoGAOglH\neuKPPdcAd32Wv5k8eb5A5AIxHYXLb2TeATtQyvnZUfieDVC3Oz38iOUJD5IhzWog\n9KbkGy7riePzyTt+5fAMXIB8JV+4jDHnU4QEeL/k76Qr96+/iKnVYf4BDcywOJcb\n9MVKjOlJPnpXdSBKTkTKJEp6yOlCiWQxEjIvKRMCgYEA1/tEiZmPqPzbxV4uCyEz\njdrsi32ImhPx6aIyZzanjwzvHTA/Fb2Oke53D+LBNzdG+YRSAAAubJUJ7+1WgeRq\n303McfECp/cXx+agZeFPqlD5DhKsGvVwciUluDr/AnIV8u8zoqG0KP8/SslAxOLC\nbuuL2ZE8nY6gk3wqtL+ZKzY=\n-----END PRIVATE KEY-----\n",
        "refreshTokenSecret": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCnnKLCChVfHxCD\nXyce9JSfsKGtgcri/TWjWpw+FCRpdwK4/Rwo0SBJyqirqVjYzKkeHNhpEZDsq2nk\n/aeHoCpGv6pHRwBLKIAy+k4p0ZxM/VdWH9pBw+MyEV2k8Rm8A990aktcOFd4F0vB\nimM3pqPrAaefCqst24aT9JcAxvvFPTxb+Nb7txbBah3MYScXrJQI2lwIeP1N7ZJt\n8Sce88YZbxJ/no/vUJev+JdgxzNOECjFvQA7FOuOC0J8//AD9ZXDzsAnoB5AnNCo\nu1cHMqK1V6YAQSRLVUmcOpoi8H8Uwq8RiOeFCd34Ttg6aWTVEO6QES1x0VEUelQV\nx1rAfxcRAgMBAAECggEAT4FmVuKPlqpWm+pT1UQxB7qyRmpNwfRYMB94A55sUzan\nrPYrGFVymm4uKhdPVK9n/Sezo8s4UntQ5NVJVXUs+JhL/jl4sy4H+aZv0zhhiseV\nWP4M+qsfpw1DvUy8Z0nzAfa1vo3fN9DdF3Y8cBZ0pLIJP9DAuCTsplwcELtSjBEm\nU87rpM6ECwqF5DzA/5MOmWXtP+m3YgDZeopRuwvSn2GC354yhX2ovP8Vk9hke/9k\n3xm2dCfQRZc997pPgF7XZK/FrAE8J1msaWFer06fqDv5B3I92bXwAvjtCPdWWefz\nNDdqsH4PPmxiQkOmY4gOwmMNzhUBOzU3wdGnxHEv3QKBgQDX6JadQv+wMqCQXWy/\nOCfsYW0CcKLiMggBBXuCS5ChCGd8XJ5UsJ4sxI+h98DMzuPwYSN6hxGBaptOwCV7\n/yB0jgD9wnS8xPQLUT6tVaHx7hZYx63PAVMnOTEYz8maECFDPK9X3ZIqDZBEZMCR\nZpJkDNzPjf7SdbJsvjkKRh1JdwKBgQDGvDhF3LOr4hy1p6fAu9omFN2Hh2yjbsV7\nDAP/z4uUxaEZsoCrvKhFMrWt0O8ThsIUv34HiVqk2a5LWYEq/nKXm6TgytBy+j16\nyDNYtre9sSF848Lx+dfCcTGLIBNgCb3yOXnShdJWwD81xyI+stlWVyYrCbiX1Xti\ngPD/SfHFtwKBgBYec9+kj4FDjoN7rrpgTGbBDGPlmipGKd/A6ghNKYH11HQ/INFY\nTrwTXwue0BerUlq7+OCCmd6CR2rn8G8lkfOe4KcelssH+mB2cE9dqHuagpuRyVKd\ntiEckNUT5HluEZpLy0LbJjA8t3zqPXgn4/NwBecViveQqzjMvBc7W6C9AoGBAK63\nKoHA1fR2hObuzfwTKmXwUhGkbU4BRHw4xAtRW1UfqdH9rEFPSmALhM2asZRpFJdJ\nAnN9vcLP3PtBZN13dSb0Hq/BniB2/zXCa+HCQSbzYo15bxlsnNLE0NmPCXmVFvis\nrvz1yUWbHfcZanHUql3NoDCWC0Lw29hto3HMgFFhAoGAA8aHehT2U6YsIV0G8HUa\nzq6q6dnLNCA31LlPg7JXFxm7utF8fEsZtdrkwHHyJYQDFufMZj4d9CxiGKhHvotv\n+ZtuQDo1l6YZ8v2bD9T1Cr0gW55e9hqDktMGOQ2S2md0bybw13xlPtyi9SD3ZpFL\naCTPa33MnSpRVix48gfZYkg=\n-----END PRIVATE KEY-----\n"
      }
    ]
  }
}
```

## GRAFANA DASHBOARD
admin|strongpassword
if you need it
pod: grafana port 3000 (forward it to localhost:3000)
https://grafana.com/grafana/dashboards/315-kubernetes-cluster-monitoring-via-prometheus/
REMOVE ALL FILTERS
image!="",name=~"^k8s_.*",
REPLACE 
pod_name with pod  

## Prometheus
if you need it
pod: prometheus port 9090 (forward it to localhost:9090) 


# Helm-Documentation 
if not installed helm-docs do this : brew install norwoodj/tap/helm-docs
cd charts/rio-projects/projectid3
helm-docs -u -i .helmdocsignore -c ../../