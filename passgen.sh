#!/bin/bash
#Script to create best default passwords to brute force e-mails of an company
#The user only need to inform the name, region of the company and when the company was founded

#Get the information
if [ $# -lt 4 ]
then
   echo "passgen.sh Company Brasil 1992 output.txt"
else
 name=$1
 place=$2
 founded=$3
 output=$4


#discover years to add on paswords
temp=$(date '+%y')
year="20$temp"
next_year=$(($year+1))
last_year=$(($year-1))

#Generating Passwords
declare -a especial=('!' '@' '#' '$' '%' '*' '.' '-' '_' '+')

# Arrays for the different parts of the password
elements=("$name" "$place" "$last_year" "$current_year" "$next_year" "$founded")

# Generate passwords

for i in {0..9}; do
    for prefix in "$last_year" "$year" "$next_year" "$name" "$place"; do
        for suffix in "$last_year" "$year" "$next_year" "$name" "$place"; do
            if [[ "$prefix" != "$suffix" ]]; then
                echo "$prefix${especial[i]}$suffix" | tee -a $output
            fi
        done
    done
    # Adicionando combinações com o ano de fundação
    for item in "$name" "$place" "$founded"; do
        echo "${especial[i]}$item" | tee -a $output
        echo "$item${especial[i]}$founded" | tee -a $output
    done
done
fi
