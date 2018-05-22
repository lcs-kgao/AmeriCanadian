//
//  main.swift
//  AmeriCanadian
//

import Foundation

// INPUT
// Global variable to use later in program
var expectedCountOfWordsToTranslate = 3

// Write a loop to actually collect the expected count of words to be translated
while true {
    
    //Prompt
    print("How many lines will be provided?")
    
    //Test for nil
    guard let givenInput = readLine() else{
        continue
        
    }
    //Test for integer
    guard let givenInteger = Int(givenInput) else {
        
        continue
    }
    //Check for the correct range
    if givenInteger < 0 || givenInteger > 10 {
        continue
    }
    //Assign the input value to the global variable
    expectedCountOfWordsToTranslate = givenInteger
    break
}


// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// NOTE:

//Create variables for later use

var translatedWord = ""

// Example of how to collect multiple input lines
for counter in 1...expectedCountOfWordsToTranslate {
    var word = "tour"

    
    // Get each word
    print("Enter word #\(counter):")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    //Assign the input to the global variable
    word = givenInput
    print(word)
    
    
    // if the word contains a suffix "or", it is an American word.
    let isAmerican = word.hasSuffix("or")
    print(isAmerican)
    
    //If is is not an American word, print the result
    if isAmerican == false{
        print("The translation is \(word)")
    }else if word.count <= 4 { //If the word has less than 4 letters, print the result
        print("The translation is \(word)")
    }else if isAmerican == true { // If the word is an American word, translate it
        //Reverse the word
        let reversedWord = String(word.reversed())
        for letter in reversedWord {
            
            //Add the letters into another string
            translatedWord += String(letter)
            //When the string has 1 letter, add u into the word.
            if translatedWord.count == 1 {
                translatedWord += "u"
                
                
            }
        }
        // Reverse the word again and print the result.
        let originalWord = String(translatedWord.reversed())
        print("The translation is \(originalWord)")
    }
}





// OUTPUT
// Report results to the user here


