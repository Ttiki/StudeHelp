//
//  addPromoVC.swift
//  StudeHelp
//
//  Created by L3NEC2021-7 on 05/01/2022.
//

import UIKit

class addPromoVC: UIViewController {

    @IBOutlet weak var qrCodeImg: UIImageView!
    
    var laPromo : PromotionsMO?
    var usr : PersonneMO?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usr = PersonneMO.getUsr()[0]
        // Do any additional setup after loading the view.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func enregistrerCodeTapBtn(_ sender: Any) {
        usr?.addToPromosDeUser(laPromo!)
        print("Enregistrement de la promo dans le portefeuille!")
        print(laPromo)
    }

}
