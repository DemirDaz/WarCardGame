//
//  ViewController.swift
//  WarCardGame
//
//  Created by Demir Dazdarevic on 10.2.21..
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var rightImage: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    override func viewDidLoad() { //
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func dealTapped(_ sender: Any)
    {
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
        
        //ocekuje UIImage nazad pa pravimo.
        leftImage.image = UIImage(named: "card\(leftNumber)")
        
        rightImage.image = UIImage(named: "card\(rightNumber)")
        
        award(leftNumber,rightNumber)
        
    }
    
    func award(_ left:Int,_ right:Int) {
        if left > right
        {
            var player:Int = Int(playerScore.text!)!
            player = player + 1 //player += nece
                            //hoce nego si idiot
                            // +1 a ne +player
            playerScore.text = String(player)
            
        }
        else if left < right
        {
            var comp:Int = Int(cpuScore.text!)!
            comp = comp + 1
            cpuScore.text = String(comp)
            
        }
        else if left == right
        {
            print("Tie.")
            
        }
        //if ce se uvek pitat else if nece nakon
        //tacne izjave..nekad bolje else if.
    }
    
}

