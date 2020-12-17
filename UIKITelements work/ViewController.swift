//
//  ViewController.swift
//  UIKITelements work
//
//  Created by Serega on 03.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var teslaImageVire: UIImageView!
    @IBOutlet weak var poemTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Функция \(#function)"
        label.textColor = .red
        teslaImageVire.image = UIImage(named: "Tesla")
        if let text = poemTextView.text{
            poemTextView.text = String(text.reversed())
        }
         
        //UIScrollView
        let imageView = UIImageView(image: UIImage(named:"Tesla"))
        let scrollView = UIScrollView(frame: CGRect(x: view.bounds.midX - 50, y: 100, width: 100, height: 100))
        scrollView.backgroundColor = .blue
        scrollView.contentSize = imageView.bounds.size
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.addSubview(imageView)
        
        view.addSubview(scrollView)
    }


}

