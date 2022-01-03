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
    
    private var tabPromo : [PromotionsMO] = []
    private var promoIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Corner radius
        promoLabel.layer.cornerRadius = 10
        promoLabel.layer.masksToBounds = true
        
        //GetData to populate view
        tabPromo =  PromotionsMO.getToutesLesPromotions()
        promoIndex = tabPromo.count-1
        displayPromoAtIndex()
    }

    private func displayPromoAtIndex(){
        
        //Check for index for security
        if(promoIndex > tabPromo.count-1){ promoIndex = tabPromo.count-1 }
        if(promoIndex < 0){ promoIndex = 0 }
            
            
        promoLabel.text = tabPromo[promoIndex].montantPromo
        
        nom_ent_lab.text = tabPromo[promoIndex].promoDeEntreprise?.nom
        adr_ent_lab.text = tabPromo[promoIndex].promoDeEntreprise?.adresse
        
        
    }

    @IBAction func undoTapBtn(_ sender: Any) {
        promoIndex=promoIndex+1
        displayPromoAtIndex()
    }
    
    @IBAction func addToLibraryTapBtn(_ sender: Any) {
        //TODO: ADD CALL TO FUNCTION TO ADD TO THE USER LIBRARY
        //PersonneMO.addToPromosDeUser(tabPromo[promoIndex])
        
        
        promoIndex=promoIndex-1
        displayPromoAtIndex()
    }
    @IBAction func notLikeTapBtn(_ sender: Any) {
        promoIndex=promoIndex-1
        displayPromoAtIndex()
    }
}

