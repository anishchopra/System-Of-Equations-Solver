//
//  ViewController.swift
//  System of Equations Solver
//
//  Created by Anish Chopra on 2015-01-06.
//  Copyright (c) 2015 Anish Chopra. All rights reserved.
//
extension Double {
    func toString() -> String {
        return String(format: "%.0f",self)
    }
    
    func toLongString() -> String {
        if (self != 0.0) {
            return String(format: "%g", self)
        }
        else {
            return "0"
        }
    }
}

extension String {
    func toDouble() -> Double? {
        let formatter = NSNumberFormatter()
        if let number = formatter.numberFromString(self) {
            return number.doubleValue
        }
        return nil
    }
}

let deviceList =   ["i386":         "Simulator",
    "iPod1,1":      "iPod Touch",       // (Original)
    "iPod2,1":      "iPod Touch 2",     // (Second Generation)
    "iPod3,1":      "iPod Touch 3",     // (Third Generation)
    "iPod4,1":      "iPod Touch 4",     // (Fourth Generation)
    "iPhone1,1":    "iPhone 1",         // (Original)
    "iPhone1,2":    "iPhone 3G",        // (3G)
    "iPhone2,1":    "iPhone 3GS",       // (3GS)
    "iPad1,1":      "iPad 1",           // (Original)
    "iPad2,1":      "iPad 2",           //
    "iPad3,1":      "iPad 3",           // (3rd Generation)
    "iPhone3,1":    "iPhone 4",         //
    "iPhone3,2":    "iPhone 4",         //
    "iPhone4,1":    "iPhone 4S",        //
    "iPhone5,1":    "iPhone 5",         // (model A1428, AT&T/Canada)
    "iPhone5,2":    "iPhone 5",         // (model A1429, everything else)
    "iPad3,4":      "iPad 4",           // (4th Generation)
    "iPad2,5":      "iPad Mini 1",      // (Original)
    "iPhone5,3":    "iPhone 5c",        // (model A1456, A1532 | GSM)
    "iPhone5,4":    "iPhone 5c",        // (model A1507, A1516, A1526 (China), A1529 | Global)
    "iPhone6,1":    "iPhone 5s",        // (model A1433, A1533 | GSM)
    "iPhone6,2":    "iPhone 5s",        // (model A1457, A1518, A1528 (China), A1530 | Global)
    "iPad4,1":      "iPad Air 1",       // 5th Generation iPad (iPad Air) - Wifi
    "iPad4,2":      "iPad Air 2",       // 5th Generation iPad (iPad Air) - Cellular
    "iPad4,4":      "iPad Mini 2",      // (2nd Generation iPad Mini - Wifi)
    "iPad4,5":      "iPad Mini 2",      // (2nd Generation iPad Mini - Cellular)
    "iPhone7,1":    "iPhone 6 Plus",    // All iPhone 6 Plus's
    "iPhone7,2":    "iPhone 6"          // All iPhone 6's
]

