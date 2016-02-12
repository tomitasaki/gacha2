//
//  ResulrviewControllerViewController.swift
//  gacha2
//
//  Created by hmlab book pro on 2016/02/11.
//  Copyright © 2016年 hmlab book pro. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    //一番後ろの背景を表示
    @IBOutlet var haikeiImageView: UIImageView!
    //一番表面のモンスターを表示
    @IBOutlet var monsterImageView: UIImageView!
    //モンスター画面を保存しておく配列
    var monsterArray: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //0〜9の間でランダムにint数値発生
        let number = Int(rand() % 9)
        //monsterArray配列に画像を１０枚追加保存
        monsterArray = [UIImage(named: "monster001.png")!,
            UIImage(named: "monster002.png")!,
            UIImage(named: "monster003.png")!,
            UIImage(named: "monster004.png")!,
            UIImage(named: "monster005.png")!,
            UIImage(named: "monster006.png")!,
            UIImage(named: "monster007.png")!,
            UIImage(named: "monster008.png")!,
            UIImage(named: "monster009.png")!,
            UIImage(named: "monster010.png")!
        ]
        //monsterArrayの中のnumebr番目を表示させる　ランダム表示
        monsterImageView.image = monsterArray[number]
        
        //numberの数より背景切り替え
        if number == 9{
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        }else if number > 6{
            haikeiImageView.image = UIImage(named: "bg_red.png")
        }else{
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        
        animation.fromValue = NSNumber(double: 0)
        
        //アニメーション終了時の数値（M_PIは角度の１８０度）
        animation.toValue = NSNumber(double: 2 * M_PI)
        
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
        
        animation.duration = 5
        
        animation.repeatCount = Float.infinity
        
        haikeiImageView.layer.addAnimation(animation, forKey: nil)
        
        // Dispose of any resources that can be recreated.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func modoru(){
        //前の画面に戻る
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
