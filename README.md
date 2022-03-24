This is the Graylog project;
I managed to install Graylog using docker-compose, I configure it. 
I create a snapshot on store index on remote shared storage as a backup repository for snapshots, then I configured a policy for snapshots to be created automatically with a retention policy 
After that, I integrated Kibana to help manage indices and snapshots easily.

# graylog_project
to generate password
echo -n "Enter Password: " && head -1 </dev/stdin | tr -d '\n' | sha256sum | cut -d" " -f1
http://localhost:5601/app/management/data/index_management/indices