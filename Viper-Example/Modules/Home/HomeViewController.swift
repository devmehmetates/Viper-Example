//
//  HomeViewController.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 29.08.2022.
//

import UIKit

protocol HomeViewInterface: AnyObject { }

class HomeViewController: UIViewController, HomeViewInterface {

    @IBOutlet private weak var collectionView: UICollectionView!
    var presenter: HomePresenterInterface?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
