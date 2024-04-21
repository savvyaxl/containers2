#!/bin/sh
start(){
    /suportedbdc/IBM/WebSphere/AppServer/bin/startServer.sh server1
}
end(){
    trap - SIGINT SIGTERM SIGSTOP# clear the trap
    /suportedbdc/IBM/WebSphere/AppServer/bin/stopServer.sh server1
}
trap end SIGINT SIGTERM SIGSTOP
start
while(true)
do
  sleep 1
done

