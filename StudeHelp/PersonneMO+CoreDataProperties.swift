//
//  PersonneMO+CoreDataProperties.swift
//  StudeHelp
//
//  Created by Clement Combier on 01/12/2021.
//
//

import Foundation
import CoreData


extension PersonneMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PersonneMO> {
        return NSFetchRequest<PersonneMO>(entityName: "Personne")
    }

    @NSManaged public var ddn: Date?
    @NSManaged public var nom: String?
    @NSManaged public var numEtudiant: String?
    @NSManaged public var prenom: String?
    @NSManaged public var promosDeUser: NSSet?

}

// MARK: Generated accessors for promosDeUser
extension PersonneMO {

    @objc(addPromosDeUserObject:)
    @NSManaged public func addToPromosDeUser(_ value: PromotionsMO)

    @objc(removePromosDeUserObject:)
    @NSManaged public func removeFromPromosDeUser(_ value: PromotionsMO)

    @objc(addPromosDeUser:)
    @NSManaged public func addToPromosDeUser(_ values: NSSet)

    @objc(removePromosDeUser:)
    @NSManaged public func removeFromPromosDeUser(_ values: NSSet)

}

extension PersonneMO : Identifiable {

}
