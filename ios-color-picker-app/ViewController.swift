//
//  ViewController.swift
//  ios-color-picker-app
//
//  Created by Aid on 13.06.2022.
//

import UIKit

class ViewController: UIViewController, UIColorPickerViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButton()
    }

    //Create Button
    func createButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.layer.cornerRadius = 18
        view.addSubview(button)
        button.backgroundColor = .systemGray
        button.setTitle("Choose Color", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector(openDetailVC(param:)), for: .touchUpInside)
    }
    
    
    @objc private  func openDetailVC(param : UIBarButtonItem) {
        
        let colorPickerVC = UIColorPickerViewController()
        colorPickerVC.delegate = self
        present(colorPickerVC, animated: true)
    }

    func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
        view.backgroundColor = color
    }
}

