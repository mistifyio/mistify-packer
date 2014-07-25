apt-get -y install curl

mkdir -p /usr/src
cd /usr/src

curl -L -O http://golang.org/dl/go1.3.linux-amd64.tar.gz

tar -C /usr/local -zxf go1.3.linux-amd64.tar.gz

cat <<EOF > /etc/profile.d/go.sh
GOPATH=\$HOME/go
export GOPATH
PATH=\$GOPATH/bin:\$PATH:/usr/local/go/bin
export PATH
EOF

