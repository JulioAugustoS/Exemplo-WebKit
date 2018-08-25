//
//  ViewController.swift
//  Exemplo WebKit
//
//  Created by Usuário Convidado on 25/08/2018.
//  Copyright © 2018 Julio Augusto. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var meuWebKit: WKWebView!
    @IBOutlet weak var meuActivity: UIActivityIndicatorView!
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        meuActivity.stopAnimating()
        meuActivity.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuWebKit.navigationDelegate = self
        
        meuActivity.startAnimating()
        
        let url = URL(string: "http://www.vive.com/us")
        let request = URLRequest(url: url!)
        meuWebKit.load(request)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

