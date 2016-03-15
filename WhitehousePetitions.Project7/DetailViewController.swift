//
//  DetailViewController.swift
//  WhitehousePetitions.Project7
//
//  Created by User on 3/15/16.
//  Copyright © 2016 Elijah Buters. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    var webView: WKWebView!
    var detailItem: [String: String]!

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    
    override func loadView() {
        
        webView = WKWebView()
        view = webView
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

