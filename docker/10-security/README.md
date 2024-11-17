# Security example

## Docker scout

Link: https://docs.docker.com/scout/install/

View a summary of image vulnerabilities and recommendations
```sh
docker scout quickview rafaelpapastamatiou/devopspro2-docker-10-security-node-app
```

View image vulnerabilities
```sh
docker scout cves rafaelpapastamatiou/devopspro2-docker-10-security-node-app
```

Output image vulnerabilities to a markdown file
```sh
docker scout cves --format markdown rafaelpapastamatiou/devopspro2-docker-10-security-node-app > scout-image-vulnerabilities.md
```

View a summary of current project's vulnerabilities and recommendations
```sh
docker scout quickview fs://.
```

View current project's vulnerabilities
```sh
docker scout cves fs://.
```

Output current project's vulnerabilities to a markdown file
```sh
docker scout cves --format markdown fs://. > scout-project-vulnerabilities.md
```

View base image update recommendations
```sh
docker scout recommendations rafaelpapastamatiou/devopspro2-docker-10-security-node-app
```

Add image to docker scout
```sh
docker scout repo enable --org rafaelpapastamatiou rafaelpapastamatiou/devopspro2-docker-10-security-node-app
```

Compare tags of the same image (v2 with v1)
```sh
docker scout compare --to rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v1 rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v2
```

Compare v3 with v1
```sh
docker scout compare --to rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v1 rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v3
```

Get all components of the image (SBOM / Software Bill of Materials)
```sh
docker scout sbom rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v4
```

Output SBOM as a list
```sh
docker scout sbom --format=list rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v4 > scout-sbom.txt
```

## Trivy

Check misconfigurations
```sh
trivy config ./
```

Get the vulnerabilities of the v1 tag
```sh
trivy image rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v1 > trivy-v1-vulnerabilities.txt
```

Get the vulnerabilities of the v4 tag
```sh
trivy image rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v4 > trivy-v4-vulnerabilities.txt
```

Get the vulnerabilities of the v5 tag
```sh
trivy image rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v5 > trivy-v5-vulnerabilities.txt
```

Filter image scan
```sh
trivy image --scanners vuln,misgconfig,secret,license rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v4 > trivy-v4-vulnerabilities.txt
```

Get SBOM with Trivy (Software Bill of Materials) in SPDX-JSON format
```sh
trivy image --format spdx-json --output trivy-sbom-spdx.json rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v5
```

Get SBOM with Trivy (Software Bill of Materials) in CycloneDX format
```sh
trivy image --format cyclonedx --output trivy-sbom-cyclonedx.json rafaelpapastamatiou/devopspro2-docker-10-security-node-app:v5
```

## Sign docker images

Cosign link: https://docs.sigstore.dev/cosign/system_config/installation/

Generate cosign keypair
```sh
cosign generate-key-pair
```

Sign image
```sh
cosign sign --key cosign.key rafaelpapastamatiou/devopspro2-docker-10-security-node-app-signed:v1
```

Check if image is signed
```sh
cosign verify --key cosign.pub rafaelpapastamatiou/devopspro2-docker-10-security-node-app-signed:v1
``` 

Sign image adding custom props
```sh
cosign sign --key cosign.key -a author="Rafael Papastamatiou" rafaelpapastamatiou/devopspro2-docker-10-security-node-app-signed:v1
```

Sign image adding using env variables
```sh
export COSIGN_KEY=$(cat cosign.key)
cosign sign --key env://COSIGN_KEY -a author="Rafael Papastamatiou" rafaelpapastamatiou/devopspro2-docker-10-security-node-app-signed:v1
```

Check if image is signed using env variables
```sh
export COSIGN_PUB=$(cat cosign.pub)
cosign verify --key env://COSIGN_PUB rafaelpapastamatiou/devopspro2-docker-10-security-node-app-signed:v1
``` 

## Linux capabilities

Check linux capabilities on manual
```sh
man 7 capabilities
``` 

Run container with SYS_ADMIN capability
```sh
docker run -it --rm --cap-add=SYS_ADMIN ubuntu /bin/bash
```

Run container in privileged mode
```sh
docker run -it --rm --privileged ubuntu /bin/bash
```