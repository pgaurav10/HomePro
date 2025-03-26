
//
//  SendRequestViewController.swift
//  HomePro
//
//  Created by Gaurav Patil on 3/25/25.
//
import UIKit

class SendRequestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Send Request Screen"
        label.textAlignment = .center
        label.frame = view.bounds
        view.addSubview(label)
    }
}

