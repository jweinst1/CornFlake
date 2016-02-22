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
            default:
                print("Unknown Command")
            }
        }
    }
}
