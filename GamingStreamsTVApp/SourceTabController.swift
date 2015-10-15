//
//  SourceTabController.swift
//  GamingStreamsTVApp
//
//  Created by Brendan Kirchner on 10/14/15.
//  Copyright © 2015 Rivus Media Inc. All rights reserved.
//

import UIKit

class SourceTabController: UITabBarController {
    
    convenience init(){
        self.init(nibName: nil, bundle: nil)
        
        let twitch = TwitchGamesViewController()
        let hitbox = HitboxGamesViewController()
        let custom = QRCustomVideoViewController()
        
        setViewControllers([twitch, hitbox, custom], animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
