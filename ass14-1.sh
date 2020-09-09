#!/bin/bash -x
echo "User Regitration"

function getFirstName()
{
	read -p "Enter First name :" fname
	UC1="^[A-Z][a-zA-Z]{2,}$"

	if [[ $fname =~ $UC1 ]]
	then
		echo "First name is Valid"
	else
		echo "Fisrt name is InValid"
	fi
}

function getLastName()
{
	read -p "Enter Last name:" lname
	UC2="^[A-Z][a-zA-Z]{2,}$"


	if [[ $lname =~ $UC2 ]]
	then
		echo "Last name is Valid"
	else
		echo "Last name is InValid"
	fi
}

function getEmail()
{
	read -p "Enter Email Address:" email
	UC3="^[abc]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"

	if [[ $email =~ $UC3 ]]
	then
		echo "Email is Valid"
	else
		echo "Email is InValid"
	fi
}

function getMobileNumber()
{
	read -p "Enter MobileNumber:" number
	UC4="^[0-9]{2,3}[[:space:]][0-9]{10}$"

	if [[ $number =~ $UC4 ]]
	then
		echo "Number is Valid"
	else
		echo "Number is Invalid"
	fi
}

function getPassword()
{
	read -p "Enter Password:" password
	UC5=$(($(tr -d '[[:alnum:]]' <<< $password | wc -m)-1))

	if ! [[ ${#password} -ge 8 && $password =~ [[:upper:]] && $password =~ [[:lower:]] && $password =~ [[:digit:]] ]]
	then
		echo "Password is Valid"
	else
		echo "Password is invalid"
	fi
}

getFirstName
getLastName
getEmail
getMobileNumber
getPassword

