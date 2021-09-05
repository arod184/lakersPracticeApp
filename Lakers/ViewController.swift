//
//  ViewController.swift
//  Lakers
//
//  Created by Adan Rodriguez Villela on 9/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    let lakesImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Lakes"))
        imageView.contentMode = .scaleAspectFit
        return imageView
}()
    
    let welcomeTextView: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Welcome to the 2021/2022 NBA Lakers Season!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: UIColor.purple])
        attributedText.append(NSAttributedString(string: "\n\nAKA Champions",attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor.purple]))
        textView.attributedText = attributedText
        
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // App Entry point
        view.backgroundColor = .white
       // view.addSubview(lakesImageView)
        view.addSubview(welcomeTextView)
        
        setupLayout()
        
    }
    
    private func setupLayout(){
        let topImageContainerView = UIView()
        
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.addSubview(lakesImageView)
        
        lakesImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        lakesImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        lakesImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        //enables autolayout for imageview
        lakesImageView.translatesAutoresizingMaskIntoConstraints = false
        
        welcomeTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        welcomeTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        welcomeTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        welcomeTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}

