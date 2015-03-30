//
//  ViewController.swift
//  love
//
//  Created by 李碰 on 15/3/29.
//  Copyright (c) 2015年 三瑞点成. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var birthday: UIDatePicker!
    @IBOutlet weak var heightn: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var home: UISwitch!
    @IBOutlet weak var result: UITextView!
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        name.resignFirstResponder()
    }
    @IBAction func heightchanged(sender: AnyObject) {
        
        var i = Int((sender as UISlider).value)
        height.text = "\(i)里米"
        
        
    }
    
    @IBAction func ok(sender: AnyObject) {
        let gendertext = gender.selectedSegmentIndex==0 ? "高富帅":"白富美"
        
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let now = NSDate()
        let components = gregorian?.components(NSCalendarUnit.YearCalendarUnit, fromDate:birthday.date, toDate: now, options: NSCalendarOptions(0))
        let age = components?.year
        let homet = home.on ?"有房":"无房"
        
        result.text = "\(name.text),\(age!),\(gendertext),身高\(height.text!),\(homet),求交往"
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

