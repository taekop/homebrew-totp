# homebrew-totp

TOTP CLI

Support Google-Authenticator spec as default.

| Hash | Period | Digit |      Key       |
|:----:|:------:|:-----:|:--------------:|
| HMAC-SHA1 |  30s   |   6   | Base32 encoded |

## Install

```
brew tap taekop/totp
brew install totp
```

## How to use

### Save name and key

Configuratinon file is stored at ${HOME}/.totp-config 

You can give force option (-f) to overwrite.

You can assign hash algorithm (-h), period (-t), digit (-g).

For not Base32 encoded key, give pure option (-p).

(ex) MFA key for aws. Choose virtual device -> Google Authenticator.

```
totp -n aws -k <key>
totp -n aws -k <key> -f
totp -n aws -k <key> -h sha256 -r 15 -g 8
totp -n aws -k <key> -p
```

### Get otp code

```
totp -n aws
```

### See list

```
totp -l
totp -al
```

### Delete

```
totp -d -n <name>
```

### For more details

```
totp
```