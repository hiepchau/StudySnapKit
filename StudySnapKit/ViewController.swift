//
//  ViewController.swift
//  StudySnapKit
//
//  Created by Châu Hiệp on 12/03/2023.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    @IBOutlet weak var gray: UIView!
    @IBOutlet weak var black: UIView!
    @IBOutlet weak var teal: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var violet: UIView!
    let redView = UIView()
    let blueView = UIView()
    var topConstraint: Constraint?
    override func viewDidLoad() {
        super.viewDidLoad()
        gray.isHidden = true
        teal.isHidden = true
        yellow.isHidden = true
        violet.isHidden = true
        black.isHidden = true
        
        redView.backgroundColor = .red
        blueView.backgroundColor = .blue
        
        view.addSubview(redView)
        view.addSubview(blueView)
        
        redView.snp.makeConstraints { make in
            make.width.height.equalTo(50)
            make.center.equalTo(view.snp.center)
        }
        
        blueView.snp.makeConstraints { make in
            make.width.height.equalTo(redView.snp.width)
            make.centerX.equalTo(view.snp.centerX)
            topConstraint = make.top.equalTo(redView.snp.bottom).offset(50).constraint
        }
        
        let button = UIButton()
        button.setTitle("Update Constraint", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(updateConstraint), for: .touchUpInside)
        view.addSubview(button)
        
        button.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(blueView.snp.bottom).offset(50)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
        let button1 = UIButton()
        button1.setTitle("Remake Constraint", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.backgroundColor = .systemPink
        button1.addTarget(self, action: #selector(remakeConstraint), for: .touchUpInside)
        view.addSubview(button1)
        
        button1.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(button.snp.bottom).offset(50)
        }
    }
    
    @objc func updateConstraint() {
        topConstraint?.update(offset: 200)
        updateConstraints()
    }
    
    func updateConstraints() {
        blueView.snp.updateConstraints { make in
            make.top.equalTo(redView.snp.bottom).offset(100)
        }
    }
    
    @objc func remakeConstraint() {
        remakeConstraints()
    }
    
    func remakeConstraints() {
        redView.snp.remakeConstraints { make in
            make.width.height.equalTo(100)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leadingMargin)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
        }
    }
    
//    redView.snp.makeConstraints { make in
//        make.width.height.equalTo(50)
//        make.center.equalTo(view.snp.center)
//    }
    
}

