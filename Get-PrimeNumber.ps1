<#
	.SYNOPSIS
		This script gets prime numbers within a given range.
	
	.DESCRIPTION
		This script tests for and identifies all prime numberes that exist within a specified range of numbers and retuerns an array contianing the identied primes.
	
	.PARAMETER Minimum
		The lower boundry for the range of numbers that should be tested for the existence of prime numbers.
	
	.PARAMETER Maximum
		The upper  boundry for the range of numbers that should be tested for the existence of prime numbers.
	
	.OUTPUTS
		Array
	
	.NOTES
		================================================================================================
		Created with: 			SAPIEN Technologies, Inc., PowerShell Studio 2022 v5.8.213
		Created on:   			6/13/2024 11:357 PM
		Created by:   			Jonathan Fierstein
		Organization:
		Filename:				Get-PrimeNumber.ps1
		Repository:				https://github.com/JonathanFierstein/PrimeTest-PoSh
		Recent Code Changes:	Refactored Code to Function as a Self Contained Script
		================================================================================================
#>
[CmdletBinding(DefaultParameterSetName = 'Minimum',
			   ConfirmImpact = 'None',
			   PositionalBinding = $true)]
[OutputType([Array], ParameterSetName = 'Minimum')]
[OutputType([array])]
param
(
	[Parameter(ParameterSetName = 'Minimum',
			   ValueFromPipeline = $true,
			   ValueFromPipelineByPropertyName = $true,
			   Position = 0)]
	[int32]$Minimum = 1,
	[Parameter(ParameterSetName = 'Minimum',
			   Mandatory = $true,
			   ValueFromPipeline = $true,
			   ValueFromPipelineByPropertyName = $true,
			   Position = 1)]
	[int32]$Maximum
)

Begin
{
	function Test-PrimeNumber
	{
	<#
	.SYNOPSIS
		Tests whether a number is a prime number.
	
	.DESCRIPTION
		This function takes an integer as input and will test that integer to see if it is a prime number and return a [boolean] result.
	
	.PARAMETER Number
		This is the number that should be tested to see if it is a prime number.
	
	.EXAMPLE
				PS C:\> Test-PrimeNumber -Number $value1
	
	.NOTES
		If the integer passed to Test-PrimeNumber is only divisible by 1 and itself, the this function returns true because this is a prime number.
		If the integer passed to Test-PrimeNumber is divisible by any other number, this function returns false because it is not a prime numnber.
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
	
	
}
Process
{
	switch ($PsCmdlet.ParameterSetName)
	{
		'Minimum' {
			
			
			#Start of Script Processing for Minimum Parameter Set
			#Begin Processing of Get-PrimeNumber Call Using MinMax Parameter Set
			$IdentifiedPrimeNumbers = @()
			#Begin for loop to process each number between the minimum and maximum parameters
			For ($i = $Minimum; $i -ile $Maximum; $i++)
			{
				$TestResult = Test-PrimeNumber -Number $i
				if ($TestResult -eq $true)
				{
					$IdentifiedPrimeNumbers += $i
				}
			}
			
			return $IdentifiedPrimeNumbers
			#End of Script Processing for the Minimum Parameter Set
		}
	}
	
}
End
{
	
}



