
# graylog_project
to generate password
echo -n "Enter Password: " && head -1 </dev/stdin | tr -d '\n' | sha256sum | cut -d" " -f1
http://localhost:5601/app/management/data/index_management/indices