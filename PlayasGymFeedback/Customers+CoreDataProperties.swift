//
//  Customers+CoreDataProperties.swift
//  PlayasGymFeedback
//
//  Created by Stan Shockley on 3/7/22.
//
//

import Foundation
import CoreData


extension Customers {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customers> {
        return NSFetchRequest<Customers>(entityName: "Customers")
    }

    @NSManaged public var q1Rating: String?
    @NSManaged public var q2Rating: String?
    @NSManaged public var q3Rating: String?
    @NSManaged public var comments: String?

}

extension Customers : Identifiable {

}
