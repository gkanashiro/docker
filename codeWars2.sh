#!/bin/bash

mc=0
mch=null
prev_char=null
ent=$1
if [ -z $ent ]
then
echo ",0"
else
if [${#ent} = 1 ]
then
echo "$ent,"
else
maxDetected=1
presentChar=''
presentCount=0
answer1=${ent:0:1}
answer2=1
maxLength=${#ent}
for ((n=0;n<=$((maxLength-1));n++)) do
  presentChar=${ent:n:1}
  presentCount=1
  for ((j=n+1;j<maxLength;j++)) do
  if [ ${ent:j:1} = ${ent:n:1} ] 
  then
   (( presentCount++ ))
    else
    break
    fi
  done
  if (($presentCount > $maxDetected))
  then
     maxDetected=$presentCount
    answer1=${ent:n:1}
     answer2=$maxDetected
  fi
  done
  
   echo "$answer1,$answer2"
fi
fi
