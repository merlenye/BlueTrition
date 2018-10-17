//
//  ABPModel.swift
//  DukeCalories
//
//  Created by Merle Nye on 10/13/18.
//  Copyright © 2018 Merle Nye. All rights reserved.
//

import Foundation
import UIKit
public var finalcount: Int = 0
public class ABP {
    public let name:String
    public let photo:UIImage?
    public let calorieCount:Int
    
    
    init(name: String, photo: UIImage?, calorieCount:Int) {
        self.name = name
        self.photo = photo
        self.calorieCount = calorieCount
    }
}

public class DailyFoodIntake {
    public var meals:[ABP]
    var totalCalorieCount:Int
    
    init() {
        self.totalCalorieCount = 0
        self.meals = []
    }
    
    public func addMeal(meal:ABP) {
        self.meals.append(meal)
        totalCalorieCount += meal.calorieCount
    }

}
