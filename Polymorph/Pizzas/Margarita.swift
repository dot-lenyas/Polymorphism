//
//  margarita.swift
//  Polymorph
//
//  Created by lazarenko_lo on 14.05.2021.
//

import Foundation

class MargaritaPizza: BasePizza
{
    init(_ size: Int)
    {
        super.init("Margarita", "Морская пицца", size)
    }
    override public func addSalt(_ extraSalt: Int)
    {
        Salt += extraSalt
    }
    override public func addCheese(_ extraCheese: Int)
    {
        Cheese += extraCheese
    }
}
