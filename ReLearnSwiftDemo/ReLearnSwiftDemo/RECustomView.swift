//
//  CustomView.swift
//  ReLearnSwiftDemo
//
//  Created by 杜红星 on 2022/6/27.
//

import UIKit

class RECustomView: UIView {

    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        for _ in 0..<3 {
            self.addSubview(titleLabel)
        }

        print(self.subviews.count)

    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

final class Box<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    var value: T {
        didSet {
            listener?(value)
        }
    }

    init(_ value: T) {
        self.value = value
    }

    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
