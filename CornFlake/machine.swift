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
    //passes in a custom value to the slot
    mutating func insertcurrent(value:Int) {
        self.row[self.pointer] = value
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
    
    //sums to a number and sets the current cell to that
    mutating func setsum() {
        var total = 0
        for elem in 1...self.row[self.pointer] {
            total += elem
        }
        self.row[self.pointer] = total
    }
    //adds outer two slots to the middle
    mutating func addtomiddle() {
        self.row[1] += self.row[0] + self.row[2]
    }
    //subtracts middle cell from both sides
    mutating func splittosides() {
        self.row[0] -= self.row[1]
        self.row[2] -= self.row[1]
    }
    //adds the value of the current cell to the left cell
    mutating func addtoleft() {
        self.row[decreasepointer(self.pointer)] += self.row[self.pointer]
    }
    //adds the value of the current cell to the right cell
    mutating func addtoright() {
        self.row[increasepointer(self.pointer)] += self.row[self.pointer]
    }
    //reverses the row
    mutating func reverserow() {
        self.row = self.row.reverse()
    }
}
