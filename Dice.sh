  GNU nano 6.2                                                                                         dice.sh
#!/bin/bash -x

die1=$((RANDOM%6 +1))
echo "Die: $die1"
Count_1=0
Count_2=0
Count_3=0
Count_4=0
Count_5=0
Count_6=0
while  :
do
    die=$((RANDOM %6 +1))
    if [ $die == 1 ]
    then
        Count_1=$(( $Count_1+1 ))
        echo "$die: $Count_1 Times"
        if [ $Count_1 == 10 ]
        then
                echo "Highest is: $die"
                break;
        fi
    elif [ $die == 2 ]
    then
        Count_2=$(( $Count_2+1 ))
        echo "$die : $Count_2 Times"
        if [ $Count_2 == 10 ]
        then
                echo "Highest is: $die"
                break;
        fi
    elif [ $die == 3 ]
    then
        Count_3=$(( $Count_3+1 ))
        echo "$die : $Count_3 Times"
        if [ $Count_3 == 10 ]
        then
                echo "Highest is: $die"
                break;
         fi
    elif [ $die == 4 ]
    then
        Count_4=$(( $Count_4+1 ))
        echo "$die  : $Count_4 Times"
        if [ $Count_4 == 10 ]
        then
                echo "Highest is: $die"
                break;
        fi
    elif [ $die == 5 ]
    then
        Count_5=$(( $Count_5+1 ))
        echo "$die  : $Count_5 Times"
        if [ $Count_5 == 10 ]
        then
                echo "Highest is: $die"
                break;
	 fi
    elif [ $die == 6 ]
    then
        Count_6=$(( $Count_6+1 ))
        echo "$die : $Count_6 Times"
        if [ $Count_6 == 10 ]
        then
                echo "Highest is: $die "
                break;
        fi
    fi
done


declare -A Store
Store[0]="Number1:$Count_1"
Store[1]="Number2:$Count_2"
Store[2]="Number3:$Count_3"
Store[3]="Number4:$Count_4"
Store[4]="Number5:$Count_5"
Store[5]="Number6:$Count_6"
echo "Dictionary of dies number and it's count is : { ${Store[@]} }"

