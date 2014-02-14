

import 'dart:io';
import 'dart:math';

const double interest = 0.02;

void main() {
  print("How much money would Peter Minuit have earned\nhad his money gone into a bank account With 2% interest?"
                 "\nDo we want to calculate using simple interest of compount interest? You decide!");
  chooseCalc();  
  
}

void chooseCalc()
{
  bool validInput = false;
  
  print("\nType \"simple\" to calculate using simple interest, or \"compound\" to calculate using compound interest!\n");
  
  do
  {
    String userInput = stdin.readLineSync();
    
    switch (userInput.toLowerCase())
    {
      case "simple":
        calcSimpleInterest(1000, 1626, 2014);
        validInput = true; 
        break;
      case "compound":
        calcCompoundInterest(1000, 1626, 2014);
        validInput = true; 
        break;
      default:      
        print("Good typing skills, try again.");
        validInput = false;
    }
  } while (!validInput);
  
}

// Calculates the amount based on the simple interest model.
String calcSimpleInterest(int initialAmount, int startYear, int currentYear)
{
  
  int numYears = currentYear - startYear;
  double newTotal = initialAmount * interest * numYears;
  
  String msg = "\nTurns out, Peter Minuit (or his descendents) would now have \$$newTotal\nhad he put that \$$initialAmount into savings,"
                "\nbased on a simple interest rate, of course.";
  print(msg);
}

// Calculates the amount based on the compounding interest model.
String calcCompoundInterest(int initialAmount, int startYear, int currentYear)
{
  int n; // number of times per year the interest will be compounded.
  int numYears = currentYear - startYear;
  
  bool validInput = false;
  
  print("How many times per year should we compound the interest?\nChoices are 1, 2, 3, and 4 times.");
  do
  {
    String userInput = stdin.readLineSync();   
    try 
    {
      (int.parse(userInput));
      n = int.parse(userInput);
      validInput = true;
    } 
    catch (e)
    {      
      print("\nInvalid input, please input a number between 1 and 4.");
      validInput = false;
    }
  } while (!validInput);
   
  double newTotal = (initialAmount * pow(1 + (interest/n),(n * numYears))).roundToDouble();
  
  String msg = "\nTurns out, Peter Minuit (or his descendents) would now have \$$newTotal\nhad he put that \$$initialAmount into savings."
               "\n-based on an interest rate that compounded $n times per year.";
  print(msg);
}


// A currency formatter.
double currencyFormat(double num)
{
  double money;
  if (num > 999)
  {
    print("eat a butt");
  }
  return money;
}











