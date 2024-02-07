//
//  main.swift
//  swift1
//
//  Created by StudentAM on 1/12/24.
//

import Foundation

//Variables
var cereal = 100.00
var milk = 100.00
var syrup = 100.00
var cups = 100.00
let cerealPrice = 4.99
let milkPrice = 4.99
let syrupPrice = 3.99
let cupsPrice = 2.9
var cartTotal = 0.00
var numOfItems = 0.00
var inCartCereal = 0.00
var inCartMilk = 0.00
var inCartSyrup = 0.00
var inCartCups = 0.00

//Some of the Functions
func mainMenu(){
    //main menu
    print("""
          Welcome to SoupMart! How can I help you today!
    1. Add item to cart
    2. Remove item from cart
    3. Check if item is in stock
    4. Admin Menu
    5. Checkout
    """)
}
func checkIndividStock(){
    print("""
Please select one of the following items to check stock (type the number)
1. Cereal
2. Milk
3. Syrup
4. Cups
""")
    let checkCart = readLine()
    switch checkCart!{
    case "1":
        print("There are \(cereal) cereal box(es) in stock")
        //mainMenu()
    case "2":
        print("There are \(milk) milk(s) in stock")
        //mainMenu()
    case "3":
        print("There are \(syrup) syrup(s) in stock")
        //mainMenu()
    case "4":
        print("There are \(cups) cup(s) in stock")
        //mainMenu()
    default:
        print("not a valid num")
    }
}
func cannotItems(){
    
}


