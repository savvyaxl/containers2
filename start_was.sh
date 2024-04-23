#!/bin/sh
start(){
    /opt/IBM/WebSphere/AppServer/bin/startServer.sh server1
}
end(){
    trap - SIGINT SIGTERM SIGSTOP# clear the trap
    /opt/IBM/WebSphere/AppServer/bin/stopServer.sh server1
}
trap end SIGINT SIGTERM SIGSTOP
start
while(true)
do
  sleep 1
done

