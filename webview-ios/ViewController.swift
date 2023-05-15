//
//  ViewController.swift
//  webview-ios
//
//  Created by 이재연 on 2023/05/15.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        webView.scrollView.bounces = false;
        webView.scrollView.alwaysBounceVertical = false;
        webView.scrollView.alwaysBounceHorizontal = false;
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string: "http://localhost:3000")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
