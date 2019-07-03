//
//  ViewController.swift
//  readit_test
//
//  Created by 권서연 on 21/06/2019.
//  Copyright © 2019 권서연. All rights reserved.
//

import UIKit
import WebKit
import Foundation

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet var WebView: WKWebView!
    var feedbackGenerator : UINotificationFeedbackGenerator?
    @IBOutlet var anotherWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://www.google.com")
        let request = URLRequest(url: url!)
        
//        WebView.load(request)
        anotherWebView.loadRequest(request)
        let menuController: UIMenuController = UIMenuController.shared
        menuController.setMenuVisible(true, animated: false)
        menuController.arrowDirection = UIMenuController.ArrowDirection.default
        menuController.setTargetRect(CGRect.zero, in: view)
        
        let menuItem1: UIMenuItem = UIMenuItem(title: "하이라이트", action: #selector(onMenu1(sender:)))
        let myMenuItems: [UIMenuItem] = [menuItem1]
        menuController.menuItems = myMenuItems
        
        self.setupGenerator()
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any!) -> Bool {
        if [#selector(onMenu1(sender:))].contains(action) {
            return true
        }
        else{
            return false
        }
    }
    
    private func setupGenerator() {
        self.feedbackGenerator = UINotificationFeedbackGenerator()
        self.feedbackGenerator?.prepare()
    }
    
    @objc internal func onMenu1(sender: UIMenuItem) {
        highlighting(into: anotherWebView)
        self.feedbackGenerator?.notificationOccurred(.success)
    }
}

func highlighting(into webView: UIWebView) {
    let js =  "var sel = window.getSelection(); var range = sel.getRangeAt(0); var newNode = document.createElement('span'); newNode.setAttribute('style','background-color: rgba(122,168,88,0.19)'); range.surroundContents(newNode); "
    print("dd")
    print(webView.stringByEvaluatingJavaScript(from: js) as Any)
    print("DD")
}
