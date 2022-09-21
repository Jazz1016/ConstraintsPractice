//
//  HomeVC.swift
//  Uber
//
//  Created by James Lea on 8/23/22.
//

import UIKit

enum HomeSection {
    case ads(items: [Ad])
    case ride(items: [Ride])
    case package(items: [Package])
    case searchBar
    case destinations(items: [Destination])
    case around
}

class HomeVC: UIViewController {
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.frame         = view.bounds
        tableView.rowHeight     = 400
        tableView.delegate      = self
        tableView.dataSource    = self
        tableView.register(AdsTableViewCell.self, forCellReuseIdentifier: AdsTableViewCell.reuseID)
    }

}

private extension HomeVC {
    func createDataSource() -> [HomeSection] {
        let ads = HomeSection.ads
        let ride = HomeSection.ride
        let package = HomeSection.package
        let searchBar = HomeSection.searchBar
        let destinations = HomeSection.destinations
        let around = HomeSection.around
        
        return [ads(ModelController.ads), ride(ModelController.rides), package(ModelController.packages), searchBar, destinations(ModelController.destinations), around]
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
//        let dataSource = createDataSource()
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let dataSource = createDataSource()
//        switch dataSource {
//
//        default:
//            return 10
//        }
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: AdsTableViewCell.reuseID) as! AdsTableViewCell
            let ads = ModelController.ads
            cell.set(ads: ads)
            return cell
        }
        return UITableViewCell()
    }
    
    
}
