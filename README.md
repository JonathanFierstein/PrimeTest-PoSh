# PrimeTest-Posh  

## Get-PrimeNumber.ps1

This is a Powershell based version of my simple project for students to 
develop a Powershell script that contains a function which will evaluate a 
range of numbers for the presence of prime numbers.   

The primary program produced by this project is a script entitled Get-PrimeNumber.ps1.   This script accepts 2 parameters...
    -Minimum (This is the lower end of the range of numbers to be tested.  Default=1)
    -Maximum (This is the high end of the range of numbers to be tested.  Mandatory.)
    
Once you have specified a maximum or and minimum/maximum, the script will then go and test each number in the range to see if it is a prime number.   Once all the numbers have been tested, an array will be returned that contains all of the prime numbers identified.

