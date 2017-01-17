//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 山田哲平 on 2017/01/13.
//  Copyright © 2017年 山田哲平. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageIndex = 0
    
    let imageArray = [UIImage(named: "BE.JPG"),
                      UIImage(named: "KEN.JPG"),
                      UIImage(named: "SHISHI.JPG")
    ]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = imageArray[imageIndex]
        
               
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
