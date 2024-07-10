# Bank-CLI

Use this repository as a template for your Ruby CLI (command line interface) project.

- Ruby version: `3.2.1`

This Bank command line interface app, allows instance(s) of a bank to be created, and 
be populated with instances of bank accounts. 


Bank - A financial institution object, with attributes: 
  - bank_name (String which stores the name of the financial institution)
  - num_accts (Integer which stores the number of accts at a single institute,
              useful for generating unique new bank account numbers)
  - accounts (Hash data structure which stores => account : bank account object)
  
Bank Account - A user financial services account object, with attributes:
  - account_holder (String which stores the full name of the account holder)
  - account_number (Integer which stores an account number)
  - balance (Integer which stores the balance information)
  - pin (Integer which stores a 4-digit pin for user authentication)


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
