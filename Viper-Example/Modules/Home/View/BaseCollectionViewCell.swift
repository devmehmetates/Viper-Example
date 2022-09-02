//
//  BaseCollectionViewCell.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var subTitleLabel: UILabel!
    
    func configureLabels(with model: Movie?) {
        nameLabel.text = model?.title
        subTitleLabel.text = model?.overview
    }
}
