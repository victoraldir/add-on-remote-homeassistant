#!/usr/bin/with-contenv bashio
echo Starting SSH tunnel
hostip=$(ip route show | awk '/default/ {print $3}')
ssh -tt -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o PubkeyAuthentication=yes -o PasswordAuthentication=no -o ExitOnForwardFailure=yes -i labkeypair.pem -R 8888:$hostip:8123 ec2-user@12.12.12.12
echo Tunnel started
