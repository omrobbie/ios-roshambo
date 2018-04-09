//
//  ResultViewController.swift
//  Roshambo
//
//  Created by omrobbie on 09/04/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

enum Shape: String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
    
    static func randomShape() -> Shape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomChoice = Int(arc4random_uniform(3))
        
        return Shape(rawValue: shapes[randomChoice])!
    }
}

class ResultViewController: UIViewController {
    
}
