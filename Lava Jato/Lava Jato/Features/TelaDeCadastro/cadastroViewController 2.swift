//
//  registerViewController.swift
//  Lava Jato
//
//  Created by Brendon Sambatti on 03/03/22.
//

import UIKit

class cadastroViewController: UIViewController {
    
    
    @IBOutlet weak var nameRegisterTextField: UITextField!
    @IBOutlet weak var emailRegisterTextField: UITextField!
    @IBOutlet weak var numberRegisterTextField: UITextField!
    @IBOutlet weak var sexoRegisterTextField: UITextField!
    @IBOutlet weak var dateRegisterTextField: UITextField!
    @IBOutlet weak var documentRegisterTextField: UITextField!
    @IBOutlet weak var estadoCivilRegisterTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var checkBox: UIButton!
    
    var checkboxFlag = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Style()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
        
        //assinatura dos textfields
        self.nameRegisterTextField.delegate = self
        self.emailRegisterTextField.delegate = self
        self.numberRegisterTextField.delegate = self
        self.sexoRegisterTextField.delegate = self
        self.dateRegisterTextField.delegate = self
        self.documentRegisterTextField.delegate = self
        self.estadoCivilRegisterTextField.delegate = self

        //desativando botão "Cadastrar"
        self.registerButton.isEnabled = false
        
        //tamanho das bordas dos textfields
        self.nameRegisterTextField.layer.borderWidth = 2.0
        self.emailRegisterTextField.layer.borderWidth = 2.0
        self.numberRegisterTextField.layer.borderWidth = 2.0
        self.sexoRegisterTextField.layer.borderWidth = 2.0
        self.dateRegisterTextField.layer.borderWidth = 2.0
        self.documentRegisterTextField.layer.borderWidth = 2.0
        self.estadoCivilRegisterTextField.layer.borderWidth = 2.0
        // cor das bordas dos textfield
        self.nameRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.emailRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.numberRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.sexoRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.dateRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.documentRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
        self.estadoCivilRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
        
        //borda arredondada
        self.nameRegisterTextField.layer.cornerRadius = 5.0
        self.emailRegisterTextField.layer.cornerRadius = 5.0
        self.numberRegisterTextField.layer.cornerRadius = 5.0
        self.sexoRegisterTextField.layer.cornerRadius = 5.0
        self.dateRegisterTextField.layer.cornerRadius = 5.0
        self.documentRegisterTextField.layer.cornerRadius = 5.0
        self.estadoCivilRegisterTextField.layer.cornerRadius = 5.0
    
    }
    
    @IBAction func tappedCheckBox(_ sender: UIButton) {
        
        if (checkboxFlag == false){
            sender.setBackgroundImage(UIImage(named: "checkbox"), for: UIControl.State.normal)
            checkboxFlag = true
            
        }else{
            sender.setBackgroundImage(UIImage(named: "checkbox1"), for: UIControl.State.normal)
            checkboxFlag = false
        }
//        if sender.isSelected{
//            sender.isSelected = false
//        }else{
//            sender.isSelected = true
//        }
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        performSegue(withIdentifier: "tappedRegisterSegue", sender: nil)
    }
    
    @IBAction func tappedBackLogin(_ sender: UIButton) {
        performSegue(withIdentifier: "backLoginSegue", sender: nil)
    }
    
    func Style(){
        let textAtributes = [NSAttributedString.Key.foregroundColor:UIColor.ColorDefault]
        navigationController?.navigationBar.titleTextAttributes = textAtributes
    }
}
extension cadastroViewController:UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2.0
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.nameRegisterTextField{
            if self.nameRegisterTextField.text == ""{
                self.nameRegisterTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.nameRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.numberRegisterTextField{
            if self.numberRegisterTextField.text == ""{
                self.numberRegisterTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.numberRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.dateRegisterTextField{
            if self.dateRegisterTextField.text == ""{
                self.dateRegisterTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.dateRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.documentRegisterTextField{
            if self.documentRegisterTextField.text == ""{
                self.documentRegisterTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.documentRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.estadoCivilRegisterTextField{
            if self.estadoCivilRegisterTextField.text == ""{
                self.estadoCivilRegisterTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.estadoCivilRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.sexoRegisterTextField{
            if self.sexoRegisterTextField.text == ""{
                self.sexoRegisterTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.sexoRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if textField == self.emailRegisterTextField{
            if self.emailRegisterTextField.text == ""{
                self.emailRegisterTextField.layer.borderColor = UIColor.red.cgColor
            }else{
                self.emailRegisterTextField.layer.borderColor = UIColor.lightGray.cgColor
            }
        }
        if self.nameRegisterTextField.text != "" && self.numberRegisterTextField.text != "" && self.dateRegisterTextField.text != "" && self.documentRegisterTextField.text != "" && self.estadoCivilRegisterTextField.text != "" && self.sexoRegisterTextField.text != "" && self.emailRegisterTextField.text != ""{
            if self.checkboxFlag == true {
                self.registerButton.isEnabled = true
            }else{
                self.registerButton.isEnabled = false
            }
        }else{
            self.registerButton.isEnabled = false
        }
            
            

    }
    
    //função para só permitir entrada de numeros no textField
//     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        let allowedCharacters = "+0123456789"
//        let allowedCharactersSet = CharacterSet(charactersIn: allowedCharacters)
//        let typedCharactersSet = CharacterSet(charactersIn: string)
//
//        return allowedCharactersSet.isSuperset(of: typedCharactersSet)
//    }

}
