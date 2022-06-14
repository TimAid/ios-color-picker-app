//
//  ViewController.swift
//  ios-color-picker-app
//
//  Created by Aid on 13.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        edit()
    }

    //Create BarButtonItem
    func edit() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose,
                                                                 target: self,
                                                                 action: #selector(openDetailVC(param: )))
        
    }
    
    @objc func openDetailVC(param : UIBarButtonItem) {
        let detailVC = DetailViewController()
        show(detailVC, sender: nil)
    }

}

