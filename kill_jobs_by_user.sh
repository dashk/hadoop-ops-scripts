for i in $( hadoop job -list | grep -w $1 | awk '{ print $1 }' | grep job_ ); do
    echo Killing Job $i
    hadoop job -kill $i
done
