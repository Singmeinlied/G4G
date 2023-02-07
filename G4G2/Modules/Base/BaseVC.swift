//
//  BaseVC.swift
//  G4G2
//
//  Created by Abai Kush on 3/2/23.
//

import UIKit

class BaseVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstrains()
        setupValues()
    }
    
    func setupViews(){
        view.backgroundColor = .white
    }
    
    func setupConstrains(){
    }
    
    func setupValues(){
    }
}
