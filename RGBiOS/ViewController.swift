//
//  ViewController.swift
//  RGBiOS
//
//  Created by deniskhoshaba on 29/1/18.
//  Copyright © 2018 deniskhoshaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myBtn: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var RGBlabel: UILabel!
    
    var ColorRed: CGFloat = 0
    var ColorGreen: CGFloat = 0
    var ColorBlue: CGFloat = 0
    var ColorAlpha : CGFloat = 0
    
   /* override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let attr = NSAttributedString.init(string: "Click/Touch me", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 40), NSAttributedStringKey.foregroundColor: UIColor.blue])
        myBtn.setAttributedTitle(attr, for: .normal)
    }
*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRGB(red: CGFloat,green: CGFloat,blue: CGFloat,alpha: CGFloat) {
        RGBlabel.text = "(\(Int(red * 255.0)),\(Int(green * 255.0)),\(Int(blue * 255.0)),\(Int(alpha * 255.0)))"
    }
    
    @IBAction func ChangeRColor(_ sender: UISlider) {

        titleLabel.textColor.getRed(&ColorRed, green: &ColorGreen, blue: &ColorBlue, alpha: &ColorAlpha)
        titleLabel.textColor = UIColor(
            red:  CGFloat(sender.value),
            green: CGFloat(ColorGreen),
            blue: CGFloat(ColorBlue),
            alpha: CGFloat(ColorAlpha)
        )
        getRGB(red: CGFloat(sender.value), green: CGFloat(ColorGreen), blue: CGFloat(ColorBlue), alpha: CGFloat(ColorAlpha))
    }
    
    @IBAction func ChangeGColor(_ sender: UISlider) {

        titleLabel.textColor.getRed(&ColorRed, green: &ColorGreen, blue: &ColorBlue, alpha: &ColorAlpha)
        titleLabel.textColor = UIColor(
            red:  CGFloat(ColorRed),
            green: CGFloat(sender.value),
            blue: CGFloat(ColorBlue),
            alpha: CGFloat(ColorAlpha)
        )
        getRGB(red: CGFloat(ColorRed), green: CGFloat(sender.value), blue: CGFloat(ColorBlue), alpha: CGFloat(ColorAlpha))
        
    }
    
    @IBAction func ChangeBColor(_ sender: UISlider) {

        titleLabel.textColor.getRed(&ColorRed, green: &ColorGreen, blue: &ColorBlue, alpha: &ColorAlpha)
        titleLabel.textColor = UIColor(
            red:  CGFloat(ColorRed),
            green: CGFloat(ColorGreen),
            blue: CGFloat(sender.value),
            alpha: CGFloat(ColorAlpha)
        )
        getRGB(red: CGFloat(ColorRed), green: CGFloat(ColorGreen), blue: CGFloat(sender.value), alpha: CGFloat(ColorAlpha))
    }
    
    /*
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    } */
    
}

