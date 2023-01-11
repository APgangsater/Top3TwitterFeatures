Feature: Top 3 Twitter Features
	As Twitter User
	I want to use 3 of Twitter Features
	So I could use twiiter with those features
	Endpoint : https://twitter.com/

Background:  
	Given User login with username "Test@email.com"

##############################################
# UI Validation
##############################################

Scenario: User tweets his post should tweets and display on Tweets & replies successfully
	When the user tweets his status with text "What's happening?"
	Then the user profile should contain a tweets that user text "What's happening?"

Scenario: User retweeted the post  should retweeted and display on Tweets & replies successfully
	When the user retweeted the first post of his feed
	Then the user profile should contain a tweets that user retweeted

Scenario: User replied the post should replied and display on Tweets & replies successfully
	When the user replied the first post of his feed
	Then the user profile should contain a tweets that user replied

################################################