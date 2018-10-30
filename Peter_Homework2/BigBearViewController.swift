//
//  BigBearViewController.swift
//  Peter_Homework2
//
//  Created by 陳庭楷 on 2018/10/30.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

class BigBearViewController: UIViewController {
    
    @IBOutlet weak var constellation: UITextField!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var sports: UISwitch!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    @IBOutlet weak var noImage: UIImageView!
    
    @IBOutlet weak var yesImage: UIImageView!
    
    var birthdayValue : Int = 0
    
    @IBAction func birthdaySlider(_ sender: UISlider) {
    
        birthdayLabel.isHidden = false
        
        birthdayValue = Int(sender.value)
        
        birthdayLabel.text = "1/\(birthdayValue)"
        
        }
    
    @IBAction func sendButton(_ sender: AnyObject) {
        
        let enterText : String = constellation.text!
        
        if enterText == "Aquarius" && gender.selectedSegmentIndex
            
            == 0 && sports.isOn == true && birthdayValue == 23{
            
            noImage.isHidden = true
            
            yesImage.isHidden = false
        }
            
        else{
            
            noImage.isHidden = false
            
            yesImage.isHidden = true
            
            }
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
