Feature: Print hello world feature

  Scenario: Hello World scenario

    * print 'Hello World'
    * print 'Hello again'


  Scenario: Declare and print variables sum

    * def balance = 200
    * def fee = 20
    * def tax = 10
    * def totalName = 'total amount -->'
    * print  totalName + (balance + tax + fee)


  Scenario: Declare and print variables multiply

    * def balance = 200
    * def fee = 20
    * def tax = 10
    * def totalName = 'total amount -->'
    * print  totalName + (balance + tax * fee)


