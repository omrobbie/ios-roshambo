//
//  ViewController.swift
//  Roshambo
//
//  Created by omrobbie on 09/04/18.
//  Copyright © 2018 omrobbie. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {
    
    @IBAction private func playRock(_ sender: UIButton) {
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController 
        present(viewController, animated: true, completion: nil)
    }
    
    @IBAction private func playPaper(_ sender: UIButton) {
        performSegue(withIdentifier: "play", sender: sender)
    }
}
