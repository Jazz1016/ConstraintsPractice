//
//  TesetCollectionViewCell.swift
//  Uber
//
//  Created by James Lea on 9/20/22.
//

import UIKit

class TesetCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "TestCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
