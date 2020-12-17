//
//  ViewController.swift
//  UIKITelements work
//
//  Created by Serega on 03.12.2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = indexPath.row.isMultiple(of: 2) ? .blue : .cyan
        cell.textLabel?.text = "Row: \(indexPath.row)"
        return cell
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var teslaImageVire: UIImageView!
    @IBOutlet weak var poemTextView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
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
        
        //UITableView
        tableView.backgroundColor = .green
        tableView.dataSource = self
    }


}

