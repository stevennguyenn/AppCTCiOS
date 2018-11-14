//
//  CarViewController.swift
//  APP_CTCT
//
//  Created by vinova on 11/8/18.
//  Copyright © 2018 vinova. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {

    @IBOutlet weak var tbCar: UITableView!
    let cars = DataCar.cars
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //registerCell()
    }
}
    
//    func registerCell(){
//        tbCar.delegate = self
//        tbCar.dataSource = self
//        tbCar.register(UINib.init(nibName: "CarCell", bundle: nil), forCellReuseIdentifier: "CarCell")
//    }
//}
//
//extension CarViewController: UITableViewDataSource{
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return cars.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell") as? CarCell else {
//            return UITableViewCell()
//        }
//        cell.setupCell(carModel: cars[indexPath.row])
//        return cell
//    }
//}
//extension CarViewController: UITableViewDelegate{
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
//}
