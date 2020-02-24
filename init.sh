!#/bin/bash

#set up the keys for git first! 

function preliminary_work {
  mkdir -p jenkins_home/ logs/nginx/ certs/
}

function create_certs {
  cd certs && \
  openssl req -x509 \
    -newkey rsa:4096 \
    -keyout self_signed_key.pem \
    -out self_signed_cert.pem \
    -days 365 \
    -nodes -subj '/CN='$(hostname)
    cd ..
}

function run {
  preliminary_work
  create_certs
  ./start-prod.sh
}

run
