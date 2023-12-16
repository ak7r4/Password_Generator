#!/bin/bash
#Script to create best default passwords to brute force e-mails of an company
#The user only need to inform the name, region of the company and when the company was founded

#Get the information
echo "What is the company name: "
read name
echo "What is the country of $name:  "
read place
echo "When $name was founded (year): "
read founded

#discover years to add on paswords
temp=$(date '+%y')
year="20$temp"
next_year=$(($year+1))
last_year=$(($year-1))

#Generating Passwords
declare -a especial=('!' '@' '#' '$' '%' '*' '.' '-' '_' '+')
for i in {0..9}; do
echo "$last_year${especial[i]}$name"
echo "$year${especial[i]}$name"
echo "$next_year${especial[i]}$name"

echo "$last_year${especial[i]}$place"
echo "$year${especial[i]}$place"
echo "$next_year${especial[i]}$place"

echo "$name${especial[i]}$last_year"
echo "$name${especial[i]}$year"
echo "$name${especial[i]}$next_year"

echo "$place${especial[i]}$last_year"
echo "$place${especial[i]}$year"
echo "$place${especial[i]}$next_year"

echo "$place$last_year${especial[i]}"
echo "$place$year${especial[i]}"
echo "$place$next_year${especial[i]}"

echo "$name$last_year${especial[i]}"
echo "$name$year${especial[i]}"
echo "$name$next_year${especial[i]}"

echo "$last_year$place${especial[i]}"
echo "$year$place${especial[i]}"
echo "$next_year$place${especial[i]}"

echo "$last_year$name${especial[i]}"
echo "$year$name${especial[i]}"
echo "$next_year$name${especial[i]}"

echo "${especial[i]}$last_year$name"
echo "${especial[i]}$year$name"
echo "${especial[i]}$next_year$name"

echo "${especial[i]}$last_year$place"
echo "${especial[i]}$year$place"
echo "${especial[i]}$next_year$place"

echo "${especial[i]}$place$last_year"
echo "${especial[i]}$place$year"
echo "${especial[i]}$place$next_year"

echo "${especial[i]}$name$last_year"
echo "${especial[i]}$name$year"
echo "${especial[i]}$name$next_year"


echo "$name${especial[i]}$founded"
echo "$place${especial[i]}$founded"
echo "$founded${especial[i]}$place"
echo "$founded${especial[i]}$name"
echo "${especial[i]}$founded$name"
echo "${especial[i]}$founded$place"
echo "${especial[i]}$name$founded"
echo "${especial[i]}$place$founded"
echo "$founded$name${especial[i]}"
echo "$founded$place${especial[i]}"
echo "$name$founded${especial[i]}"
echo "$place$founded${especial[i]}"

done
