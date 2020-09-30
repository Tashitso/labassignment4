#! /bin/sh

#initialize variable
reverse=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"

#reverse sequence with command rev

reverse=`rev $sequence`

echo "$sequence
$reverse
"

#complement sequence
rc=`echo $reverse | tr 'atcgATCG' 'tagcTAGC'`

echo "$rc
"

echo $name >$1.rc.txt
echo $rc >>$1.rc.txt
<<<<<<< HEAD
=======
# add reflection 

>>>>>>> 08e9301c66b745a318cb3c2d161da58e5f8edc9c
