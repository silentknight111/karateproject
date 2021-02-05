Feature:  karate db test suite 15
  Interacting with DB

  Background: dbInit
    * def db = Java.type('misc.mydbutil')

  @select
  Scenario: select stmt test case

    * def rows = db.selectStatement("select * from tools")
    * print rows
    * match rows contains "Selenium"

  @insert
  Scenario: insert stmt test case

    * def res = db.insertStatement("Insert into tools values(110,'sample2','xyz')")
    * print res
    * match res == 'Success'

  Scenario: update stmt test case

    * def rowsAffected = db.updateStatement("update tools set id=1111 where id=105")
    * print rowsAffected
    * assert rowsAffected >= 1

  Scenario: delete stmt test case

    * def rowsAffected = db.deleteStatement("delete from tools where id=110")
    * print rowsAffected
    * assert rowsAffected >= 1
