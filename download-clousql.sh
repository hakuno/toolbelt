#!/bin/bash
sudo wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O /usr/local/bin/cloud_sql_proxy

# Authorize
sudo chmod +x /usr/local/bin/cloud_sql_proxy

# Spread the word
sudo ln -sf /usr/local/bin/cloud_sql_proxy /usr/bin/cloud_sql_proxy
