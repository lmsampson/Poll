//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Lisa Sampson on 7/26/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        passVoteControllerToChildViewControllers()
    }

    func passVoteControllerToChildViewControllers() {
        for childVC in childViewControllers {
            if let childVC = childVC as? VoteControllerProtocol {
                childVC.voteController = voteController
            }
        }    }
    
    let voteController = VoteController()

}
