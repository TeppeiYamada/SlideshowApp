//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 山田哲平 on 2017/01/12.
//  Copyright © 2017年 山田哲平. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }
    
    
    
    let imageArray = [UIImage(named: "BE.JPG"),
                 UIImage(named: "KEN.JPG"),
                 UIImage(named: "SHISHI.JPG")
        ]

    var imageIndex = 0
    var myTimer = Timer()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        imageButton.setImage(imageArray[imageIndex], for: UIControlState.normal)
        
    }
    
    
    @IBOutlet weak var imageButton: UIButton!
   
    
    
    
    @IBOutlet weak var PlayStopButton: UIButton!
    @IBAction func PlayStop(_ sender: Any) {
        
        
        
        if myTimer.isValid == true{
            backButton.isEnabled = true
        }else{
            
            backButton.isEnabled = false
        }
        
        if myTimer.isValid == true{
            nextButton.isEnabled = true
        }else{
            
            
            nextButton.isEnabled = false
        }


        if myTimer.isValid == true{
            
        PlayStopButton.setTitle("再生", for: UIControlState.normal)
        myTimer.invalidate()
            
        }else{
            
            myTimer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
            
            PlayStopButton.setTitle("停止", for: UIControlState.normal)
           
        }
        
        
        
        
    }
    
    func update(tm: Timer){
        
        if imageIndex == imageArray.count - 1 {
            imageIndex = 0
        }else{
            imageIndex += 1
        }
        
       
         imageButton.setImage(imageArray[imageIndex], for: UIControlState.normal)

    
    }
    
    @IBOutlet weak var backButton: UIButton!
    @IBAction func backButton(_ sender: Any) {
        
        if imageIndex == imageArray.count - 3{
            imageIndex = 2
        }else{
            imageIndex -= 1
        }
        
        imageButton.setImage(imageArray[imageIndex], for: UIControlState.normal)
        
    }
    
    @IBOutlet weak var nextButton: UIButton!
    @IBAction func nextButton(_ sender: Any) {
        
        
        if imageIndex == imageArray.count - 1 {
            imageIndex = 0
        }else{
            imageIndex += 1
        }
        
        imageButton.setImage(imageArray[imageIndex], for: UIControlState.normal)
    
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.imageIndex = imageIndex
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

