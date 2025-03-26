//
//  ChatViewController.swift
//  HomePro
//
//  Created by Gaurav Patil on 3/25/25.
//
import UIKit

class ChatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Chat Screen"
        label.textAlignment = .center
        label.frame = view.bounds
        view.addSubview(label)
    }
}

