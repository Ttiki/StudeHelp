//
//  walletPromoTableViewController.swift
//  StudeHelp
//
//  Created by Clement Combier on 01/12/2021.
//

import UIKit

class walletPromoTableViewController: UITableViewController {

    private var usr : PersonneMO?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonIte+++m = self.editButtonItem
        
        usr = PersonneMO.getUsr()[0]
        
        print(PromotionsMO.getToutesLesPromotions())
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PromotionsMO.getToutesLesPromotions().count
        
    }
    //Changer la hauteur d'une cellule pour l'adapter a nos besoins
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80 //Ici, nos cellules font 80px de haut
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "promotionsCell", for: indexPath) as! PromoCell

        let promo = PromotionsMO.getToutesLesPromotions()[indexPath.row]
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        
        cell.nom_ent.text = promo.promoDeEntreprise?.nom
        cell.adr_ent.text = promo.promoDeEntreprise?.adresse
        cell.datefin_ent.text = dateFormatter.string(from: promo.dateFinPromo!)
        cell.descr_promo.text = promo.titre! + " " + promo.montantPromo!
        return cell
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        let destinationVC = segue.destination as! qrCodeViewControllerDetailed
        let selectedRow = tableView.indexPathForSelectedRow?.row
        destinationVC.laPromo = PromotionsMO.getToutesLesPromotions()[selectedRow!]
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
