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

## FAQ

Q: How to fix this error **Get "https://localhost.localdomain:8080/hello": x509: certificate relies on legacy Common Name field, use SANs or temporarily enable Common Name matching with GODEBUG=x509ignoreCN=0** ?

A: In http client side, run `export GODEBUG=x509ignoreCN=0` before sending http request. Why? see golang 1.15 release note https://go.dev/doc/go1.15#commonname

Also see How to create a self-signed SSL Certificate with SubjectAltName(SAN):
* https://gist.github.com/KeithYeh/bb07cadd23645a6a62509b1ec8986bbc
* https://raymii.org/s/tutorials/OpenSSL_generate_self_signed_cert_with_Subject_Alternative_name_oneliner.html

# Usage 3

```
go get github.com/cclin81922/tls/go-two-way-auth

cd $GOPATH/src/github.com/cclin81922/tls/go-two-way-auth/server/grpc
go run main.go

cd $GOPATH/src/github.com/cclin81922/tls/go-two-way-auth/client/grpc
go run main.go
```

# Acknowledge 1

TCP version server is forked from https://github.com/hydrogen18/test-tls

Origin author's blog http://www.hydrogen18.com/blog/your-own-pki-tls-golang.html

# Acknowledge 2

HTTP version server is forked from https://gist.githubusercontent.com/chriswhitcombe/2e0450294f370f493aec/raw/6e0abd16bfd53cf854fe50a4ccad86b26e5fe7dc/gistfile1.go

Origin author's blog http://www.bite-code.com/2015/06/25/tls-mutual-auth-in-golang/

# Acknowledge 3

gRPC version is forked from http://krishicks.com/post/2016/11/01/using-grpc-with-mutual-tls-in-golang/

Origin author's blog http://krishicks.com/post/2016/11/01/using-grpc-with-mutual-tls-in-golang/

# Related resources

* gRPC version https://bbengfort.github.io/programmer/2017/03/03/secure-grpc.html
* gRPC version https://github.com/enricofoltran/hello-auth-grpc
