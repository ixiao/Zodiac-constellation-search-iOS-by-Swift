//
//  ViewController.swift
//  Zodiac constellation Search
//
//  Created by 闫潇 on 15/1/24.
//  Copyright (c) 2015年 yan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yearOfBirth: UITextField!//出生年份
    
    @IBOutlet var monthOfBirh: UITextField!//出生月日
    
    @IBOutlet var constellation: UILabel!//星座
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet var xImage: UIImageView!
    let offset = 4
    override func viewDidLoad() {
        super.viewDidLoad()
        image.hidden=true
        xImage.hidden=true
    }
    
    
    //触摸屏幕边缘回收键盘的方法
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
        monthOfBirh.resignFirstResponder()
    }
    //计算生肖的方法
    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        monthOfBirh.resignFirstResponder()
        
        image.hidden=false
        xImage.hidden=false
        
        if let year = yearOfBirth.text.toInt() {
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }
        
        if(0321 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0420)
        {
            constellation.text="白羊座"
            xImage.image=UIImage(named: "x1")
        }
        else if(0421 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0520)
        {
            constellation.text="金牛座"
            xImage.image=UIImage(named: "x2")
            
        }
        else if(0521 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0621)
        {
            constellation.text="双子座"
            xImage.image=UIImage(named: "x3")
            
        }
        else if(0622 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0722)
        {
            constellation.text="巨蟹座"
            xImage.image=UIImage(named: "x4")
            
        }
        else if(0722 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0822)
        {
            constellation.text="狮子座"
            xImage.image=UIImage(named: "x5")
            
            
        }
        else if(0823 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0922)
        {
            constellation.text="处女座"
            xImage.image=UIImage(named: "x6")
            
        }
        else if(0923 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 1023)
        {
            constellation.text="天秤座"
            xImage.image=UIImage(named: "x7")
            
        }
        else if(1024 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 1121)
        {
            constellation.text="天蝎座"
            xImage.image=UIImage(named: "x8")
            
        }
        else if(1122 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 1221)
        {
            constellation.text="射手座"
            xImage.image=UIImage(named: "x9")
            
        }
        else if(0120 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0218)
        {
            constellation.text="摩羯座"
            xImage.image=UIImage(named: "x10")
            
        }
        else if(0219 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0320)
        {
            constellation.text="水瓶座"
            xImage.image=UIImage(named: "x11")
            
        }
        else if(0120 <= monthOfBirh.text.toInt()&&monthOfBirh.text.toInt() <= 0218)
        {
            constellation.text="双鱼座"
            xImage.image=UIImage(named: "x12")
            
            
        }
        
        UIAlertView(title: "提示", message: "查询成功", delegate: nil, cancelButtonTitle: "确定").show();
        
        
        
    }
    //swift代码实现UIAlertView
    
    
    
    
}

