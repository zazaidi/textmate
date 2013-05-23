#Drupalcon
Need to know when requirements are fulfilled
Behavior Driven Development 

Scenario Oriented BDD
	Single vocabulary so using same language when evaluating

1. Define business value for features
	- If doesn't have business value don't work on it
2. Prioritize features by business value
3. Describe them with readable scenarios
4. Implement the features

Specification is from the user perspective - User's behavior
	Don't care about if need db or code to do
*Gherkin
	Language used to describe features
	
Feature: {Title}
	In order to {A}
	As a {B}
	I need to {C}
{A} - Benefit or value of the feature

Feature: I18n
	In order to read news in french
	As a french user
	I need to be able to switch locale

Why am I building this feature and who will benefit from this?

*Prioritize*
	1) Feature: News admin
	2) Feature: I18n
	3) Feature: News list
	
Feature: News admin panel
	In order to maintain a list of news
	As a site administrator
	I need to be able to edit news
	
Scenario: Add new article
	Given I am on the "/admin/news" page
	When I click "New Article"
	And I fill in "TItle" with "Learned BDD"
	And I press "Save"
	Then I should see "A new article was added"
	
Given..When..And..Then
	
Scenario: List available articles
	Given there are 5 news articles
	And I am on the "/admin/" page
	When I click "Site Adminstration"
	Then I should see "Five news articles"
	
# Behat #
Installation
	Library installed via Composer
	http://bit.ly/behat
	Download composer
	Behat downloaded into vendor directory
	Gives bin/behat executable 
Behat needs
	Feature files (*.feature) to be executed
	A single php class (FeatureContext.php) - can be empty
Code
	php bind/behat --init 
	Generates feature and php class files
	
# Ls Example #
Feature: ls
	In order to see the directory structure
	As a UNIX user
	
Scenario: List 2 files in a directory
	Given I have a file name "foo"
	And I have a file named "bar"
	When I run "ls"
	Then I should see "foo" in the output
	And I should see "bar" in the output
Behat prints RegEx expression function for each line
Next time it reads the line it will execute the function

public function iHaveAFileNamed($file) {
	touch($file);
}

public function iRun($command)

bit.ly/behat-ls-feature

# Mink #
Standalone library use PHP to command a browser 
	$session ->visit('http://drupal.org')
	$ele = $page->find('css','li:nth-child(4) a')
	echo 'Link text is: '.$ele->getText();
	echo 'href is: '.$ele->getAttribute('href');
	$ele->click(); 
		[Can do double clicks, right clicks, drag to, etc]
Can change 1 line in config and run in Selenium and see in browser

#Behat <MinkExtension> Mink
* Mink
* MinkExtension
* Use composer to download * 

Bootstrap MinkExtension
	behat.yml file create
	default:
		extensions:
			Behat\MinkExtension\Extension:
				goutte: ~
				selenium2: ~
				base_url: http://drupal.org
	Change line in config
		use Behat\MinkExtension\Context\MinkContext;
		class FeatureContext extends MinkContext
		
# Access to Mink Session #

#Pile of Definitions #
Can reuse same sentences over and over again - more you use the more sentences you can use
php bin/behat -dl 
	Gives the list of definitons
After extending MinkContext
	Get full list of sentences that do most common clicks
	
Feature: Search
	Given I am on "/wiki/Main_age"
	When I fill in..

Can use Mink to do remote website
We need DB access though to add code

#Behat in Drupal #
	DrupalExtension! (Plugin for Behat and Drupal)
		1. Built in sentences
		2. Build nodes, add users, manage permissions inside Behat
		3. Operating within Regions
		4. Hooks to load more sentences/definitions from contrib modules

#Example#
Given I am logged in as a user with the administrator role
Scenario: Edit Node
	Given I am viewing a "page" node with the title "Cool"
	When I click "Edit" in the "Body" region
	And I fill in the following:
	And I press "Save"
	Then I should see "Cool" in the "Body" region

Modes
	1. Blackbox
	2. Drupal - bootstraps local instance and calls same functions
	3. Drush - 
	Add contrib modules for more definitions
		Given I have a view .. 
	Every module gives you pre-built definitions
	If as community add vocab sentences to each module
	
# Selenium # 
	And a @javascript above the Scenario and it will open in Selenium
