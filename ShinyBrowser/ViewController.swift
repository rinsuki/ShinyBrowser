//
//  ViewController.swift
//  ShinyBrowser
//
//  Created by user on 2018/04/24.
//  Copyright © 2018年 rinsuki. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var webView: WKWebView! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://shinycolors.enza.fun")!
        let urlRequest = URLRequest(url: url)

        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        let userScript = WKUserScript(source: "window.openDatabase = () => {}", injectionTime: .atDocumentStart, forMainFrameOnly: false)
        config.userContentController.addUserScript(userScript)

        self.webView = WKWebView(frame: CGRect.zero, configuration: config)
        self.webView.customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 11_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1"
        self.webView.load(urlRequest)
        self.view = self.webView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

