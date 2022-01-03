//
//  PersonneMO+CoreDataClass.swift
//  StudeHelp
//
//  Created by Clement Combier on 01/12/2021.
//
//

import Foundation
import CoreData
import UIKit


public class PersonneMO: NSManagedObject {
    static func peuplerUtilisateur(){
        let leCtxt = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let usr = PersonneMO(context: leCtxt)
        usr.nom="Combier"
        usr.prenom="Clément"
        usr.ddn=Date()
        usr.numEtudiant="69420"
        
      
        do{
            try leCtxt.save()
        }catch _ as NSError{
            print("Impossile d'effectuer la sauvegarde")
        }
    }
    static func getUsr()->[PersonneMO]{
        let query : NSFetchRequest<PersonneMO> = fetchRequest()
        
        guard let usr = try? ((UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext.fetch(query)) else {return[]}
        
        return usr
    }
}
