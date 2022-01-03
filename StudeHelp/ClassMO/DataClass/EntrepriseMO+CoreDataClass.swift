//
//  EntrepriseMO+CoreDataClass.swift
//  StudeHelp
//
//  Created by Clement Combier on 01/12/2021.
//
//

import Foundation
import CoreData
import UIKit


public class EntrepriseMO: NSManagedObject {
    static func peuplerEntreprises(){
        let leCtxt = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let objEnt = EntrepriseMO(context: leCtxt)
        objEnt.adresse = "ceci est une adresse"
        objEnt.nom = "ceci est une entreprises"
        objEnt.siteURL = "Ceci est une URL"
        
        let objEnt2 = EntrepriseMO(context: leCtxt)
        objEnt2.adresse = "Stonks road"
        objEnt2.nom = "Stonks Life Inc."
        objEnt2.siteURL = "stonks-life-inc.github.io"
        
        do{
            try leCtxt.save()
        }catch _ as NSError{
            print("Impossile d'effectuer la sauvegarde")
        }
    }
    
    static func getEntParNom(_ nom: String)->[EntrepriseMO]{
        let query : NSFetchRequest<EntrepriseMO> = fetchRequest()
        query.predicate = NSPredicate(format: "nom == %@", nom)
        
        guard let tabEntreprises = try? ((UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext.fetch(query)) else {return[]}
        
        return tabEntreprises
    }
}
