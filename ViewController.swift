//
//  ViewController.swift
//  firstGameApp
//
//  Created by 90302939 on 17/09/18.
//  Copyright © 2018 Bela Konkoly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slotOne: UIImageView!
    
    @IBOutlet weak var slotTwo: UIImageView!

    @IBOutlet weak var slotThree: UIImageView!
    
    @IBOutlet weak var labelMoney: UILabel!
    
    @IBOutlet weak var spinButton: UIButton!
    
    @IBOutlet weak var button100: UIButton!
    
    @IBOutlet weak var button250: UIButton!
    
    @IBOutlet weak var button500: UIButton!
    
    @IBOutlet weak var betLabel: UILabel!
    
    var moneyWon = 10000
    
    var betValue = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    
    
    @IBAction func SpinButton100(_ sender: UIButton) {
    button100.backgroundColor = UIColor.green
        
        betValue = 100
        
        if button250.backgroundColor == UIColor.green || button500.backgroundColor == UIColor.green {
            
            button250.backgroundColor = UIColor.white
            
            button500.backgroundColor = UIColor.white
            
            betLabel.text = "Bet: $\(betValue)"
        
    }
    }
    
    @IBAction func SpinButton250(_ sender: UIButton) {
    button250.backgroundColor = UIColor.green
        
        if button100.backgroundColor == UIColor.green || button500.backgroundColor == UIColor.green {
            
            button100.backgroundColor = UIColor.white
            
            button500.backgroundColor = UIColor.white
            
            betValue = 250
            
            betLabel.text = "Bet: $\(betValue)"
            
    }
    }
    
    @IBAction func SpinButton500(_ sender: Any) {
        
        button500.backgroundColor = UIColor.green
        
        if button100.backgroundColor == UIColor.green || button250.backgroundColor == UIColor.green {
            
            button100.backgroundColor = UIColor.white
            
            button250.backgroundColor = UIColor.white
            
            betValue = 500
            
            betLabel.text = "Bet: $\(betValue)"
    }
    }
    
        
    
    
    @IBAction func SpinButton(_ sender: Any) {
    
    
        if betValue == 100 {
        
        let randomSlotNumber1 = arc4random_uniform(5) + 1
        
        let randomSlotNumber2 = arc4random_uniform(5) + 1
        
        let randomSlotNumber3 = arc4random_uniform(5) + 1
        
        slotOne.image = UIImage(named: "Icon\(randomSlotNumber1)")
        
        slotTwo.image = UIImage(named: "Icon\(randomSlotNumber2)")
        
        slotThree.image = UIImage(named: "Icon\(randomSlotNumber3)")
        
        if randomSlotNumber1 == randomSlotNumber2 && randomSlotNumber2 == randomSlotNumber3 {
            
            moneyWon -= 100
            
            moneyWon += 500
            
            labelMoney.text = "$\(moneyWon)" ;
            
            if slotOne.image == UIImage(named: "Icon2") {
                
                moneyWon += 1000
                
            }
        
        } else if randomSlotNumber1 == randomSlotNumber2 || randomSlotNumber2 == randomSlotNumber3 {
            
            moneyWon -= 100
            
            moneyWon += 250
            
            labelMoney.text = "$\(moneyWon)" ;
        
            
        } else {
            
            moneyWon -= 100
            
            labelMoney.text = "$\(moneyWon)" ;
            
            }
        } else if betValue == 250 {
            
            let randomSlotNumber1 = arc4random_uniform(5) + 1
            
            let randomSlotNumber2 = arc4random_uniform(5) + 1
            
            let randomSlotNumber3 = arc4random_uniform(5) + 1
            
            slotOne.image = UIImage(named: "Icon\(randomSlotNumber1)")
            
            slotTwo.image = UIImage(named: "Icon\(randomSlotNumber2)")
            
            slotThree.image = UIImage(named: "Icon\(randomSlotNumber3)")
            
            
            if randomSlotNumber1 == randomSlotNumber2 && randomSlotNumber2 == randomSlotNumber3 {
                
                moneyWon -= 250
                
                moneyWon += 1000
            
                
                labelMoney.text = "$\(moneyWon)" ;
                
                if slotOne.image == UIImage(named: "Icon2") {
                    
                    moneyWon += 1000
                
                    
                }
                
            } else if randomSlotNumber1 == randomSlotNumber2 || randomSlotNumber2 == randomSlotNumber3 {
                
                moneyWon -= 250
                
                moneyWon += 500
                
                labelMoney.text = "$\(moneyWon)" ;
                
            } else {
                
                moneyWon -= 250
                
                labelMoney.text = "$\(moneyWon)" ;
                
            }
            
        }else if betValue == 500 {
            
            let randomSlotNumber1 = arc4random_uniform(5) + 1
            
            let randomSlotNumber2 = arc4random_uniform(5) + 1
            
            let randomSlotNumber3 = arc4random_uniform(5) + 1
            
            slotOne.image = UIImage(named: "Icon\(randomSlotNumber1)")
            
            slotTwo.image = UIImage(named: "Icon\(randomSlotNumber2)")
            
            slotThree.image = UIImage(named: "Icon\(randomSlotNumber3)")
            
            if randomSlotNumber1 == randomSlotNumber2 && randomSlotNumber2 == randomSlotNumber3 {
                
                moneyWon -= 500
                
                moneyWon += 1000
                
                
                labelMoney.text = "$\(moneyWon)" ;
                
                if slotOne.image == UIImage(named: "Icon2") {
                    
                    moneyWon += 1000
                    
                    
                }
                
            } else if randomSlotNumber1 == randomSlotNumber2 || randomSlotNumber2 == randomSlotNumber3 {
                
                moneyWon -= 500
                
                moneyWon += 1000
                
                labelMoney.text = "$\(moneyWon)" ;
                
            } else {
                
                moneyWon -= 500
                
                labelMoney.text = "$\(moneyWon)" ;
                
            }
            
            
        }
    }

    
        
        
        

    
    
    
    
    
    
    
    


    









}

