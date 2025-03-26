//
//  ProfileViewController.swift
//  HomePro
//
//  Created by Gaurav Patil on 3/25/25.
//
import UIKit

class ProfileViewController: UIViewController {
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile_placeholder") // Replace with actual image
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 40
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Gaurav Patil"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let addressLabel: UILabel = {
        let label = UILabel()
        label.text = "39 Bettencourt way, Milpitas, CA"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .gray
        return label
    }()
    
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private let tabBarControllerCustom = UITabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTabBar()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        navigationItem.title = "Profile"
        
        view.addSubview(profileImageView)
        view.addSubview(nameLabel)
        view.addSubview(addressLabel)
        view.addSubview(containerView)
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            profileImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImageView.widthAnchor.constraint(equalToConstant: 80),
            profileImageView.heightAnchor.constraint(equalToConstant: 80),
            
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 20),
            nameLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor),
            
            addressLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 20),
            addressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            
            // Bottom 60% - Container for TabBar Views
            containerView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func setupTabBar() {
        let chatVC = ChatViewController()
        let requestVC = SendRequestViewController()
        
        chatVC.tabBarItem = UITabBarItem(title: "Chat", image: UIImage(systemName: "message"), tag: 0)
        requestVC.tabBarItem = UITabBarItem(title: "Request", image: UIImage(systemName: "paperplane"), tag: 1)
        
        tabBarControllerCustom.viewControllers = [chatVC, requestVC]
        
        addChild(tabBarControllerCustom)
        containerView.addSubview(tabBarControllerCustom.view)
        tabBarControllerCustom.view.frame = containerView.bounds
        tabBarControllerCustom.didMove(toParent: self)
    }
}
