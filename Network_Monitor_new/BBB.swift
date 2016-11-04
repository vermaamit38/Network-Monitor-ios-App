//
//  BBB.swift
//  Network Monitor
//
//  Created by amitverma on 28/04/16.
//  Copyright © 2016 Amit Verma. All rights reserved.
//

import Foundation

import UIKit
class BBB: UIViewController,UIWebViewDelegate
{
    
    @IBOutlet var web1: UIWebView!
    @IBOutlet var activity1: UIActivityIndicatorView!
    
   var url="https://ca76f315.ngrok.io/NW"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadweb()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadweb()
    {web1.delegate=self
        web1.scrollView.scrollEnabled = true
        let requestURL=NSURL(string:url)
        let request=NSURLRequest(URL: requestURL!)
        web1.loadRequest(request)
        
    }
    
    
    func webViewDidStartLoad(webView: UIWebView) {
        activity1.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        activity1.stopAnimating()
    }
    

    
}