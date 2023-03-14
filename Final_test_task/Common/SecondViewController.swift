//
//  SecondViewController.swift
//  Final_test_task
//
//  Created by Nurlan Seitov on 14/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var nameValue: String?
    
    private let cellID = "cell"
    
    private let tableView = UITableView()
    
    private var users: [User] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Contacts"

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        
       initUIC()
       initData()
        
    }
    private func initUIC(){
       
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.leading.trailing.top.bottom.equalToSuperview().inset(0)
        }
    }
    
    private func initData() {
    
        users.append(User(name: "Elon Musk", image: "elon-musk", phone: String(nameValue ?? "0"), age: 51))
    users.append(User(name: "Jane Cooper", image: "images1", phone: "(270) 555-0117", age: 36))
    users.append(User(name: "Al Pacino", image: "al-pacino", phone: "(308) 555-0121", age: 70))
    users.append(User(name: "Devon Lane", image: "images3", phone: "(684) 555-0102", age: 36))
    users.append(User(name: "Jenny Wilson", image: "licza", phone: "(239) 555-0108", age: 25))
    users.append(User(name: "Darrell Steward", image: "images4", phone: "(704) 555-0127", age: 36))
    users.append(User(name: "Courtney Henry", image: "images5", phone: "(505) 555-0125", age: 30))
    users.append(User(name: "Altynai Botoyrova", image: "altynai-botoyrova", phone: "(239) 555-0221", age: 20))

    }

}

struct User {
    var name: String
    var image: String
    var phone: String
    var age: Int
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! TableViewCell
        
        cell.initUI(name: users[indexPath.row].name, phone: users[indexPath.row].phone, image: users[indexPath.row].image)
        cell.imageViewtvc.layer.cornerRadius = 35
        cell.imageViewtvc.layer.borderWidth = 1
        cell.imageViewtvc.layer.borderColor = UIColor.gray.cgColor
        
        cell.imageViewtvc.clipsToBounds = true
        cell.labelName.font = .boldSystemFont(ofSize: 17)
        cell.labelPhone.textColor = .gray
//        cell.textLabel?.text = "FIO"
//        cell.detailTextLabel?.text = "0933322342"
//        cell.detailTextLabel?.textColor = .gray
//        cell.imageView?.image = UIImage(named: "licza")
        
        return cell
    }
    
    
}
extension SecondViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "\(users[indexPath.row].name)", message: "\(users[indexPath.row].phone)", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Call", style: .default)
        alert.addAction(okBtn)
        present(alert, animated: true)
    }
}
