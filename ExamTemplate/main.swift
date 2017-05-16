import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var numberOfVotes : Int? = nil
var voteInput : String? = nil
var areVotesValid : Bool = true
var votesForA : Int = 0
var votesForB : Int = 0
var winner : [String] = ["A", "B", "Tie", "Error"]
var voteNumber : Int = 0
// Loop until valid input is received
while numberOfVotes == nil {
    
    // Show the prompt
    print("How Many Votes? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        if let intInput = Int(notNilInput)
        {
            if intInput < 16 && intInput > 0
            {
                numberOfVotes = intInput
            }
        }
        
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
        //if
        
        
    }
    
}

while voteInput == nil
{
    // Show the prompt
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        if let stringInput = String(notNilInput)
        {
            voteInput = stringInput
        }
        
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        
        //if
        
        
    }

}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 

 
 */

// Add 'process' code below....



if let votes = voteInput
{
    if votes.characters.count > numberOfVotes! || votes.characters.count < numberOfVotes!
    {
        areVotesValid = false
    }
    else{
        for i in votes.characters
        {
            if i == "A"
            {
                votesForA = votesForA + 1
            }else if i == "B"
            {
                votesForB = votesForB + 1
            }else{
                areVotesValid = false
            }
        }
    }
}

if votesForA > numberOfVotes!/2
{
    voteNumber = 0
}else if votesForA == numberOfVotes!/2
{
    voteNumber = 2
}

/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.


