//
//  BlueViewController.swift
//  swiftViewSample
//
//  Created by MF839-013 on 2016. 6. 1..
//  Copyright © 2016년 SDS. All rights reserved.
//

import UIKit

protocol BlueProtocol {
    func changeBackgroundColor()
}

class BlueViewController: UIViewController {
    
    var delegate:BlueProtocol?
    var labelText:String?
    var changeColorFunc:((UIColor)->())?
    
    @IBOutlet weak var myLabel: UILabel!

    @IBAction func changeColorNoti(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("changecolor", object: UIColor.brownColor())
    }
    @IBAction func changeColorFunc(sender: AnyObject) {
        changeColorFunc?(UIColor.redColor())
    }
    
    @IBAction func changeColor(sender: AnyObject) {
        delegate?.changeBackgroundColor()
    }
    @IBAction func changeValue(sender: AnyObject) {
       let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        
        appDelegate?.stations?[0] = "강남"
    }
    

    
    @IBAction func goHome(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        if let myText = labelText{
//            myLabel.text = myText
//        }
        
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        if let station = appDelegate?.stations{
            myLabel.text = station[2]
        }
        
//        if let st = station {
//            myLabel.text = st
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
