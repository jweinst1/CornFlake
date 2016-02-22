//
//  main.swift
//  CornFlake
//
//  Created by Joshua Weinstein on 2/20/16.
//  Copyright © 2016 Joshua Weinstein. All rights reserved.
//

import Foundation

print("The Corn Flake Interpreter")
print("Written by Josh Weinstein")
print("version 1.0.0")

while true {
    print("CF>", terminator:" ")
    var input = readLine()!
    if input == "close" {
        break
    }
    else {
        print("you typed \(input)")
    }
}

