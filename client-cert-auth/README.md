# client certificate authentication

a.k.a. two-way ssl authentication

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
curl --cert ./client.cert.pem --key ./client.key.pem --cacert ca.cert.pem https://localhost.localdomain
curl --cert ./client.cert.pem --key ./client.key.pem --insecure https://localhost.localdomain
curl --cert ./client.cert.pem --key ./client.key.pem --insecure https://localhost.localdomain/wsgi
curl --cert ./client.cert.pem --key ./client.key.pem --insecure https://localhost.localdomain/flask/
curl --cert ./client.cert.pem --key ./client.key.pem --insecure https://localhost.localdomain/flask/counter
curl --cert ./client.cert.pem --key ./client.key.pem --insecure https://localhost.localdomain/django/
curl --cert ./client.cert.pem --key ./client.key.pem --insecure https://localhost.localdomain/pecan/
```
