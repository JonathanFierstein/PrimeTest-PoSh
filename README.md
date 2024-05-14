# PrimeTest-Posh  

This is a powershell based version of my simple project for students to 
develop a Powershell script that contains a function which will evaluate a 
range of numbers for the presence of prime numbers.   

The PrimeTest.ps1 script loads 2 functions into memory when it is executed.
The first function is Test-PrimeNumber which accepts an integer as a parameter
and then tests the supplied number to see if it is a prime number or not.  The
second funciton is Get-PrimeNumber which, as of now, has one parameter set which
accepts 2 integers, Minimum and Maximum.   The function then tests every number 
between the minimum and maximum numbers to see if they are prime numbers.   This
function returns an array that contains all identified prime numbers.