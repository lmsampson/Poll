//
//  VotingViewController.swift
//  Poll
//
//  Created by Lisa Sampson on 7/26/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createVote(_ sender: Any) {
        guard let name = nameTextField.text,
        let response = responseTextField.text else { return }
        
        voteController?.createVote(withName: name, response: response)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    var voteController: VoteController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
}
