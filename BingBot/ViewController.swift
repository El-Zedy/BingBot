//
//  ViewController.swift
//  BingBot
//
//  Created by Muhammad El Zedy on 8/12/19.
//  Copyright © 2019 ZozShark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var showsLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowButton: UIButton!
    @IBOutlet weak var bingbotSpokenLabel: UILabel!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var ShowsStackView: UIStackView!
    
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ShowsStackView.isHidden = true
        randomShowStackView.isHidden = true
    }

    //MARK: - Get Random Of Shows
    @IBAction func randomBingBtnWasPressed(_ sender: Any) {
        randomShowLabel.text = shows.randomElement()
        randomShowLabel.isHidden = false
        bingbotSpokenLabel.isHidden = false 
    }
    
    //MARK: - Update ShowLabel With shows you Entered In the Array
    func updateShowLabel(){
        showsLabel.text = shows.joined(separator: ", ")
    }
    
    //MARK: - Add show Btn Was Pressed To add Show in The Shows Array
    @IBAction func addShowBtnWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else{return}
        shows.append(showName)
        updateShowLabel()
        addShowTextField.text = ""
        ShowsStackView.isHidden = false
        
        if shows.count > 1 {
            randomShowStackView.isHidden = false
            randomShowLabel.isHidden = true
            bingbotSpokenLabel.isHidden = true
        }
        
        addShowTextField.resignFirstResponder()
    }
    
}

