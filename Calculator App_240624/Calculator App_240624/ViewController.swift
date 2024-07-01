//
//  ViewController.swift
//  Calculator App_240624
//
//  Created by 김솔비 on 6/24/24.
//
//uibotton을 바로 쓸 수 없는지
//변수 이름 코드에서 바로 바꿔도 되느지

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberBox: UILabel!
    var str = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numPressed(_ sender: UIButton) {
        str.append(sender.currentTitle!)
        numberBox.text = str
    }
    
    @IBAction func operaterPressed(_ sender: UIButton) {
        str.append(sender.currentTitle!)
        numberBox.text = str
    }
    
    @IBAction func AcPressed(_ sender: UIButton) {
        str = "0"
        numberBox.text = str
    }
    
    @IBAction func play(_ sender: UIButton) {
        let result = calculate(expression: str)
        numberBox.text = String(result!)
    }
    
    func calculate(expression: String) -> Int? {
        let expression = NSExpression(format: expression)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return nil
        }
    }
}

