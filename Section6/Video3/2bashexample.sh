while [ 1 ]
 do
   number=$RANDOM
   let "number %= 500"
   echo callcenter.volume.numcalls $number `date +%s` | nc -w 3 localhost 22003
   sleep 5
 done
