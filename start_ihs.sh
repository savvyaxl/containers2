#!/bin/sh
start(){
    /opt/IBM/HTTPServer/bin/apachectl start
}
end(){
    trap - SIGINT SIGTERM SIGSTOP# clear the trap
    /opt/IBM/HTTPServer/bin/apachectl stop
}
trap end SIGINT SIGTERM SIGSTOP
start
while(true)
do
  sleep 1
done

