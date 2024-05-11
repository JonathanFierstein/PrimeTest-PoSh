<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2022 v5.8.213
	 Created on:   	5/4/2024 9:53 PM
	 Created by:   	Jonathan Fierstein
	 Organization: 	
	 Filename: PrimeTest.ps1	
	===========================================================================
	.DESCRIPTION
		This script contains a function, Get-PrimeNumber, which will evaluate a range of numebrs
		for the presence of prime numbers.   
#>


function Test-IsNumberPrime
{
	<#
	.SYNOPSIS
		Tests whether a number is a prime number.
	
	.DESCRIPTION
		This function takes an integer as input and will test that integer to see if it is a prime number and return a [boolean] result.
	
	.PARAMETER Number
		This is the number that should be tested to see if it is a prime number.
	
	.EXAMPLE
				PS C:\> Test-IsNumberPrime -Number $value1
	
	.NOTES
		If the integer passed to Test-IsNumberPrime is only divisible by 1 and itself, the this function returns true because this is a prime number.
		If the integer passed to Test-IsNumberPrime is divisible by any other number, this function returns false because it is not a prime numnber.
	#>
	[CmdletBinding()]
	[OutputType([boolean])]
	param
	(
		[Parameter(Mandatory = $true,
				   ValueFromPipeline = $true,
				   Position = 0)]
		[ValidateNotNullOrEmpty()]
		[System.Int64]$Number
	)
	
	Begin
	{
		
	}
	Process
	{
		#Test if $Number is Even
		if ($Number % 2 -eq 0)
		{
			return $false
		}
		
		
		#For Loop to test if $Number is divisible by any odd number from 3 to ($Number-2)
		for ($i = 2; $i -lt ($Number - 1); $i++)
		{
			if ($Number % $i -eq 0)
			{
				return $false
			}
		}
		
		return $true
	}
	End
	{
		
	}
}



function Get-PrimeNumber
{
	<#
	.SYNOPSIS
		Tests a range of numbers for the presence of prime numbers.
	
	.DESCRIPTION
		This function takes a range of numbers and tests each number to see if it is a prime number.   Any identified prime numebrs will be returned by the function.
	
	.PARAMETER Minimum
		The lowest number that should be tested to see if it is a prime numebr.
	
	.PARAMETER Maximum
		The highest number that should be tested to see if it is a prime number.
	
	.EXAMPLE
				PS C:\> Get-PrimeNumber
	
	.NOTES
		Additional information about the function.
	#>
	
	[CmdletBinding()]
	[OutputType([array])]
	param
	(
		[Parameter(Position = 0)]
		[Integer]$Minimum = 1,
		[Parameter(Position = 1)]
		[ValidateNotNullOrEmpty()]
		[Integer]$Maximum
	)
	
	#TODO: Place script here
}




