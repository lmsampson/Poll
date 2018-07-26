//
//  CombinedViewController.swift
//  Poll
//
//  Created by Lisa Sampson on 7/26/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController {

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EmbedVotingPage" {
            if let viewController = segue.destination as? VoteControllerProtocol {
                viewController.voteController = voteController
            }
        } else if segue.identifier == "EmbedResultsTable" {
            if let viewController = segue.destination as? VoteControllerProtocol {
                viewController.voteController = voteController
            }
        }
    }
    
    var voteController: VoteController?
}
