//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var totalCostForItems = Int()
        
        for element in items {
            totalCostForItems += element.priceInCents
        }
        return totalCostForItems
    }
    
    func add(item: Item) {
        items.append(item)
    }
    
    func remove(item: Item) {
        for (index, value) in items.enumerated() {
            if value == item {
                items.remove(at: index)
            }
        }
        
    }
    
    func items(withName name: String) -> [Item] {
        var collectedNames = [Item]()
        
        for element in items {
            if element.name == name {
                collectedNames.append(element)
            }
        }
        
        return collectedNames
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var collectedMinPrice = [Item]()
        
        for element in items {
            if element.priceInCents >= price {
                collectedMinPrice.append(element)
            }
        }
        return collectedMinPrice
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var collectedMaxPrice = [Item]()
        
        for element in items {
            if element.priceInCents <= price {
                collectedMaxPrice.append(element)
            }
        }
        return collectedMaxPrice
    }
    
    
}
