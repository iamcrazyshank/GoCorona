//
//  SplashScreenViewController.swift
//  GoCorona
//
//  Created by Shashank Chandran on 4/30/20.
//  Copyright © 2020 Shashank Chandran. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {

    @IBOutlet weak var loadingindicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadingindicator.color = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        self.loadingindicator.startAnimating()
        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.loadingIndicator.stopAnimating()
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
