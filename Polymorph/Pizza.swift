//
//  Pizza.swift
//  Polymorph
//
//  Created by lazarenko_lo on 14.05.2021.
//

import Foundation

class BasePizza
{
    public var Salt: Int = 1
    public var Cheese: Int = 1
    public var Name: String = ""
    public var Description: String
    public var Size: Int
    
    init(_ name: String, _ description: String, _ size: Int)
    {
        Name = name
        Description = description
        Size = size
    }
    init()
    {
        Size = 0
        Description = ""
    }
    
    public func addSalt(_ extraSalt: Int)
    {
        
    }
    public func addCheese(_ extraCheese: Int)
    {
        
    }
    
}
