#!/bin/bash
echo "Link in preinstalled packages...";
ln -s /root/node_modules /root/app/node_modules
echo "gulp start the app...";
cd /root/app;rm -Rf public;${gulpCommand} > gulp.log 2>&1 &
echo "Launch the SSHD server...";
/usr/sbin/sshd -D
