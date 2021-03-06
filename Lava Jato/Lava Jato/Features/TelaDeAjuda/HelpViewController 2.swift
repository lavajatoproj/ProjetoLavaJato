//
//  HelpTableViewViewController.swift
//  Lava Jato
//
//  Created by Brendon Sambatti on 21/02/22.
//

import UIKit

class HelpViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backgroundImageView.layer.cornerRadius = 15.0
        Style()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedWhatsappButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "editProfileSegue", sender: nil)
    }
    
    @IBAction func tappedEmailButton(_ sender: UIButton) {
    }
    
    
    func Style(){
        let textAtributes = [NSAttributedString.Key.foregroundColor:UIColor.ColorDefault]
        navigationController?.navigationBar.titleTextAttributes = textAtributes
    }
}
