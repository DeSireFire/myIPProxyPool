#!/bin/sh

pid=`ps -ef|grep "python -u IPProxy.py"| grep -v "grep"|awk '{print $2}'`

if [ "$pid" != "" ]
then
        echo "IPProxy.py already run, stop it first"
        kill -9 ${pid}
fi

echo "starting now..."

nohup python -u IPProxy.py > test.out 2>&1 &

pid=`ps -ef|grep "python -u IPProxy.py"| grep -v "grep"|awk '{print $2}'`

echo ${pid} > pid.out
echo "IPProxy.py started at pid: "${pid}