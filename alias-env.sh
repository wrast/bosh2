# Configure local alias
bosh2 alias-env bosh-1 -e 10.0.0.6 --ca-cert <(bosh2 int ./creds.yml --path /director_ssl/ca)

# Log in to the Director
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=`bosh2 int ./creds.yml --path /admin_password`

# Query the Director for more info
bosh2 -e bosh-1 env
