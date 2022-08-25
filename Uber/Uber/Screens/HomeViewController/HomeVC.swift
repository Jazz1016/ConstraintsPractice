//
//  HomeVC.swift
//  Uber
//
//  Created by James Lea on 8/23/22.
//

import UIKit

enum HomeSection {
    case ads(items: [Ad])
    case ride
    case package
    case searchBar
    case previousRide
    case around
}

class HomeVC: UIViewController {
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

private extension HomeVC {
    func createDataSource() -> [HomeSection] {
        let ads = HomeSection.ads
        let ride = HomeSection.ride
        let package = HomeSection.package
        let searchBar = HomeSection.searchBar
        let previousRide = HomeSection.previousRide
        let around = HomeSection.around
        
        return [ads, ride, package, searchBar, previousRide, around]
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        let dataSource = createDataSource()
        return dataSource.count - 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let dataSource = createDataSource()
        switch dataSource {
            
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
