#!/bin/sh
start(){
    /opt/IBM/HTTPServer/bin/apachectl start
}
end(){
    trap - SIGINT SIGTERM SIGSTOP
    /opt/IBM/HTTPServer/bin/apachectl stop
    exit
}
trap end SIGINT SIGTERM SIGSTOP
start
while(true)
do
  sleep 1
done

