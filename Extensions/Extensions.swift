//
//  Extensions.swift
//  Extensions
//
//  Created by Max Tkach on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


extension String {
    
    var pigLatin: String {
        get { return pigLatinConversion() }
    }
    
    var points: Int {
        get { return scoreCalculator() }
    }
    
    var unicornLevel: String {
        get { return unicornScore() }
    }
    
    
    func whisper() -> String {
        return self.lowercaseString
    }
    
    func shout() -> String {
        return self.uppercaseString
    }
    
    
    private func pigLatinConversion() -> String {
        var pigLatinWords: [String] = []
        let originalWords = self.componentsSeparatedByString(" ")
        
        for (index, word) in originalWords.enumerate() {
            let pigLatinWord = wordToPigLatin(word)
            if index + 1 < originalWords.count {
                pigLatinWords.append("\(pigLatinWord) ")
            } else {
                pigLatinWords.append(pigLatinWord)
            }
        }
        
        return pigLatinWords.reduce("", combine: +)
        
    }
    
    private func wordToPigLatin(word: String) -> String {
        if word.characters.count < 2 { return word }
        
        var capitalized = false
        
        var originalWord = word
        var pigLatinWord = ""
        
        if originalWord != originalWord.lowercaseString {
            originalWord = originalWord.lowercaseString
            capitalized = true
        }
        
        var characters = Array(originalWord.characters)
        let charToMove = characters.removeAtIndex(0)
        characters.append(charToMove)
        characters.appendContentsOf(["a", "y"])
        
        for char in characters { pigLatinWord.append(char) }
        if capitalized { pigLatinWord = pigLatinWord.capitalizedString }
        
        return pigLatinWord
    }
    
    
    private func scoreCalculator() -> Int {
        let vowels = ["a", "e", "i", "o", "u"]
        let consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        
        var score = 0
        
        let lowercasedSelf = self.lowercaseString
        for char in lowercasedSelf.characters {
            if vowels.contains(String(char)) {
                score += 2
            } else if consonants.contains(String(char)) {
                score += 1
            }
        }
        
        return score
    }
    
    
    private func unicornScore() -> String {
        var score = 0
        
        for char in self.characters {
            if char == "🦄" { score += 1 }
        }
        
        return "\(score)"
    }
    
    
}



extension Int {
    
    var squared: Int {
        get { return square() }
    }
    
    var halved: Int {
        get { return half() }
    }

    
    func isDivisibleBy(number: Int) -> Bool {
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
    
    private func half() -> Int {
        return self / 2
    }
    
    private func square() -> Int {
        return self * self
    }
    
    
}








