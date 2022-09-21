//
//  AdsTableViewCell.swift
//  Uber
//
//  Created by James Lea on 9/19/22.
//

import UIKit

class AdsTableViewCell: UITableViewCell {
    
    static let reuseID = "AdsCell"
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(ads: [Ad]){
        collectionView.delegate = self
        collectionView.dataSource = self
        
        NSLayoutConstraint.activate([
//            collectionView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8),
            collectionView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            collectionView.widthAnchor.constraint(equalToConstant: 400),
            collectionView.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        collectionView.backgroundColor = .blue
        
        
    }
    
    func setupCollectionView() {
//        guard let swipingView = swipingView else {
//            return
//        }
//        addSubview(swipingView)
//        swipingView.backgroundColor = .blue
        
    }
}

extension AdsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func updateCellsWith(ads: [Ad]) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
}
