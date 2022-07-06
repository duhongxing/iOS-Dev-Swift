//
//  ViewController.swift
//  ReLearnSwiftDemo
//
//  Created by 杜红星 on 2021/8/5.
//

import UIKit
import MainBundle
import StrackLogBundle

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let testView = UIView(frame: .zero)
        testView.frame = CGRect(x: 0, y: 0, width: 400, height: 200)
        testView.center = view.center
        testView.backgroundColor = .red
        view.addSubview(testView)
        testView.roundingCorners([.topLeft, .topRight], 30)

        RETime.shared.testTime()

        let customView = RECustomView(frame: .zero)
        self.view.addSubview(customView)

        RELLDB.lldbTerminal()

        print(Locale.availableIdentifiers)
    }
}

extension UIView {
    func roundingCorners(_ corners: UIRectCorner, _ cornerRadii: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadii, height: cornerRadii))
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
}

extension ViewController {
    func testFilter() {
        
    }

    func testTime() {
        RETime.shared.testTime()
    }
}

