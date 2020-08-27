Feature: karate ui automation

@reuse
Scenario: reuse section
Given driver 'http://www.seleniumeasy.com/test/'
And waitFor("//*[@id=\'at-cv-lightbox-button-holder\']/a[2]")
And optional("//*[@id=\'at-cv-lightbox-button-holder\']/a[2]").click()
And waitFor("//a[@class='dropdown-toggle'][contains(text(),'List Box')]")
And click("//a[@class='dropdown-toggle'][contains(text(),'List Box')]")

 Scenario: 01 Test three drop-down options after clicking Progress Bar tab
    Given driver 'http://www.seleniumeasy.com/test/'
    * def res = call read('koala.feature@reuse')
    Then def elements = locateAll("//li[@class='dropdown open']//ul[@class='dropdown-menu']//li")
    And def sizeElements = karate.sizeOf(elements)
    And match sizeElements == 3
    Then print 'dropdown elements are 3'

    
 Scenario: 02 bootstrap listbox
  Given driver 'http://www.seleniumeasy.com/test/'
    * def res = call read('koala.feature@reuse')
    And waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Bootstrap List Box')]")
    And click("//ul[@class='dropdown-menu']//a[contains(text(),'Bootstrap List Box')]")
    And click("//li[contains(text(),'bootstrap-duallist')]")
    And click("//div[@class='well text-right']//li[@class='list-group-item'][contains(text(),'Dapibus ac facilisis in')]")
    And click("//div[@class='list-arrows col-md-1 text-center']/descendant::button[@class='btn btn-default btn-sm move-right']")
    And exists("//div[@class='well']/descendant::ul[@class='list-group']//li[contains(text(),'bootstrap-duallist')]")
    Then print 'Bootstrap listbox shifted'
    And exists("//li[@class='list-group-item active'][contains(text(),'Dapibus ac facilisis in')]")
    Then print 'Dapibus ac facislislis shifted'
 
 
 Scenario: 03Datalistfilter
  Given driver 'http://www.seleniumeasy.com/test/'
    * def res = call read('koala.feature@reuse')
    And waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Data List Filter')]")
    And click("//ul[@class='dropdown-menu']//a[contains(text(),'Data List Filter')]")
    And waitFor("//div[@class='col-lg-12']//input[@id='input-search']")
    And input("//div[@class='col-lg-12']//input[@id='input-search']",'Tyreese Burn')
    Then def elements = locateAll("//*[contains(text(),'Tyreese Burn')]")
    Then print "Number of web elements: ", karate.sizeOf(elements)
    Then clear("//div[@class='col-lg-12']//input[@id='input-search']")
     And input("//div[@class='col-lg-12']//input[@id='input-search']",'Manager')
    Then def elements = locateAll("//*[contains(text(),'Manager')]")
    Then print "Number of web elements: ", karate.sizeOf(elements)
    
    
    Scenario: 04
      Given driver 'http://www.seleniumeasy.com/test/'
    * def res = call read('koala.feature@reuse')
    And waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'JQuery List Box')]")
    And click("//ul[@class='dropdown-menu']//a[contains(text(),'JQuery List Box')]")
    And highlight("//option[contains(text(),'Alice')]")
     #And click("//option[contains(text(),'Alice')]")
    #And click("//button[@class='pAdd btn btn-primary btn-sm']")
   #And waitFor("//select[@class='form-control pickListSelect pickListResult']//option[contains(text(),'Alice')]")
   #Then print "Alice added"
   #
 #
 