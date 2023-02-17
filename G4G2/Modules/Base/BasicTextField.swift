//
//  BasicTextField.swift
//  G4G2
//
//  Created by Abai Kush on 17/2/23.
//

import UIKit

//class BasicTextField: UIView{
//    private lazy var mainImage: UIImageView = {
//        let iv = UIImageView()
//        iv.backgroundColor = .green
//        return iv
//    }()
//    
//    var type: TextFieldType
//    
//    init(type: TextFieldType){
//        self.type = type
//        super.init(frame: .zero)
//        setupViews()
//        setupConstrains()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    private func setupViews(){
//        if type.isImageThere{
//            self.addSubview(mainImage)
//        }
//    }
//    
//    private func setupConstrains(){
//        snp.makeConstraints{
//            $0.height.equalTo(50)
//        }
//    }
//    
//    func setupValues(){
//        textfield.placeholder = type.placeholderString
//        mainImage.image = type.image
//    }
//}
