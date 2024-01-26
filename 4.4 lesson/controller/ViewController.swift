//
//  ViewController.swift
//  4.4 lesson
//
//  Created by adyl CEO on 22/01/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    private let simpleTableView = UITableView()
    
    private let data: [Struct] = [Struct(image: "11", text: "Furniture", liltext: "785 Items"),
                                  Struct(image: "22", text: "Kitchenware", liltext: "645 Items"),
                                  Struct(image: "33", text: "Reading Table", liltext: "333 Items")
                                 ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(simpleTableView)
        simpleTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        simpleTableView.translatesAutoresizingMaskIntoConstraints = false
        
        //без этого не будет отображаться ячейки
        simpleTableView.dataSource = self
        simpleTableView.delegate = self
         
        
        NSLayoutConstraint.activate([
            simpleTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            simpleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            simpleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            simpleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
        
    }
    
    
    //количество ячеек
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    

    
    //содержимое ячейки
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.setData(data[indexPath.row])
        return cell
    }
    
    //
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = SecondViewController()
        vc.selectedItem = data[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

