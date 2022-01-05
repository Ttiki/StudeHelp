//
//  qrCodeViewControllerDetailed.swift
//  StudeHelp
//
//  Created by Clement Combier on 01/12/2021.
//

import UIKit

class qrCodeViewControllerDetailed: UIViewController {

    @IBOutlet weak var promoQRCode: UIImageView!
    @IBOutlet weak var nom_ent: UILabel!
    @IBOutlet weak var adr_ent: UILabel!
    @IBOutlet weak var promo_lab: UILabel!
    @IBOutlet weak var datefin_lab: UILabel!
    
    var laPromo : PromotionsMO?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let entreprise = laPromo!.promoDeEntreprise
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        
        nom_ent.text = entreprise?.nom
        adr_ent.text = entreprise?.adresse
        promo_lab.text = laPromo?.montantPromo
        datefin_lab.text = "Valable juqu'au: " + dateFormatter.string(from: (laPromo?.dateFinPromo)!)
        
        
        promo_lab.layer.cornerRadius = 10
        promo_lab.layer.masksToBounds = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

   
}
