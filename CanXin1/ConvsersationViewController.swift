//
//  ConvsersationViewController.swift
//  CanXin1
//
//  Created by HDcat on 15/10/19.
//  Copyright © 2015年 HDcat. All rights reserved.
//

import UIKit

class ConvsersationViewController: RCConversationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setMessageAvatarStyle(RCUserAvatarStyle.USER_AVATAR_CYCLE)
        
        self.targetId = "m1"
        self.userName = "Jobb"
        
        self.conversationType = RCConversationType.ConversationType_PRIVATE
        self.title = self.userName 

        
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
