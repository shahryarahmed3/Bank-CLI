# Bank-CLI

Use this repository as a template for your Ruby CLI (command line interface) project.

- Ruby version: `3.2.1`

Files & Folders:
  - app.rb use (ruby app.rb) to run the program
  - bank.rb contains the bank class
  - bankaccount.rb contains the bank-account class
  - tests contains mini-tests

Description: 
This Bank command line interface app, allows instance(s) of a bank to be created, and 
be populated with instances of bank accounts. 

Bank - A financial institution object, with attributes: 
  - bank_name (String which stores the name of the financial institution)
  - num_accts (Integer which stores the number of accts at a single institute,
              useful for generating unique new bank account numbers)
  - accounts (Hash data structure which stores => account number : bank account object)
  
Bank Account - A user financial services account object, with attributes:
  - account_holder (String which stores the full name of the account holder)
  - account_number (Integer which stores an account number)
  - balance (Integer which stores the balance information)
  - pin (String which stores a 4-digit pin for user authentication)


[Menu Screen] - User has option to navigate the different services offered at "ABC Bank".
                This menu reappears after each transaction is complete allowing the user
                to make additional transactions.

    |||||||||||||||||||||| [ Welcome to ABC Bank! ] ||||||||||||||||||||||||

    ||||||||||||||||||||||||| [ Transaction Menu ] |||||||||||||||||||||||||


      1. Open a new account
      2. Deposit
      3. Withdraw
      4. Balance
      5. Exit

    Please select an option ==> 

[New Account Screen] - User provides their first name, last name, initial deposit amount, and a
                      new 4-digit PIN to create a bank account.

    |||||||||||||||||||||| [ Welcome to ABC Bank! ] ||||||||||||||||||||||||

    ||||||||||||||||||||||||| [ Transaction Menu ] |||||||||||||||||||||||||


      1. Open a new account
      2. Deposit
      3. Withdraw
      4. Balance
      5. Exit

    Please select an option ==> 1

    ||||||||||||||||||||||||||| [ New Account ] ||||||||||||||||||||||||||||

    To open a new bank account, please provide the following...

    First Name: shahryar
    Last Name: ahmed
    Create a new 4-digit PIN: 1234
    How much do you want to deposit? 1000

    Here's a summary of your new account credentials...

      Account Holder: Shahryar Ahmed
      Account Number: 1001
      Initial Deposit: $1000
      Your 4-digit PIN: 1234

      ================== -[ End of Transaction ]- ====================

[Deposit Screen] - To make a deposit, user needs to enter their account number, deposit amount,
                   and 4-digit PIN number. 

    ||||||||||||||||||||||||| [ Transaction Menu ] |||||||||||||||||||||||||


      1. Open a new account
      2. Deposit
      3. Withdraw
      4. Balance
      5. Exit

    Please select an option ==> 2

    ||||||||||||||||||||||||||| [ Deposit ] |||||||||||||||||||||||||||||||

    To make a deposit, please provide the following...

      Account Number: 1001

      How much would you like to deposit? 230

      Enter your 4-digit Pin: 1234

    Here's a summary of your deposit transaction...

      Account Holder: Shahryar Ahmed
      Account Number: 1001
      Deposit Amount: 230
      Account Balance: $1230

      ================== -[ End of Transaction ]- ====================


[Withdraw Screen] - To withdraw money, user needs to enter their account number, withdraw amount, 
                    and their 4-digit PIN number.

    ||||||||||||||||||||||||| [ Transaction Menu ] |||||||||||||||||||||||||


      1. Open a new account
      2. Deposit
      3. Withdraw
      4. Balance
      5. Exit

    Please select an option ==> 3

    ||||||||||||||||||||||||||| [ Withdraw ] |||||||||||||||||||||||||||||||

    To withdraw money, please provide the following...

      Account Number: 1001

      How much would you like to withdraw? 100

      Enter your 4-digit Pin: 1234

    Here's a summary of your withdrawl transaction...

      Account Holder: Shahryar Ahmed
      Account Number: 1001
      Withdraw Amount: 100
      Account Balance: $1130

      ================== -[ End of Transaction ]- ====================

[Balance Screen] - To display account balance, the user enters their account number, and 4-digit pin.

    ||||||||||||||||||||||||| [ Transaction Menu ] |||||||||||||||||||||||||


      1. Open a new account
      2. Deposit
      3. Withdraw
      4. Balance
      5. Exit

    Please select an option ==> 4

    ||||||||||||||||||||||||||| [ Balance ] |||||||||||||||||||||||||||||||

    For the account balance, please provide the following...

      Account Number: 1001

      Enter your 4-digit Pin: 1234

    Your account balance is...

      Account Holder: Shahryar Ahmed
      Account Number: 1001
      Account Balance: $1000

      ================== -[ End of Transaction ]- ====================
      
[Exit Screen] - To exit out of the program, user enters 5

    ||||||||||||||||||||||||| [ Transaction Menu ] |||||||||||||||||||||||||


      1. Open a new account
      2. Deposit
      3. Withdraw
      4. Balance
      5. Exit

    Please select an option ==> 5

    Thank you for choosing ABC Bank!
