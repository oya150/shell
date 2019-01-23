echo 'start'

user_id=""
password=""
server="$1"
default_server_name=""
server_name=""

echo $server

if [ "${server}" = 'btm' ]; then
        server_name=""
elif [ "${server}" = 'bqmh' ]; then
        server_name=""
elif [ "${server}" = 'bqwh' ]; then
        server_name=""
else
     echo "no server"
     return
fi

echo $server_name

`curl -X  POST -u $user_id:$password http://www.jenkins.com/view/$server_name/build?delay=3sec`

