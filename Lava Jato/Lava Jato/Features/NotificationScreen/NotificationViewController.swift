//
//  NotificationViewController.swift
//  Lava Jato
//
//  Created by Brendon Sambatti on 14/03/22.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backgroudView: UIImageView!
    
  
    var data:[Profile] = [
        Profile(name: "Nome: Junyor", photo: UIImage(imageLiteralResourceName: "profile1"), adress: "Endereço: Rua numero, 1 ", number: "Telefone: (11)99999-9999 ", request: "Data do Pedido: 29/12/2022", service: "Tipo do Serviço: Lavagem Simples ", payment: "Tipo do Pagamento: Cartão de Crédito"),
    Profile(name: "Nome: Brendon", photo: UIImage(imageLiteralResourceName: "profile2"), adress: "Endereço: Rua numero, 1 ", number: "Telefone: (11)99999-9999 ", request: "Data do Pedido: 29/12/2022", service: "Tipo do Serviço: Lavagem Simples ", payment: "Tipo do Pagamento: Cartão de Crédito"),
    Profile(name: "Nome: Thiago", photo: UIImage(imageLiteralResourceName: "profile3"), adress: "Endereço: Rua numero, 1 ", number: "Telefone: (11)99999-9999 ", request: "Data do Pedido: 29/12/2022", service: "Tipo do Serviço: Lavagem Simples ", payment: "Tipo do Pagamento: Cartão de Crédito"),
    Profile(name: "Nome: Claudio", photo: UIImage(imageLiteralResourceName: "profile1"), adress: "Endereço: Rua numero, 1 ", number: "Telefone: (11)99999-9999 ", request: "Data do Pedido: 29/12/2022", service: "Tipo do Serviço: Lavagem Simples ", payment: "Tipo do Pagamento: Cartão de Crédito")
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.configTableView()
        self.backgroudView.layer.cornerRadius = 15.0
    }
    
    func configTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(NotificationTableViewCell.nib(), forCellReuseIdentifier: NotificationTableViewCell.identifier)
        self.tableView.layer.cornerRadius = 15.0
        self.tableView.backgroundColor = UIColor.clear
    }


}
extension NotificationViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NotificationTableViewCell.identifier, for: indexPath) as? NotificationTableViewCell
        cell?.dados(profile: data[indexPath.row])
            cell?.xibView.layer.borderWidth = 0.0
        return cell ?? UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //=== função excluir celulas -> antiga
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        self.data.remove(at: indexPath.row)
//        self.tableView.reloadData()
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deletAction = UIContextualAction(style: .destructive, title: nil){action, view, boolAction in
    
            self.data.remove(at: indexPath.row)
            tableView.performBatchUpdates{
                //deletar linhas
                tableView.deleteRows(at: [indexPath], with: .fade)
            } completion: { completed in
                //remocao completa
            }
        }
        deletAction.image = UIImage(systemName: "trash")
        return UISwipeActionsConfiguration(actions: [deletAction])
    }
}





extension NotificationViewController:UITableViewDelegate{
    
}
