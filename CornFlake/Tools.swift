//
//  Tools.swift
//  CornFlake
//
//  Created by Joshua Weinstein on 2/20/16.
//  Copyright © 2016 Joshua Weinstein. All rights reserved.
//

import Foundation


    //helps rotate the pointer on the machine
    func increasepointer(num:Int) ->Int {
        switch(num) {
        case 0:
            return 1
        case 1:
            return 2
        case 2:
            return 0
        default:
            return 0
        }
    }
    //rotates pointer backwards on the machine
    func decreasepointer(num:Int) ->Int {
        switch(num) {
        case 0:
            return 2
        case 1:
            return 0
        case 2:
            return 1
        default:
            return 0
        }
    }

