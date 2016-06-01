//
//  GreenViewController.swift
//  swiftViewSample
//
//  Created by MF839-013 on 2016. 6. 1..
//  Copyright © 2016년 SDS. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController, BlueProtocol{

    @IBOutlet weak var myLabel: UILabel!
    
    var labelText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        if let station = appDelegate?.stations{
            myLabel.text = station[1]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let blueVC = segue.destinationViewController as? BlueViewController
        
        blueVC?.delegate = self
        
        blueVC?.labelText = "합정"
        blueVC?.changeColorFunc = {
            (color:UIColor)->Void in
            self.view.backgroundColor = color
        }
    }
    
    func changeBackgroundColor(){
        self.view.backgroundColor = UIColor.blueColor()
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
