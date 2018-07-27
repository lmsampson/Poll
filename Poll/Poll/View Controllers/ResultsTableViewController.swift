//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Lisa Sampson on 7/26/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath)
        
        let vote = voteController?.votes[indexPath.row]
        cell.textLabel?.text = vote?.name
        cell.detailTextLabel?.text = vote?.response
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    var voteController: VoteController?
    
}
