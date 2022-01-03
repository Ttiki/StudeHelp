//
//  EntrepriseMO+CoreDataProperties.swift
//  StudeHelp
//
//  Created by Clement Combier on 01/12/2021.
//
//

import Foundation
import CoreData


extension EntrepriseMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<EntrepriseMO> {
        return NSFetchRequest<EntrepriseMO>(entityName: "Entreprise")
    }

    @NSManaged public var adresse: String?
    @NSManaged public var nom: String?
    @NSManaged public var siteURL: String?
    @NSManaged public var promosEntreprise: NSSet?

}

// MARK: Generated accessors for promosEntreprise
extension EntrepriseMO {

    @objc(addPromosEntrepriseObject:)
    @NSManaged public func addToPromosEntreprise(_ value: PromotionsMO)

    @objc(removePromosEntrepriseObject:)
    @NSManaged public func removeFromPromosEntreprise(_ value: PromotionsMO)

    @objc(addPromosEntreprise:)
    @NSManaged public func addToPromosEntreprise(_ values: NSSet)

    @objc(removePromosEntreprise:)
    @NSManaged public func removeFromPromosEntreprise(_ values: NSSet)

}

extension EntrepriseMO : Identifiable {

}
