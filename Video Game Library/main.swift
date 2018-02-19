//
//  main.swift
//  Video Game Library
//
//  Created by Shontara Hatton on 2/13/18.
//  Copyright © 2018 Shontara Hatton. All rights reserved.
//

//////////// DUE MONDAY///////////////

import Foundation
import Darwin
/*Main Menu:
 1. Add games
 2. remove a game
 3. Check a game out
 4. Check a game in
 5. Quit the program
 
 ADD GAME:
 1. Ask for name of the game
 2. The game should have a property that know what day the game was checked out
 3. Use an array to keep track of all the games in the library
 
 REMOVE A GAME:
 1. Remove the game selected from the library (Array)
 
 CHECK A GAME OUT:
 1. Specify the game you want to check out
 2. Keep track of the date that the game was checked out as well as the date the the game is due back
 
 CHECK IN A GAME:
 1. Reset the due date on the game and the date that the game was checked out
 
 QUIT THE PROGRAM:
 1. Self Explanatory
 
 */

var games = [VideoGame]()

func removeAGame() {
    print("Do you want to remove a game from your Library?")
    var userInput = readLine()!
    
    for game in 0...games.count - 1{
        if games [game].name == userInput {
            games.remove(at: game)
    }
}

    func checkGameOut() {
        print("What game do you want to check out?")
        var userInput = readLine()
        for game in 0...games.count - 1  {
            if games [game].name == userInput {
               games [game].checkedIn = false
            }
        }
        
        
    }
    
    func checkGameIn() {
        for game in 0...games.count - 1 {
            if games [game].name == userInput {
                games [game].checkedIn = true
            }
        print("What game do you want to check in?")
        var userInput = readLine()
        for game in 0...
        
    

func mainMenu(){
    print("Press 1 to add a game")
    print("Press 2 to remove a game")
    print("Press 3 to check game out")// put in videogame file
    print("Press 4 to check game in")// put in videogame file
    print("Press 5 to quit the program")
    var userInput = Int(readLine()!)
    if userInput == 1 {
        addAGame()
    } else if userInput == 2 {
        removeAGame()
    }
    else if userInput == 3 {
        checkGameOut()
    }
    else if userInput == 4 {
        checkGameIn()
    }
    else if userInput == 5 {
       exit(0)
    }
}

func addAGame() {
    print("What game do you want to add?")
    var userInput = (readLine()!)
    
    games.append(VideoGame(name: userInput))
    
    let currentDate = Date()
    print(currentDate)
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .long
    dateFormatter.dateFormat = "MM/dd/yyyy HH:mm"
    print(dateFormatter.string(from: currentDate))
    
    
        
    }
    
}

let exit = 5
var userInput = Int(readLine()!)

}
}
