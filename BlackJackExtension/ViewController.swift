//
//  ViewController.swift
//  BlackJackExtension
//
//  Created by Era Chaudhary on 3/3/15.
//  Copyright (c) 2015 Era Chaudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var bet1: UITextField!
    
    @IBOutlet weak var bet2: UITextField!
    
    @IBOutlet weak var cards1: UILabel!
    
    @IBOutlet weak var cards2: UILabel!
    
    @IBOutlet weak var dealerCards: UILabel!
    
    @IBOutlet weak var state: UILabel!

    @IBOutlet weak var balance: UILabel!
    
    var playerList:[Player] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //numberOfPlayers = Singleton.getObject.numberOfPlayers
        // numberOfDecks = Singleton.getObject.numberOfDecks
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func hit(sender: UIButton) {
    }
    
    @IBAction func stand(sender: AnyObject) {
    }
    
    @IBAction func deal(sender: UIButton) {
        
        
        
    }
    
    
    
}