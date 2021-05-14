//
//  Order.swift
//  Polymorph
//
//  Created by lazarenko_lo on 14.05.2021.
//

import Foundation
class Order
{
    private var Pizzas = [BasePizza]()
    public var price = 0
    
    
    public func MakeOrder()
    {
        while(true)
        {
            
        
        print("""
        Hello, you're in Lyonya's Pizzeria
        Please choose a Pizza:
        1. Pepperone
        2. Margarita
        3. ThreeCheese
        4. Exit
        """)
        var pizza: Int = Int(readLine()!)!
            if pizza == 4 {
                break
            }
        print("""
        What size of Pizza do you want?
        25
        30
        35
        40
        """)
        var size = Int(readLine()!)!
        switch size
        {
        case 25:
            price += 30
        case 30:
            price += 35
        case 35:
            price += 40
        case 40:
            price += 45
        default:
            print("Incorrect Size")
        break
        }
        var PizzaForAdd: BasePizza = BasePizza()
        switch pizza
        {
            case 1:
                 PizzaForAdd = PeperonePizza(size)
                 price += 359
            case 2:
                 PizzaForAdd = MargaritaPizza(size)
                 price += 400
            case 3:
                 PizzaForAdd = ThreeCheesePizza(size)
                 price += 389
            default:
                print("You make incorrect order!")
                break
        }
        
        print("""
        Ok then, do you want to add some cheese to your Pizza
        Input number of a cheese
        If you dont want extra cheese input zero
        """)
        var extraCheese = Int(readLine()!)!
        print("""
        Do you want to add some salt to your Pizza
        Input number of a salt
        If you dont want extra salt input zero
        """)
        var extraSalt = Int(readLine()!)!
        price += (extraCheese * 5 + extraSalt * 5)
        PizzaForAdd.addSalt(extraSalt)
        PizzaForAdd.addCheese(extraCheese)
        Pizzas.append(PizzaForAdd)
        }
    }
    public func PrintOrder()
    {
        print("================Order==================(\n)")
        for pizzas in Pizzas
        {
            print("""
            \(pizzas.Name) - \(pizzas.Description) with \(pizzas.Cheese) cheese and \(pizzas.Salt) salt
                
            """)
        }
        print("Total price: \(price)")
    }
}
