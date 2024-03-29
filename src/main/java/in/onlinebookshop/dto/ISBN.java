package in.onlinebookshop.dto;

import java.util.*;
public class ISBN
{
     // declare variables
     String number = null;
     boolean result = false;
     int flag=0;
ISBN(String number){

    

     //create Scanner class object to take input
     Scanner scan = new Scanner(System.in);

     // take input from end-user
     System.out.print("Enter number::");
     number = scan.nextLine();

     // check number is isbn number or not
     result = isISBN(number);

     // display result
     if(result){
     System.out.println(number +
          " is an isbn number.");
        flag=1;  
        }
     else{
     System.out.println(number +
          " is not an isbn number.");
        flag=0;
        }
    }
   // method to check number is ISBN 
   public static boolean isISBN(String number) {

      // declare variable
      int length = 0;

      // remove all hyphens
      number = number.replace("-", "");
      // remove all spaces
      number = number.replace(" ", "");

      // check result string is a number or not
      try {
         // except for the case where
         // ISBN-10 ends with X or x
         char ch = number.charAt(9);
         ch = Character.toUpperCase(ch);
         if( ch != 'X') {
            // don't store, only check
            Long.parseLong(number);
         }
      } catch(NumberFormatException nfe) {
         // not a number
         return false;
      }

      // find length
      length = number.length();
      if(length==13)
         return isISBN13(number);
      else if(length==10)
         return isISBN10(number);

      return false;
   }

   // method to check ISBN-10
   private static boolean isISBN10(String number) {

      // declare variables
      int sum = 0;
      int digit = 0;
      char ch = '\0';

      // add upto 9th digit
      for(int i=1; i<=9; i++) {
         ch = number.charAt(i-1);
         digit = Character.getNumericValue(ch);
         sum += (i* digit);
      }

      // last digit
      ch = number.charAt(9);
      ch = Character.toUpperCase(ch);
      if(ch =='X')
         sum += (10*10);
      else {
         digit = Character.getNumericValue(ch);
         sum += (digit * 10);
      }

      // check sum 
      if(sum % 11 == 0)
         return true;

      return false;
   }

   // method to check ISBN-13
   private static boolean isISBN13(String number) {

      // declare variables
      int sum = 0;
      int multiple = 0;
      char ch = '\0';
      int digit = 0;

      // add digits
      for(int i=1; i<=13; i++) {

         if(i % 2 == 0)
            multiple = 3;
         else multiple = 1;

         // fetch digit
         ch = number.charAt(i-1);
         // convert it to number
         digit = Character.getNumericValue(ch);

         // addition
         sum += (multiple*digit);
      }

      // check sum
      if(sum%10 == 0)
         return true;
      return false;
   }

}