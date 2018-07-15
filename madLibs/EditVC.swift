//
//  EditVC.swift
//  madLibs
//
//  Created by Jaewon Lee on 7/14/18.
//  Copyright © 2018 Jaewon Lee. All rights reserved.
//

import UIKit

class EditVC: UIViewController {
    var item: String = ""
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: self)

    }
    
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var verbTextFieldTwo: UITextField!
    @IBOutlet weak var nounTextField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adjectiveTextField.text = item
        verbTextField.text = item
        verbTextFieldTwo.text = item
        nounTextField.text = item

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
