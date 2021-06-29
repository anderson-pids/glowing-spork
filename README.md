# Glowing-spork

<p align="center">
    <a href="https://github.com/anderson-pids/glowing-spork/blob/main/LICENSE">
        <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-yellow.svg" target="_blank" />
  </a>
  <a href="https://aws.amazon.com/cli/">
        <img alt="AWS CLI" src="https://img.shields.io/badge/AWS-CLI-red.svg" target="_blank" />
  </a>
  <a href="https://twitter.com/anderson_pids">
    <img alt="Twitter: anderson_pids" src="https://img.shields.io/twitter/follow/anderson_pids?style=social" target="_blank" />
  </a>
</p>

Glowing spork is an utility to generate temporary credencials for developers.

## Installation

### Required
- docker
- docker-compose

Use makefile commands to install glowing-spork.

```bash
make build
```
---

## AWS Credentials

Generate easily aws credentials, only need to export environment variables and temporary credentials can be created.

export variables:

```bash
export AWS_ACCESS_KEY_ID=<YOUR_PERMANENT_ACCESS_ID>
export AWS_SECRET_ACCESS_KEY=<YOUR_PERMANENT_SECRET_ACCESS_KEY>
export AWS_ACCOUNT_ID=<YOUR_ACCOUNT_ID>
```

### Usage

```bash
make aws-auth username=<IAM_USER> mfa_code=<MFA_TOKEN>
```

Aws temporary credentials and token are generated into default folder `~/.aws` and default token expiration time is 129600 (36h).

### Config

All environment variables:

| Environment Variable  | Default Value | Optional |
| ------------- | ------------- | ------------- |
| AWS_ACCESS_KEY_ID | _not set_ | no |
| AWS_SECRET_ACCESS_KEY | _not set_ | no |
| AWS_ACCOUNT_ID | _not set_ | no |
| AWS_REGION | _sa-east-1_ | yes |
| AWS_TOKEN_DURATION | _129600_ | yes |
| AWS_PROFILE | default | yes |

---

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)