#!/bin/sh

pid=`ps -ef|grep "python -u IPProxy.py"| grep -v "grep"|awk '{print $2}'`

if [ "$pid" != "" ]
then
        kill -9 ${pid}
        echo "stop IPProxy.py complete"
else
        echo "IPProxy.py is not run, there's no need to stop it"
fi

