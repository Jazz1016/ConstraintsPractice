//
//  ModelController.swift
//  Uber
//
//  Created by James Lea on 8/23/22.
//

import Foundation
import UIKit

class ModelController {
    var someColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    static let ads = [
        Ad(title: "Uber Green: same price as UberX", subtitle: "Go green", color: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1), image: UIImage(named: "UberX")!.withHorizontallyFlippedOrientation()),
        Ad(title: "Want to meet David Ortiz", subtitle: "Ride now", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), image: UIImage()),
        Ad(title: "Time to ride in confort", subtitle: "Ride in Comfort", color: #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1), image: UIImage()),
        Ad(title: "Set the mood on your ride", subtitle: "Ride in Comfort", color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), image: UIImage()),
        Ad(title: "Show how much you care", subtitle: "Send a package", color: UIColor(red: 0.99, green: 0.71, blue: 0.67, alpha: 1.00), image: UIImage()),
        Ad(title: "Leave something at home?", subtitle: "Send a package", color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), image: UIImage()),
        Ad(title: "Quick, in-town delivery", subtitle: "Send a package", color: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1), image: UIImage()),
        Ad(title: "Get out and about", subtitle: "Ride with Uber", color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), image: UIImage())
    ]
    
    static let rides = [
        Ride(title: "Ride", icon: UIImage(named: "UberX")!),
        Ride(title: "Food", icon: UIImage())
    ]
    
    static let packages = [
        Package(title: "Package", icon: UIImage()),
        Package(title: "Reserve", icon: UIImage()),
        Package(title: "Rent", icon: UIImage()),
        Package(title: "Travel", icon: UIImage())
    ]
    
    static let destinations = [
        Destination(address: "1901 State St", city: "San Diego", state: "California"),
        Destination(address: "2305 University Ave", city: "San Diego", state: "California")
    ]
    
}
