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


class LoadingButton: UIControl {
    
    var loadingHandler: ((() -> ()) -> ())?
    
   
    

}

class ViewController: UIViewController {

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
//        showLoading(msg: "登陆中...")
//
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
//
//            self.hideLoading()
//            self.showSuccess(msg: "登陆中...")
//
//        }
        
        showWarning(msg: "警告")
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
//
//
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func getTopVc() -> UIViewController {
        weak var vc: UIViewController? = self
        while vc?.presentedViewController != nil {
            vc = vc?.presentedViewController
        }
        return vc!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

