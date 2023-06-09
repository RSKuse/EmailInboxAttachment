//
//  ViewController.swift
//  EmailInboxAttachment
//
//  Created by Reuben Simphiwe Kuse on 2023/03/16.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    lazy var infoTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isScrollEnabled = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableViewConstraints()
        registerCells()
    }
    
    func setupTableViewConstraints() {
        view.addSubview(infoTableView)
        
        infoTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        infoTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        infoTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        infoTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        infoTableView.register(EmailInboxInfo.self,forCellReuseIdentifier: "EmailInboxInfo")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: "EmailInboxInfo", for: indexPath) as! EmailInboxInfo
        return userCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(110)
    }
    
}
