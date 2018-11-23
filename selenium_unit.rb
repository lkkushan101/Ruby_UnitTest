require 'test/unit'
require 'selenium-webdriver'

class MyTest < Test::Unit::TestCase

  def setup

    @driver=Selenium::WebDriver.for :chrome

    @driver.manage.window.maximize

    @driver.navigate.to "http://www.google.lk"
  end

  def test_search

    #Typing the Selenium in Google search
    @driver.find_element(:name, "q").send_keys "Selenium"

    #Clicking the search button
    @driver.find_element(:name, "btnK").click


    #Clicking the search button
    @driver.find_element(:xpath, "//*[@id='rso']/div[3]/div/div[1]/div/div/div[1]/a/h3").click


    #Asserting whether the registration success message is diaplyed
    puts @driver.title


  end

  def teardown
    @driver.quit
  end



end