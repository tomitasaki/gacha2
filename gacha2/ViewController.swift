//
//  ViewController.swift
//  gacha2
//
//  Created by hmlab book pro on 2016/02/11.
//  Copyright © 2016年 hmlab book pro. All rights reserved.
//

    import UIKit
    
    class ViewController: UIViewController {
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
    @IBAction func gacha(){
        //画面遷移
        self.performSegueWithIdentifier("result", sender: nil)
    }


}

