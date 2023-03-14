//
//  StartViewController.swift
//  Final_test_task
//
//  Created by Nurlan Seitov on 14/3/23.
//

import UIKit
import SnapKit


class StartViewController: UIViewController {

    let wellcomeLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14)
        label.text = "Welcome back , Rohit thakur"
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.358, green: 0.356, blue: 0.356, alpha: 1)
        //label.textColor = .gray
        return label
    } ()
    let imagView: UIImageView = {
        let image = UIImageView()
        
        return image
        
    } ()
    let enterYourMobLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        //label.font = .systemFont(ofSize: 17)
       // label.font = UIFont(name: "Geeza Pro-Bold", size: 30.0)
        label.font = .boldSystemFont(ofSize: 18)
        label.text = "Enter Your Mobile Number"
        //label.layer.
        label.textAlignment = .center
        //label.textColor = UIColor(named: "#F2796B".isHexColor)
        //label.textColor = UIColor(named: "#F2796B")
        //label.textColor = .red
        label.textColor = UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1)
        return label
    } ()
    let enternumbTextFil: UITextField = {
        let entertf = UITextField()
        entertf.placeholder = " Enter number"
        entertf.font = .systemFont(ofSize: 18)
        entertf.layer.cornerRadius = 10
        entertf.layer.backgroundColor = UIColor.white.cgColor
        entertf.layer.borderWidth = 1
        entertf.layer.borderColor = UIColor.gray.cgColor
        
        return entertf
    } ()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 10
//        button.layer.borderWidth = 1
//        button.layer.borderColor = UIColor.black.cgColor
        button.backgroundColor = UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1)
        //button.backgroundColor = .orange
        button.setTitleColor(.white, for: .normal)
       // button.tintColor = .blue
       // button.layer.style.size
        return button
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUIV()
        initAction()
        
        
    }
    private func initUIV() {
        
        //view.backgroundColor = .systemGray6
        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        view.addSubview(wellcomeLabel)
        view.addSubview(imagView)
        view.addSubview(enterYourMobLabel)
        view.addSubview(enternumbTextFil)
        view.addSubview(loginButton)
        
        
        wellcomeLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
           // make.height.equalTo(40)
            make.top.equalToSuperview().offset(88)
        }
        
        imagView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(61)
            make.top.equalTo(wellcomeLabel.snp.bottom).offset(49)
            make.height.equalTo(231)
            make.width.equalTo(296)
        }
        
        enterYourMobLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(imagView.snp.bottom).offset(15)
            make.height.equalTo(26.0)
        }
        
        enternumbTextFil.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(enterYourMobLabel.snp.bottom).offset(31)
            make.height.equalTo(43.0)
        }
        
        loginButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(enternumbTextFil.snp.bottom).offset(64)
            make.height.equalTo(43.0)
        }
        
        imagView.image = UIImage(named: "DrawKit logo")
        
//        imagView.layer.cornerRadius = 50
//        imagView.layer.borderWidth = 2
//        imagView.layer.borderColor = UIColor.gray.cgColor
        imagView.clipsToBounds = true
       // imagView.contentMode.self = .scaleAspectFill
        
       
    }

    private func initAction() {
        loginButton.addTarget(self,
                              action: #selector(goToNextPage(_ :)),
                              for: .touchUpInside)
    }
    
    @objc func goToNextPage(_ sender: UIButton) {
            
            let vc = SecondViewController()
            vc.nameValue = enternumbTextFil.text ?? "empty"
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
