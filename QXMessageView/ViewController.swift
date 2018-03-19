//
//  ViewController.swift
//  QXMessageView
//
//  Created by labi3285 on 2017/12/21.
//  Copyright © 2017年 labi3285_lab. All rights reserved.
//

import UIKit

extension UIViewController {
    func showLoading(msg: String?) {
        _ = QXMessageView.demoLoading(msg: msg, superview: view)
    }
    func hideLoading() {
        for view in view.subviews {
            if let view = view as? QXMessageView {
                view.remove()
            }
        }
    }
    func showSuccess(msg: String, complete: (() -> ())? = nil) {
        QXMessageView.demoSuccess(msg: msg, superview: view, complete: complete)
    }
    func showFailure(msg: String, complete: (() -> ())? = nil) {
        QXMessageView.demoFailure(msg: msg, superview: view, complete: complete)
    }
    func showWarning(msg: String, complete: (() -> ())? = nil) {
        QXMessageView.demoWarning(msg: msg, superview: view, complete: complete)
    }
}

class DemoView: QXMessageViewContentViewProtocol {
    
}

class ViewController: UIViewController {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        showWarning(msg: "警告")
        
        let demoView = DemoView()
        let messageView = QXMessageView.messageView(contentView: demoView, superview: self, duration: 1, complete: {
            // todo
        })
        
        
    }
}

