//
//  CameraViewController.swift
//  demo
//
//  Created by Damiano Pugliesi on 05/11/2018.
//  Copyright © 2018 Damiano Pugliesi. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController {

    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var startButton: UIButton!
    var progressValue = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func updateProgress() {
        
        for i in 1...100 {
            progressBar.progress = Float(i / 100)
        }
    }

    @IBAction func saveButton_click(_ sender: Any) {
        progressBar.progress = 0
       self.perform(#selector(updateProgress), with: nil, afterDelay: 0.2)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
