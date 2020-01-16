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

class DemoView: UIView, QXMessageViewContentViewProtocol {
    func qxMessageViewContentViewSizeFor(containerSize: CGSize) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    func qxMessageViewContentViewAnchorCenter() -> CGPoint {
        return CGPoint.init(x: 0.5, y: 0.5)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        showFailure(msg: "网络请求失败")
//        showWarning(msg: "1月6日讯随着本轮西甲武磊攻破巴萨的大门,助西班牙人2-2战平了巴萨之后,武磊的球星效应得到空前的高涨。对此,国内著名主持人孟非在微博")
        
        showSuccess(msg: "Account name no empty.") {
            print("xxx")
        }
        
//        showLoading(msg: nil)
//        hideLoading()
        
//        let demoView = DemoView()
//        demoView.backgroundColor = UIColor.blue
//        let messageView = QXMessageView.messageView(contentView: demoView, superview: self.view, duration: 1, complete: {
//            // todo
//        })
        
        
    }
}

