//
//  ViewController.swift
//  MVVM-With_Redux
//
//  Created by Lương Nhật Lâm on 8/25/17.
//  Copyright © 2017 Lương Nhật Lâm. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    let viewModel:ViewModel = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel.viewModelUpdate = { counter in
            self.counterLabel.text = counter
        }
        self.viewModel.updateUI()
    }

    @IBAction func increaseAction(_ sender: Any) {
        self.viewModel.increaseCounter()
    }
    
    @IBAction func decreaseAction(_ sender: Any) {
        self.viewModel.decreaseCounter()
    }
}

