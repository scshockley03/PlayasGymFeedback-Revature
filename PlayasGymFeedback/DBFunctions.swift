//
//  DBFunctions.swift
//  PlayasGymFeedback
//
//  Created by Stan Shockley on 3/7/22.
//

import Foundation
import UIKit
import CoreData

class DBFunctions {
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    static var inst = DBFunctions()
    
    func addData (q1: String, q2: String, q3: String, com: String) {
        
        let cust = NSEntityDescription.insertNewObject(forEntityName: "Customers", into: context!) as! Customers
        
        cust.q1Rating = q1
        cust.q2Rating = q2
        cust.q3Rating = q3
        cust.comments = com
        
        do {
            try context?.save()
        }
        catch {
            print("Data not saved")
        }
     
    }
    
    
}
