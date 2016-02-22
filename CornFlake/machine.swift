//
//  machine.swift
//  CornFlake
//
//  Created by Joshua Weinstein on 2/20/16.
//  Copyright © 2016 Joshua Weinstein. All rights reserved.
//

import Foundation

struct cornmachine {
    var row:[Int]
    var pointer:Int
    init() {
        self.row = [0, 0, 0]
        self.pointer = 0
    }
    //resets the table
    mutating func reset() {
        self.row = [0, 0, 0]
    }
    //increments a slot
    mutating func increment(slot:Int) {
        self.row[slot] += 1
    }
    
    mutating func incrementcurrent() {
        self.row[self.pointer] += 1
    }
    
    mutating func decrement(slot:Int) {
        self.row[slot] -= 1
    }
    
    mutating func decrementcurrent() {
        self.row[self.pointer] -= 1
    }
    
    mutating func resetpointer() {
        self.pointer = 0
    }
    
    mutating func insert(slot:Int, value:Int) {
        self.row[slot] = value
    }
    //increases the pointer
    mutating func incpointer() {
        self.pointer = increasepointer(self.pointer)
    }
    //decreases the pointer
    mutating func decpointer() {
        self.pointer = decreasepointer(self.pointer)
    }
    //prints the current slot
    mutating func printcurrent() {
        print(self.row[self.pointer])
    }
    //prints the entire operating row
    mutating func printrow() {
        print(self.row[0], terminator:" ")
        print(self.row[1], terminator:" ")
        print(self.row[2])
    }
}
