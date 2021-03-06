//
//  profileEditViewController.swift
//  Lava Jato
//
//  Created by Brendon Sambatti on 03/03/22.
//

import UIKit

class profileEditViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var changeServicesButton: UIButton!
    @IBOutlet weak var changePasswordButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Style()
        self.hideKeyboardWhenTappedAround()
        
        // Do any additional setup after loading the view.
        self.nameTextField.delegate = self
        self.numberTextField.delegate = self
        self.emailTextField.delegate = self
        self.dateTextField.delegate = self
        
        
        self.nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.numberTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.dateTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        self.nameTextField.layer.borderWidth = 2.0
        self.numberTextField.layer.borderWidth = 2.0
        self.emailTextField.layer.borderWidth = 2.0
        self.dateTextField.layer.borderWidth = 2.0
        
        self.nameTextField.layer.cornerRadius = 5.0
        self.numberTextField.layer.cornerRadius = 5.0
        self.emailTextField.layer.cornerRadius = 5.0
        self.dateTextField.layer.cornerRadius = 5.0
        
        self.saveButton.isEnabled = false
        
    }
    
    @IBAction func tappedSaveButton(_ sender: UIButton) {
        performSegue(withIdentifier: "saveButtonSegue", sender: nil)
    }
    @IBAction func tappedBackButton(_ sender: UIButton) {
        performSegue(withIdentifier: "returnUserProfileSegue", sender: nil)
    }
    @IBAction func tappedChangePassword(_ sender: UIButton) {
        performSegue(withIdentifier: "changePasswordSegue", sender: nil)
    }
    @IBAction func tappedChangeService(_ sender: UIButton) {
        performSegue(withIdentifier: "changeServicesSegue", sender: nil)
    }
}
extension profileEditViewController:UITextFieldDelegate{
    
    //textFieldDidBeginEditing = N??o faz valida????o, apenas da foco ao teclado, ou seja, todas as fun????es presentes ser??o executadas assim que houver o clique no textfield.
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2.0
    }
    
    
    //textFieldDidEndEditing = Ap??s a perda do foco ?? esperada alguma entrada, ent??o se inicia o processo de valida????o.
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        
        if textField == self.nameTextField{
            if self.nameTextField.text == ""{
                self.nameTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.nameTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.numberTextField{
            if self.numberTextField.text == ""{
                self.numberTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.numberTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.emailTextField{
            if self.emailTextField.text == ""{
                self.emailTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.emailTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.dateTextField{
            if self.dateTextField.text == ""{
                self.dateTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.dateTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        
        if self.nameTextField.text != "" && self.emailTextField.text != "" && self.numberTextField.text != "" && self.dateTextField.text != ""{
            if self.emailTextField.validateEmail(){
                self.emailTextField.layer.borderColor = UIColor.lightGray.cgColor
                self.saveButton.isEnabled = true
            }else{
                self.emailTextField.layer.borderColor = UIColor.red.cgColor
                self.saveButton.isEnabled = false
            }
        }else{
            self.saveButton.isEnabled = false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return true
    }
    
    func Style(){
        let textAtributes = [NSAttributedString.Key.foregroundColor:UIColor.ColorDefault]
        navigationController?.navigationBar.titleTextAttributes = textAtributes
    }
}
