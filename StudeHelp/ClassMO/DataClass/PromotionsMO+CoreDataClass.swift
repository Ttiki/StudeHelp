//
//  PromotionsMO+CoreDataClass.swift
//  StudeHelp
//
//  Created by L3NEC2021-7 on 03/01/2022.
//
//

import Foundation
import CoreData
import UIKit


public class PromotionsMO: NSManagedObject {

    static func getToutesLesPromotions()->[PromotionsMO]{
        let query:NSFetchRequest<PromotionsMO>=fetchRequest()
        
        guard let tabPromotions = try?((UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext.fetch(query)) else {return[]}
        
        return tabPromotions
    }
    
    static func peuplerPromotions(){
        let leCtxt = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let objPromo1 = PromotionsMO(context: leCtxt)
        objPromo1.dateFinPromo = Date()
        objPromo1.descriptionPromo = "ceci est une promo super"
        objPromo1.montantPromo  = "-20%"
        objPromo1.promoDeEntreprise = EntrepriseMO.getEntParNom("ceci est une entreprises")[0]
        objPromo1.promoURL = "url"
        objPromo1.titre = "SUPER PROMO"
        
        let objPromo2 = PromotionsMO(context: leCtxt)
        objPromo2.dateFinPromo = Date()
        objPromo2.descriptionPromo = "Stonks Life Inc. Life Pass"
        objPromo2.montantPromo  = "Gratuit à vie"
        objPromo2.promoDeEntreprise = EntrepriseMO.getEntParNom("Stonks Life Inc.")[0]
        objPromo2.promoURL = "url2"
        objPromo2.titre = "Promo STONKS!"
        
        do{
            try leCtxt.save()
        }catch _ as NSError{
            print("Impossile d'effectuer la sauvegarde")
        }
    }
}
