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
        viewController.userChoice = getUserShape(sender)
        present(viewController, animated: true, completion: nil)
    }
    
    @IBAction private func playPaper(_ sender: UIButton) {
        performSegue(withIdentifier: "play", sender: sender)
    }
    
    private func getUserShape(_ sender: UIButton) -> Shape {
        // Titles are set to one of: Rock, Paper, or Scissors
        let shape = sender.title(for: UIControlState())!
        return Shape(rawValue: shape)!
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "play" {
            let viewController = segue.destination as! ResultViewController
            viewController.userChoice = getUserShape(sender as! UIButton)
        }
    }

}
