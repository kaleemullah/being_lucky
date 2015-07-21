- Code description:
	
	- output.rb: It is just interface to show the score message with dice values.

	- being_lucky.rb: It calculates the score for all dice throw.

	- die.rb: It gets the score of a single die.
  
- Test Cases / Specs: Test cases has been added for being_lucky.rb and die.rb via Rspec.

- To run the program(within being_lucky directory):

	> $ ruby output.rb

  To calculate score of different set of dice, please change values in output.rb within [].
  
	> BeingLucky.new([2,4,4,5,4]).score

- To run all the specs(within being_lucky directory):

	> rspec -f d
