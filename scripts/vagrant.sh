
cd /vagrant

opam init
opam config env
opam switch tezos --alias-of 4.04.0
eval `opam config env`

make build-deps

make