public extension UIDevice {
    var modelName: String {
        var systemInfo: utsname = utsname(sysname: (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
            nodename: (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
            release: (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
            version: (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
            machine: (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
        )
        uname(&systemInfo)
        
        let machine = systemInfo.machine
        var identifier = ""
        let mirror = reflect(machine)
        for i in 0..<reflect(machine).count {
            if mirror[i].1.value as! Int8 == 0 {
                break
            }
            identifier.append(UnicodeScalar(UInt8(mirror[i].1.value as! Int8)))
        }
        if let readableIdentifier = deviceList[identifier] {
            return readableIdentifier
        }
        return identifier
    }
}

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let sv = UIScrollView(frame: CGRectMake(0, 20, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height))
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        sv.scrollEnabled = false
        for view in sv.subviews {
            if (view is UITextField && view.tag == textField.tag+1) {
                textField.resignFirstResponder()
                view.becomeFirstResponder()
                return true
            }
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
        sv.endEditing(true)
        sv.scrollEnabled = false
    }
    
    
    let maxVariables = 6
    
    let lblAnswer = UILabel()
    
    var cofs: [UITextField] = []
    var b: [UITextField] = []
    
    let bar = UILabel()
    
    func updateBoxes(numVariables: Int) {
        sv.setContentOffset(CGPointZero, animated: true)
        sv.scrollEnabled = false
        
        let subviews = sv.subviews;
        
        for view in subviews {
            if view is UITextField {
                view.removeFromSuperview()
            }
        }
        
        cofs = []
        b = []
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        var boxHeight: CGFloat = 0
        if (UIDevice.currentDevice().modelName == "iPhone 4S") {
            boxHeight = screenWidth/11.5
        }
        else {
            boxHeight = screenWidth/10
        }
        let boxWidth = screenWidth/9
        
        let y = boxWidth/4
        var t = CGFloat(numVariables+1)*boxWidth + CGFloat(numVariables-1)*boxWidth/8
        t += boxWidth/4 + 1
        let startX = (screenWidth - t)/2
        let startY = screenHeight/4.6
        
        var currentX = startX
        var currentY = startY
        
        for i in 0..<numVariables {
            for j in 0..<numVariables {
                let box = UITextField(frame: CGRectMake(currentX, currentY, boxWidth, boxHeight))
                box.borderStyle = UITextBorderStyle.RoundedRect
                box.keyboardType = UIKeyboardType.NumbersAndPunctuation
                box.tag = (i+1)+((numVariables+1)*j)
                box.delegate = self
                box.addTarget(self, action:Selector("allowScrolling"), forControlEvents: UIControlEvents.EditingDidBegin)
                sv.addSubview(box)
                cofs.append(box)
                currentY += boxHeight * 1.5
            }
            currentX += boxWidth * 1.125
            currentY = startY
        }
        
        let barHeight = Double(boxHeight) * 1.5 * Double(numVariables) - Double(boxHeight/2);
        bar.frame = CGRectMake(currentX, currentY, 1, CGFloat(barHeight))
        bar.font = UIFont.systemFontOfSize(CGFloat(barHeight/2))
        bar.backgroundColor = UIColor.lightGrayColor()
        sv.addSubview(bar)
        
        currentX += 1 + boxWidth/8
        
        for i in 0..<numVariables {
            let box = UITextField(frame: CGRectMake(currentX, currentY, boxWidth, boxHeight))
            box.borderStyle = UITextBorderStyle.RoundedRect
            box.keyboardType = UIKeyboardType.NumbersAndPunctuation
            box.delegate = self
            box.tag = (numVariables+1)*(i+1)
            box.addTarget(self, action:Selector("allowScrolling"), forControlEvents: UIControlEvents.EditingDidBegin)
            sv.addSubview(box)
            b.append(box)
            currentY += boxHeight * 1.5
        }
    }
    
    let lblNumVariables = UILabel(frame: CGRectMake(0, 0, 25, 30))
    let btnSolve = UIButton(frame: CGRectMake(0, 0, 200, 40))
    
    let variableStepper = UIStepper(frame: CGRectMake(0, 0, 30, 20))
    func updateNumVariables() {
        lblNumVariables.text = Int(variableStepper.value).description
        updateBoxes(Int(variableStepper.value))
    }
    
    func solveMatrix() {
        sv.endEditing(true)
        sv.setContentOffset(CGPointZero, animated: true)
        
        lblAnswer.text = "Calculating..."
        
        var n = Int(variableStepper.value);
        var matrix : [[Double]] = Array(count: n, repeatedValue: Array(count: n, repeatedValue: 0.0))
        var column = 0
        var row = 0
        for box in cofs {
            if (box.text == "") {
                box.text = "0"
            }
            var value: Double? = box.text.toDouble()
            if (value == nil) {
                let alertController = UIAlertController(title: "Invalid Entry!", message: "", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
                lblAnswer.text = ""
                return;
            }
            matrix[row][column] = value!
            row++
            if (row >= n) {
                row = 0
                column++
            }
        }
        var bVector : [Double] = []
        for box in b {
            if (box.text == "") {
                box.text = "0"
            }
            var value: Double? = box.text.toDouble()
            if (value == nil) {
                let alertController = UIAlertController(title: "Invalid Entry!", message: "", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
                return;
            }
            
            bVector.append(value!)
        }
        
        var solution = solve(matrix, b: bVector)
        var s = ""
        var counter = 0
        if let sols = solution {
            for value in sols {
                s += "X"+(counter+1).description+" = "+value.toLongString()
                if (counter % 2 == 0) {
                    s += "       "
                }
                else if (counter != n-1) {
                    s += "\n"
                }
                counter++
            }
            lblAnswer.text = s
        }
        else {
            lblAnswer.text = "There is no unique solution to this system of equations"
        }
    }
    
    func hideKeyboard(recognizer: UITapGestureRecognizer) {
        sv.endEditing(true)
        sv.setContentOffset(CGPointZero, animated: true)
        sv.scrollEnabled = false
    }
    
    func allowScrolling() {
        sv.scrollEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sv.contentSize = CGSize(width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height*1.14)
        sv.showsVerticalScrollIndicator = true
        sv.scrollEnabled = false
        sv.userInteractionEnabled = true
        
        let t = UITapGestureRecognizer()
        t.addTarget(self, action: "hideKeyboard:")
        sv.addGestureRecognizer(t)
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        let title = UILabel(frame: CGRectMake(0, 0, screenWidth, screenHeight/10))
        title.text = "Equation Solver"
        title.frame.origin.x = screenWidth/2 - title.frame.width/2
        title.frame.origin.y = screenHeight/30
        title.font = UIFont(name: "Marker Felt", size: screenWidth/7)
        title.textAlignment = NSTextAlignment.Center
        
        let lblPrompt = UILabel(frame: CGRectMake(0, 0, screenWidth/2, 30))
        lblPrompt.text = "Number of equations:"
        lblPrompt.textAlignment = NSTextAlignment.Center
        lblPrompt.frame.origin.y = screenHeight/6.5
        lblPrompt.frame.origin.x = screenWidth/12
        lblPrompt.font = UIFont.boldSystemFontOfSize(screenWidth/24)
        
        lblNumVariables.text = "2"
        lblNumVariables.frame.origin.x = screenWidth/2 + lblNumVariables.frame.width*1.5
        lblNumVariables.frame.origin.y = screenHeight/6.5
        lblNumVariables.font = UIFont.boldSystemFontOfSize(screenWidth/24)
        
        variableStepper.minimumValue = 2.0
        variableStepper.maximumValue = Double(maxVariables)
        variableStepper.stepValue = 1.0
        variableStepper.frame.origin.x = screenWidth/2 + lblNumVariables.frame.width*2.5
        variableStepper.frame.origin.y = screenHeight/6.5
        variableStepper.addTarget(self, action: "updateNumVariables", forControlEvents: UIControlEvents.ValueChanged)
        
        btnSolve.frame.origin.x = screenWidth/2 - btnSolve.frame.width/2
        btnSolve.frame.origin.y = screenHeight/1.37
        btnSolve.setTitle("Solve", forState: UIControlState.Normal)
        btnSolve.backgroundColor = UIColor(red: 0, green: 0, blue: 50, alpha: 100)
        btnSolve.addTarget(self, action: "solveMatrix", forControlEvents: UIControlEvents.TouchUpInside)
        btnSolve.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        lblAnswer.frame = CGRectMake(0, 0, screenWidth, screenHeight/8)
        lblAnswer.frame.origin.y = btnSolve.frame.origin.y + btnSolve.frame.height*1.25
        lblAnswer.font = UIFont.boldSystemFontOfSize(screenWidth/20)
        lblAnswer.textAlignment = NSTextAlignment.Center
        lblAnswer.numberOfLines = 0
        
        sv.addSubview(title)
        sv.addSubview(lblNumVariables)
        sv.addSubview(variableStepper)
        sv.addSubview(btnSolve)
        sv.addSubview(lblAnswer)
        sv.addSubview(lblPrompt)
        self.view.addSubview(sv)
        
        updateBoxes(2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}





