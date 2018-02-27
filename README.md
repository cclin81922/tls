# tls

Usage

```
# @ vagrant host
vagrant up
vagrant ssh

# @ vagrant guest
sudo su

cd /vagrant
bash provision.sh

cd /vagrant/data/pki
curl --cert ./client.cert.pem --key ./client.key.pem --cacert ca.cert.pem https://localhost
curl --cert ./client.cert.pem --key ./client.key.pem --insecure https://localhost
curl --cert ./client.cert.pem --key ./client.key.pem --insecure https://localhost/wsgi
```
