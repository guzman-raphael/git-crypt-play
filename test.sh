# !/bin/bash

apt-get update
apt-get install openssl git git-crypt -y

git config --global user.email "raphael.h.guzman@gmail.com"
git config --global user.name "Raphael Guzman"

git init

gpg --batch --gen-key <<EOF
Key-Type: 1
Key-Length: 4096
Subkey-Type: 1
Subkey-Length: 4096
Name-Real: Raphael Guzman
Name-Email: raphael.h.guzman@gmail.com
Expire-Date: 1d
Passphrase: potatoe
# Do a commit here, so that we can later print "done" :-)
%commit
%echo done
EOF

git-crypt init

git-crypt add-gpg-user raphael.h.guzman@gmail.com

# gpg --delete-secret-keys raphael.h.guzman@gmail.com

# gpg --delete-keys raphael.h.guzman@gmail.com


# gpg --full-generate-key

# gpg --list-keys

