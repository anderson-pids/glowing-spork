# glowing-spork
Glowing spork is an utility to generate aws temporary credencials. 

## Instalation
- Required
    export environment variables:
        AWS_ACCESS_KEY_ID
        AWS_SECRET_ACCESS_KEY
        AWS_ACCOUNT_ID
and then:
> make aws-auth username=<IAM_USER> mfa_code=<MFA_TOKEN>

- FAQ
    1. Check permissions of folder `~/.aws`