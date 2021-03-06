//
//  Task.swift
//  Task Tracker
//
//  Created by protel on 24.07.2020.
//  Copyright © 2020 Ahmet Onur Akman. All rights reserved.
//

import Foundation


struct Task {
    static var catalog: Dictionary<Int,Task> = [:]
    let id: Int
    var name: String
    var notes: String
    var date: Date
    
    init(name: String, notes: String, date: Date, id: Int){
        self.name = name
        self.notes = notes
        self.date = date
        self.id = id
        Task.catalog[id]=self
    }
    
    static subscript(id: Int) -> Task?{
        return catalog[id]
    }
}
