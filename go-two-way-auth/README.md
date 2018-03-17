# Usage 1

```
go get github.com/cclin81922/tls/go-two-way-auth

go install github.com/cclin81922/tls/go-two-way-auth/server
$GOPATH/bin/server data/pki/server.key.pem data/pki/server.cert.pem data/pki/ca.cert.pem

go install github.com/cclin81922/tls/go-two-way-auth/client
$GOPATH/bin/client data/pki/client.key.pem data/pki/client.cert.pem data/pki/ca.cert.pem
```

# Usage 2

```
go get github.com/cclin81922/tls/go-two-way-auth

cd $GOPATH/src/github.com/cclin81922/tls/go-two-way-auth/server/http
go run main.go

cd $GOPATH/src/github.com/cclin81922/tls/go-two-way-auth/client/http
go run main.go
```

# Acknowledge 1

TCP version server is forked from https://github.com/hydrogen18/test-tls

Origin author's blog http://www.hydrogen18.com/blog/your-own-pki-tls-golang.html

# Acknowledge 2

HTTP version server is forked from https://gist.githubusercontent.com/chriswhitcombe/2e0450294f370f493aec/raw/6e0abd16bfd53cf854fe50a4ccad86b26e5fe7dc/gistfile1.go

Origin author's blog http://www.bite-code.com/2015/06/25/tls-mutual-auth-in-golang/