mainMenu()
//input
while let mainInp = readLine(){
    //reads input
    switch mainInp{
        //MAIN MENU CASE 1
    case "1":
        print("""
    Please select one of the following items to add to your cart (type the number)
    1. Cereal
    2. Milk
    3. Syrup
    4. Cups
    
    """)
        let addCart = readLine()
        switch addCart!{
            //ADD ITEMS INTO CART
        case "1":
            print("How many cereal boxes would you like to add to the cart?:")
            let itemToCart = readLine()
            if let string = itemToCart, let toCart = Double(string){
                if toCart <= cereal{
                    cartTotal += toCart*cerealPrice
                    cereal -= toCart
                    inCartCereal += toCart
                    print("""
                    You added \(itemToCart!) cereal box(es)
                    $\((round(100 * cartTotal) / 100)) is your current subtotal
                
                """)
                    mainMenu()
                }else if toCart > cereal{
                    print("""
                    TOO MUCH CEREAL, NOT ENOUGH STOCK :(
                    
                    """)
                    mainMenu()
                }
            }
        case "2":
            print("How many milk(s) would you like to add to the cart?")
            let itemToCart = readLine()
            if let string = itemToCart, let toCart = Double(string){
                if toCart <= milk{
                    cartTotal += toCart*milkPrice
                    milk -= toCart
                    inCartMilk += toCart
                    print("""
                    You added \(itemToCart!) milk(s)
                    $\((round(100 * cartTotal) / 100)) is your current subtotal
                
                """)
                    mainMenu()
                }else if toCart > milk{
                    print("""
                    TOO MUCH MILK, NOT ENOUGH STOCK :(
                    
                    """)
                }
            }
        case "3":
            print("How many syrup(s) would you like to add to the cart?")
            let itemToCart = readLine()
            if let string = itemToCart, let toCart = Double(string){
                if toCart <= milk{
                    cartTotal += toCart*syrupPrice
                    syrup -= toCart
                    inCartSyrup += toCart
                    print("""
                    You added \(itemToCart!) syrup(s)
                    $\((round(100 * cartTotal) / 100)) is your current subtotal
                
                """)
                    mainMenu()
                }else if toCart > syrup{
                    print("""
                    TOO MUCH SYRUP, NOT ENOUGH STOCK :(
                    
                    """)
                    mainMenu()
                }
            }
        case "4":
            print("How many cup(s) would you like to add to the cart?")
            let itemToCart = readLine()
            if let string = itemToCart, let toCart = Double(string){
                if toCart <= cups{
                    cartTotal += toCart*cupsPrice
                    cups -= toCart
                    inCartCups += toCart
                    print("""
                    You added \(itemToCart!) cup(s)
                    $\((round(100 * cartTotal) / 100)) is your current subtotal
                
                """)
                    mainMenu()
                }else if toCart > cups{
                    print("""
                    TOO MANY CUPS, NOT ENOUGH STOCK :(
                    
                    """)
                    mainMenu()
                }
            }
        default:
            print("not a valid num")
        }
        //MAIN MENU CASE 2
    case "2":
        print("""
    Please select one of the following items to remove from your cart (type the number)
    1. Cereal
    2. Milk
    3. Syrup
    4. Cups
    """)
        let removeCart = readLine()
        switch removeCart!{
        case "1":
            print("How many cereal box(es) would you like to remove from the cart?:")
            let itemFromCart = readLine()
            if let string = itemFromCart, let fromCart = Double(string){
                if fromCart*cerealPrice <= cartTotal && inCartCereal > fromCart{
                    cartTotal -= fromCart*cerealPrice
                    cereal += fromCart
                    inCartCereal -= fromCart
                    print("""
                    You removed \(itemFromCart!) cereal box(es)
                    $\((round(100 * cartTotal) / 100)) is your current subtotal
                
                """)
                    mainMenu()
                }else{
                    print("""
                          You can't put back cereal you didn't have in the first place
                          """)
                    mainMenu()
                }
            }
        case "2":
            print("How many milk(s) would you like to remove from the cart?:")
            let itemFromCart = readLine()
            if let string = itemFromCart, let fromCart = Double(string){
                if fromCart*milkPrice <= cartTotal && inCartMilk > fromCart{
                    cartTotal -= fromCart*milkPrice
                    milk += fromCart
                    inCartMilk -= fromCart
                    print("""
                    You removed \(itemFromCart!) milk(s)
                    $\((round(100 * cartTotal) / 100)) is your current subtotal
                
                """)
                    mainMenu()
                }else{
                    print("""
                          You can't put back milk you didn't have in the first place
                          """)
                    mainMenu()
                }
            }
        case "3":
            print("How many syrup(s) would you like to remove from the cart?:")
            let itemFromCart = readLine()
            if let string = itemFromCart, let fromCart = Double(string){
                if fromCart*syrupPrice >= cartTotal && inCartSyrup > fromCart{
                    cartTotal -= fromCart*syrupPrice
                    syrup += fromCart
                    inCartSyrup -= fromCart
                    print("""
                    You removed \(itemFromCart!) syrup(s)
                    $\((round(100 * cartTotal) / 100)) is your current subtotal
                
                """)
                    mainMenu()
                }else{
                    print("""
                    You can't put back syrup you didn't have in the first place
                    """)
                    mainMenu()
                }
            }
        case "4":
            print("""
            How many cup(s) would you like to remove from the cart?:
            """)
            let itemFromCart = readLine()
            if let string = itemFromCart, let fromCart = Double(string){
                if fromCart*cupsPrice <= cartTotal && inCartCups > fromCart{
                    cartTotal -= fromCart*cupsPrice
                    cups += fromCart
                    inCartCups -= fromCart
                    print("""
                    You removed \(itemFromCart!) cup(s)
                    $\((round(100 * cartTotal) / 100)) is your current subtotal
                
                """)
                    mainMenu()
                }else{
                    print("""
                    You can't put back cups you didn't have in the first place
                    """)
                    mainMenu()
                }
            }
        default:
            print("not a valid num")
        }
        //MAIN MENU CASE 3
    case "3":
            checkIndividStock()
            mainMenu()
        
        //MAIN MENU CASE 4 (ADMIN MENU)
    case "4":
        //The function is what helps to keep you in the admin menu until you're ready to leave it
            print("""
            Enter Admin Id:
            """)
            let adminCode = readLine()
            switch adminCode!{
            case "12345":
                adminMenus()
                func adminMenus(){
                    print("""
                    Welcome to admin menu! What'd you like to do (please type corrosponding number)
                    1. Restock Inventory
                    2. Generate Report
                    3. Check Number of Items
                    4. Leave Admin Menu
                    """)
                    let adminMenu = readLine()
                    switch adminMenu!{
                        
                        //ADMIN MENU CASE 1
                    case "1":
                        print("""
                        What would you like to restock? (type the number)
                        1. Cereal
                        2. Milk
                        3. Syrup
                        4. Cups
                        """)
                        let restockUnits = readLine()
                        switch restockUnits! {
                        case "1":
                            print("How many many cereal box(es) would you like to restock")
                            let restockAmount = readLine()
                            if let string = restockAmount, let restonk = Double(string){
                                cereal += restonk
                            }
                            adminMenus()
                        case "2":
                            print("How many many milk(s) would you like to restock")
                            let restockAmount = readLine()
                            if let string = restockAmount, let restonk = Double(string){
                                milk += restonk
                            }
                            adminMenus()
                        case "3":
                            print("How many many syrup(s) would you like to restock")
                            let restockAmount = readLine()
                            if let string = restockAmount, let restonk = Double(string){
                                syrup += restonk
                            }
                            adminMenus()
                        case "4":
                            print("How many many cup(s) would you like to restock")
                            let restockAmount = readLine()
                            if let string = restockAmount, let restonk = Double(string){
                                cups += restonk
                            }
                            adminMenus()
                        default:
                            print("Not a valid number, try again")
                            adminMenus()
                        }
                        
                        //ADMIN MENU CASE 2
                    case "2":
                        print("""
                        Summary Report:
                        Cereal Left: \(cereal)
                        Milk Left: \(milk)
                        Syrup Left: \(syrup)
                        Cups Left: \(cups)
                        
                        Remaining Inventory: \(cereal+milk+syrup+cups)
                        Total Sales: \(cartTotal)
                        
                        """)
                        adminMenus()
                        
                        //Admin Menu Case 3
                    case "3":
                        checkIndividStock()
                        adminMenus()
                        
                        //ADMIN MENU CASE 4 (return to main)
                    case "4":
                        print("Returning to main menu")
                        mainMenu()
                    default:
                        print("Not a valid number, try again")
                        adminMenus()
                    }
                }
            default:
                print("Incorrect Passcode :P")
            }
        
        //MAIN MENU CASE 5 (Checkout)
    case "5":
        print("""
            Thank you for shopping at SoupMart! Where we have Souper deals for soup and more!
            (Disclaimer we're completely out of soup and lost our souplier)
            You purchsed these items:
                Cereal: \(inCartCereal)
                Milk: \(inCartMilk)
                Syrup: \(inCartSyrup)
                Cups: \(inCartCups)
                
                Subtotal: $\((round(100 * cartTotal) / 100))
                Total: $\(round(100*cartTotal*1.0925)/100)
            """)
        exit (0)
    default:
        print("Not a valid number, try again")
        //main menu
        mainMenu()
    }
}
