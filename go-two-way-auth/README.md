# Usage

```
go get github.com/cclin81922/tls/go-two-way-auth

go install github.com/cclin81922/tls/go-two-way-auth/server
$GOPATH/bin/server data/pki/server.key.pem data/pki/server.cert.pem data/pki/ca.cert.pem

go install github.com/cclin81922/tls/go-two-way-auth/client
$GOPATH/bin/client data/pki/client.key.pem data/pki/client.cert.pem data/pki/ca.cert.pem
```

# Acknowledge

Forked from https://github.com/hydrogen18/test-tls

Origin author's blog http://www.hydrogen18.com/blog/your-own-pki-tls-golang.html
