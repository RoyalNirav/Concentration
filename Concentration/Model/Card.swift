//
//  Card.swift
//  Concentration
//
//  Created by Nirav Patel on 5/7/18.
//  Copyright © 2018 Nirav Patel. All rights reserved.
//

import Foundation

struct Card: Hashable {
    
    var hashValue: Int { return identifier }
    var isFaceUp = false
    var isMatched = false
    var flipCount = 0
    private var identifier: Int
    private static var identifierFactory = 0
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        identifier = Card.getUniqueIdentifier()
    }
    
}



/* The 2 Difference between struct and class
 1. Struct have no inheritance
 2. Struct are value type and class are reference type
 
 value type = Gets copied
 reference type = lives in the heap, pointers
 */
