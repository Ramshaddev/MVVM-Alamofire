//
//  ViewController.swift
//  star
//
//  Created by artmac on 28/08/24.
//

import UIKit

class HomeView: UIViewController {

    let homeViewModel = HomeViewModel()
    
    @IBOutlet weak var collectiionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        homeViewModel.loadHomeApi()
    }


}

extension HomeView: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
