#!/bin/sh
filename=$name+_vol_$(date +%F-%T).tar.gz
tar -zcvf $filename /to_backup

mv $filename /backup/
