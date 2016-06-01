//
//  DarkViewController.swift
//  swiftViewSample
//
//  Created by MF839-013 on 2016. 6. 1..
//  Copyright © 2016년 SDS. All rights reserved.
//

import UIKit

class DarkViewController: UIViewController {

    @IBAction func goHome(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(changeBackgroundCoor), name: "changecolor", object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeBackgroundCoor(notification:NSNotification){
        self.view.backgroundColor = notification.object as? UIColor
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
