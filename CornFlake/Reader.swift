//
//  Reader.swift
//  CornFlake
//
//  Created by Joshua Weinstein on 2/21/16.
//  Copyright © 2016 Joshua Weinstein. All rights reserved.
//  File that implements the reader for the language

import Foundation

struct reader {
    
    var machine:cornmachine
    init() {
        self.machine = cornmachine()
    }
    //main function to read commands from the interpreter
    mutating func readline(line:String) {
        let commands = line.componentsSeparatedByString(" ")
        for elem in commands {
            switch(elem) {
            case ">":
                self.machine.incpointer()
            case "<":
                self.machine.decpointer()
            case "+":
                self.machine.incrementcurrent()
            case "-":
                self.machine.decrementcurrent()
            case "p":
                self.machine.printcurrent()
            case "r":
                self.machine.printrow()
            case "~":
                self.machine.reset()
            case "!":
                self.machine.resetpointer()
            case "++":
                self.machine.setsum()
            case "<->":
                self.machine.splittosides()
            case "+>":
                self.machine.addtoright()
            case "<+":
                self.machine.addtoleft()
            case "1":
                self.machine.insertcurrent(1)
            case "2":
                self.machine.insertcurrent(2)
            case "3":
                self.machine.insertcurrent(3)
            default:
                print("Unknown Command")
            }
        }
    }
}
