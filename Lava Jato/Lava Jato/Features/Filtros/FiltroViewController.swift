//
//  FiltroViewController.swift
//  Lava Jato
//
//  Created by Thiago Valentim on 13/03/22.
//

import UIKit

class FiltroViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    
    @IBOutlet weak var tViewTableView: UITableView!
   
    
    @IBOutlet weak var tappedProximoButton: UIButton!
    
    //Para popular a cell Element
    var data:[ProfileGenero] = [
    ProfileGenero(nameM: "Profissionais homem", nameF:"Profissionais mulher"),
    ProfileGenero(nameM: "Profissionais do sexto masculino", nameF:"Profissionais do sexo feminino"),
    ]
    
 
// Cell valor
    var listerValor:[ProfileValor] = []
// Collection
    var imag = [ProfileImg]()
     
    
    
    
//    [
//    ProfileImg(imgA: UIImage(systemName: "busque") ?? UIImage(), imgB: UIImage(systemName: "emCasa") ?? UIImage(), imgC:UIImage(systemName: "levar") ?? UIImage())
//    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTView()
        configArrayValor()
    }
    
    
    @IBAction func tappedProximoButton(_ sender: UIButton) {
        
    }
    
    func configTView(){
        self.tViewTableView.delegate = self
        self.tViewTableView.dataSource = self
        self.tViewTableView.register(ElementTableViewCell.nib(), forCellReuseIdentifier: ElementTableViewCell.identifier)
        self.tViewTableView.register(ValorTableViewCell.nib(), forCellReuseIdentifier: ValorTableViewCell.identifier)
        self.tViewTableView.register(CustomCollectionViewCell.nib(), forCellReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
    func configArrayValor(){
        self.listerValor.append(ProfileValor(valor: "Valor do serviço", valorMinimo: "R$20,00", valorMaximo: "R$800,00", local: "Onde você prefere fazer o serviço?"))
        self.listerValor.append(ProfileValor(valor: "Valor do serviço", valorMinimo: "R$20,00", valorMaximo: "R$800,00", local: "Onde você prefere fazer o serviço?"))
    }
    
    // Colletion
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return imag.count
//    }
    
    
    
    
    // Table
    // numero de vezezes que as cell vão aparecer
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ElementTableViewCell.identifier, for: indexPath) as? ElementTableViewCell
            cell?.setupCell(profile: data[indexPath.row])
            return cell ?? UITableViewCell()
        } else   {
//            indexPath.row == 1
            let cellV = tableView.dequeueReusableCell(withIdentifier: ValorTableViewCell.identifier, for: indexPath) as? ValorTableViewCell
            cellV?.setupCell(setup: self.listerValor[indexPath.row])

            return cellV ?? UITableViewCell()
    
        }
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 166.0
    }
    

}




//extension ViewController:UICollectionViewDelegate{
//
//}

//    func configArrayValor(){
//        self.informationV.append(ProfileValor(valor: "Valor do serviço", valorMinimo: "R$20,00", valorMaximo: "R$20,00", local: "Onde prefere que o serviço seja feito?"))
//    }

//extension ViewController:UITableViewDataSource{
//    // numero de vezezes que as cell vão aparecer
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 2
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: ElementTableViewCell.identifier, for: indexPath) as? ElementTableViewCell
//            cell?.setupCell(setup:informationG[indexPath.row])
//            return cell ?? UITableViewCell()
//        } else {
//            let cellV = tableView.dequeueReusableCell(withIdentifier: ValorTableViewCell.identifier, for: indexPath) as? ValorTableViewCell
//            cellV?.setupCell(setup: ProfileValor)
//
//            return cellV ?? UITableViewCell()
//        }
//    }





