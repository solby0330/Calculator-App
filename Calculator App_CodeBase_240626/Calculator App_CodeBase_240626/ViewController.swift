//
//  ViewController.swift
//  Calculator App_CodeBase_240626
//
//  Created by 김솔비 on 6/26/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let numBox = UILabel()
    let num7 = UIButton()
    let num8 = UIButton()
    let num9 = UIButton()
    let plus = UIButton()
    let num4 = UIButton()
    let num5 = UIButton()
    let num6 = UIButton()
    let minus = UIButton()
    let num1 = UIButton()
    let num2 = UIButton()
    let num3 = UIButton()
    let multiply = UIButton()
    let AC = UIButton()
    let num0 = UIButton()
    let equal = UIButton()
    let divide = UIButton()
    let temp1 = UIStackView()
    let temp2 = UIStackView()
    let temp3 = UIStackView()
    let temp4 = UIStackView()
    let temp5 = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        view.backgroundColor = .black
        
        numBox.text = "0"
        numBox.textColor = .white
        numBox.font = UIFont.boldSystemFont(ofSize: 60)
        numBox.textAlignment = .right
        
        num7.setTitle("7", for: .normal)
        num7.setTitleColor(.white, for: .normal)
        num7.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num7.backgroundColor = .darkGray
        num7.frame.size.height = 80
        num7.frame.size.width = 80
        num7.layer.cornerRadius = 40
        
        num8.setTitle("8", for: .normal)
        num8.setTitleColor(.white, for: .normal)
        num8.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num8.backgroundColor = .darkGray
        num8.frame.size.height = 80
        num8.frame.size.width = 80
        num8.layer.cornerRadius = 40
        
        num9.setTitle("9", for: .normal)
        num9.setTitleColor(.white, for: .normal)
        num9.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num9.backgroundColor = .darkGray
        num9.frame.size.height = 80
        num9.frame.size.width = 80
        num9.layer.cornerRadius = 40
        
        plus.setTitle("+", for: .normal)
        plus.setTitleColor(.white, for: .normal)
        plus.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        plus.backgroundColor = .systemPink
        plus.frame.size.height = 80
        plus.frame.size.width = 80
        plus.layer.cornerRadius = 40
        
        num4.setTitle("4", for: .normal)
        num4.setTitleColor(.white, for: .normal)
        num4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num4.backgroundColor = .darkGray
        num4.frame.size.height = 80
        num4.frame.size.width = 80
        num4.layer.cornerRadius = 40
        
        num5.setTitle("5", for: .normal)
        num5.setTitleColor(.white, for: .normal)
        num5.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num5.backgroundColor = .darkGray
        num5.frame.size.height = 80
        num5.frame.size.width = 80
        num5.layer.cornerRadius = 40
        
        num6.setTitle("6", for: .normal)
        num6.setTitleColor(.white, for: .normal)
        num6.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num6.backgroundColor = .darkGray
        num6.frame.size.height = 80
        num6.frame.size.width = 80
        num6.layer.cornerRadius = 40
        
        minus.setTitle("-", for: .normal)
        minus.setTitleColor(.white, for: .normal)
        minus.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        minus.backgroundColor = .systemPink
        minus.frame.size.height = 80
        minus.frame.size.width = 80
        minus.layer.cornerRadius = 40
        
        num1.setTitle("1", for: .normal)
        num1.setTitleColor(.white, for: .normal)
        num1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num1.backgroundColor = .darkGray
        num1.frame.size.height = 80
        num1.frame.size.width = 80
        num1.layer.cornerRadius = 40
        
        num2.setTitle("2", for: .normal)
        num2.setTitleColor(.white, for: .normal)
        num2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num2.backgroundColor = .darkGray
        num2.frame.size.height = 80
        num2.frame.size.width = 80
        num2.layer.cornerRadius = 40
        
        num3.setTitle("3", for: .normal)
        num3.setTitleColor(.white, for: .normal)
        num3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num3.backgroundColor = .darkGray
        num3.frame.size.height = 80
        num3.frame.size.width = 80
        num3.layer.cornerRadius = 40
        
        multiply.setTitle("*", for: .normal)
        multiply.setTitleColor(.white, for: .normal)
        multiply.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        multiply.backgroundColor = .systemPink
        multiply.frame.size.height = 80
        multiply.frame.size.width = 80
        multiply.layer.cornerRadius = 40

        AC.setTitle("AC", for: .normal)
        AC.setTitleColor(.white, for: .normal)
        AC.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        AC.backgroundColor = .systemPink
        AC.frame.size.height = 80
        AC.frame.size.width = 80
        AC.layer.cornerRadius = 40
        
        num0.setTitle("0", for: .normal)
        num0.setTitleColor(.white, for: .normal)
        num0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        num0.backgroundColor = .darkGray
        num0.frame.size.height = 80
        num0.frame.size.width = 80
        num0.layer.cornerRadius = 40
        
        equal.setTitle("=", for: .normal)
        equal.setTitleColor(.white, for: .normal)
        equal.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        equal.backgroundColor = .systemPink
        equal.frame.size.height = 80
        equal.frame.size.width = 80
        equal.layer.cornerRadius = 40
        
        divide.setTitle("/", for: .normal)
        divide.setTitleColor(.white, for: .normal)
        divide.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        divide.backgroundColor = .systemPink
        divide.frame.size.height = 80
        divide.frame.size.width = 80
        divide.layer.cornerRadius = 40
        
        temp1.axis = .horizontal
        temp1.backgroundColor = .black
        temp1.spacing = 10
        temp1.distribution = .fillEqually
        
        temp2.axis = .horizontal
        temp2.backgroundColor = .black
        temp2.spacing = 10
        temp2.distribution = .fillEqually
        
        temp3.axis = .horizontal
        temp3.backgroundColor = .black
        temp3.spacing = 10
        temp3.distribution = .fillEqually
        
        temp4.axis = .horizontal
        temp4.backgroundColor = .black
        temp4.spacing = 10
        temp4.distribution = .fillEqually
        
        temp5.axis = .vertical
        temp5.backgroundColor = .black
        temp5.spacing = 10
        temp5.distribution = .fillEqually
        
        //해당 코드 미작성 시 라벨이 보이지 않음
        view.addSubview(numBox)
        
        numBox.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.top.equalTo(200)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().inset(30)
        }
        
        view.addSubview(temp5)
        
        temp5.snp.makeConstraints {
            $0.top.equalTo(numBox.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(350)
            $0.width.equalTo(350)
        }
        
        temp1.addArrangedSubview(num7)
        temp1.addArrangedSubview(num8)
        temp1.addArrangedSubview(num9)
        temp1.addArrangedSubview(plus)
        
        temp2.addArrangedSubview(num4)
        temp2.addArrangedSubview(num5)
        temp2.addArrangedSubview(num6)
        temp2.addArrangedSubview(minus)
        
        temp3.addArrangedSubview(num1)
        temp3.addArrangedSubview(num2)
        temp3.addArrangedSubview(num3)
        temp3.addArrangedSubview(multiply)
        
        temp4.addArrangedSubview(AC)
        temp4.addArrangedSubview(num0)
        temp4.addArrangedSubview(equal)
        temp4.addArrangedSubview(divide)
        
        temp5.addArrangedSubview(temp1)
        temp5.addArrangedSubview(temp2)
        temp5.addArrangedSubview(temp3)
        temp5.addArrangedSubview(temp4)
        
        
    }
    
}

//#Preview{
//    let vc = ViewController()
//    return vc
//}
