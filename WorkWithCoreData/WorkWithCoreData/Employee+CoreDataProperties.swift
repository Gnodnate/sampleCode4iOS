//
//  Employee+CoreDataProperties.swift
//  WorkWithCoreData
//
//  Created by Daniel Tan on 8/4/16.
//  Copyright © 2016 Gnodnate. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Employee {

    @NSManaged var title: String?
    @NSManaged var departMent: NSManagedObject?

}
