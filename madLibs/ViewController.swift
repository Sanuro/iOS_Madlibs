//
//  ViewController.swift
//  madLibs
//
//  Created by Jaewon Lee on 7/14/18.
//  Copyright © 2018 Jaewon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var adj: String?
    var verbOne: String?
    var verbTwo: String?
    var noun: String?
    
    @IBAction func editButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "EditVC", sender: sender)
    }
    
    @IBOutlet weak var adjectiveTextLabel: UILabel!
    @IBOutlet weak var verbTextLabel: UILabel!
    @IBOutlet weak var verbTextLabelTwo: UILabel!
    @IBOutlet weak var nounTextLabel: UILabel!
    @IBOutlet weak var allTextField: UILabel!
    
    
    
    @IBAction func unwindToVC(segue: UIStoryboardSegue){
        let src = segue.source as! EditVC
        adj = src.adjectiveTextField.text
        verbOne = src.verbTextField.text
        verbTwo = src.verbTextFieldTwo.text
        noun = src.nounTextField.text
        
        adjectiveTextLabel.text = adj
        verbTextLabel.text = verbOne
        verbTextLabelTwo.text = verbTwo
        nounTextLabel.text = noun
        
        allTextField.text = "We are having a perfectly \(adj!) time now. Later we will \(verbOne!), and \(verbTwo!) in the \(noun!)"
        
    }
    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }



}

