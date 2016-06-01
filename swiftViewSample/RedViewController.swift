//
//  RedViewController.swift
//  swiftViewSample
//
//  Created by MF839-013 on 2016. 6. 1..
//  Copyright © 2016년 SDS. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        if let station = appDelegate?.stations{
            myLabel.text = station[0]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let nextVC = segue.destinationViewController as? GreenViewController
        
        nextVC?.labelText = "홍대"
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
