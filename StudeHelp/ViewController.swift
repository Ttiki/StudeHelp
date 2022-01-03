//
//  ViewController.swift
//  StudeHelp
//
//  Created by Clement Combier on 22/11/2021.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

    //Prises sur les vues concernant la promo
    //titre, descr, img, etc.
    @IBOutlet weak var promoLabel: UILabel!
    @IBOutlet weak var promo_img: UIImageView!
    
    //Prises informations entreprise
    @IBOutlet weak var nom_ent_lab: UILabel!
    @IBOutlet weak var adr_ent_lab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Corner radius
        promoLabel.layer.cornerRadius = 10
        promoLabel.layer.masksToBounds = true
    }


}

