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



<#
	.SYNOPSIS
		Tests a range of numbers for the existance of primes.
	
	.DESCRIPTION
		This functions tests each number in a range of number for the presence of primes and returns an array of all the prime numbers contained within the range.
	
	.PARAMETER Minimum
		This is lower boundry of the range of numbers that should be tested for the existance of primes.
	
	.PARAMETER Maximum
		This is the upper boundry of the range of numbers that should be tested for the existence of primes.
	
	.EXAMPLE
				PS C:\> Get-PrimeNumber
	
	.OUTPUTS
		array
	
	.NOTES
		Additional information about the function.
#>
function Get-PrimeNumber
{
	[CmdletBinding(DefaultParameterSetName = 'MinMax')]
	[OutputType([array], ParameterSetName = 'MinMax')]
	[OutputType([array])]
	param
	(
		[Parameter(ParameterSetName = 'MinMax',
				   Position = 0)]
		[ValidateNotNullOrEmpty()]
		[System.Int64]$Minimum = 1,
		[Parameter(ParameterSetName = 'MinMax',
				   Position = 1)]
		[ValidateNotNullOrEmpty()]
		[System.Int64]$Maximum = 1000
	)
	
	switch ($PsCmdlet.ParameterSetName)
	{
		'MinMax' {
			#TODO: Place script here
			break
		}
	}
	
}




