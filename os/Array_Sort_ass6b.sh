function bubble(){
    for (( i=0; i<$n-1; i++))
    do
        for((j=0;j<$n-$i-1;j++))
        do
            if [ ${a[j]} -gt ${a[$((j+1))]} ]
            then
                temp=${a[j]}
                a[$j]=${a[$((j+1))]}
                a[$((j+1))]=$temp
            fi
        done
    done
}
function insertion(){
    for (( i=1; i<$n; i++))
    do
        key=${a[i]}
        j=`expr $i - 1`
        while [ $j -ge 0 ] && [ ${a[j]} -gt $key ]
        do
            a[$((j+1))]=${a[j]}
            j=`expr $j - 1`
        done
        a[$((j+1))]=$key
    done
}
echo enter no of elements:
read n
echo enter elements
for (( i=0; i<$n; i++ ))
do
read a[i]
done
echo 1.Bubble
echo 2.Insertion
echo Choose option:
read ch
case $ch in 
        1)bubble 
        echo Bubble Sort;;
        2)insertion
        echo Insertion Sort;;
esac

echo sorted array:
for (( i=0; i<$n; i++ ))
do
echo ${a[i]}
done
