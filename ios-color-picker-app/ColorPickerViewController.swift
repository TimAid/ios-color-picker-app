//
//  DetailViewController.swift
//  ios-color-picker-app
//
//  Created by Aid on 14.06.2022.
//

import UIKit

class ColorPickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        navigationItem.hidesBackButton = true
        doneBarButton()
    }
   
    //MARK: create Done BarButton
    func doneBarButton() {
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonPressed(param: )))
    }
    
    //MARK: Target
    @objc func doneButtonPressed(param : UIBarButtonItem) {
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
    }
    

}
