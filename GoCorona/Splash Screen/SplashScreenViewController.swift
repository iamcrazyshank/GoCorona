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
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.goToDashboard()
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.loadingindicator.stopAnimating()
    }
    
    
    @objc func goToDashboard(){
    
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "DashboardVC") as! DashboardViewController
        self.present(nextViewController, animated:false, completion:nil)
        self.loadingindicator.stopAnimating()
        
        
    }
    
    
   

}
