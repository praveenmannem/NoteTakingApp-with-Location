//
//  SqliteWrapper.swift
//  OntarioG1
//
//  Created by boby thomas on 2015-10-06.
//  Copyright © 2015 boby thomas. All rights reserved.
//

import Foundation

class SQLiteDataManager {
    
    
    var m_TableBuilder : TableBuilder!
    
    class var sharedInstance : SQLiteDataManager{
        struct singleton {
            static var dispatch_key : dispatch_once_t = 0
            static var instance : SQLiteDataManager? = nil
        }
        dispatch_once(&singleton.dispatch_key, {
            singleton.instance = SQLiteDataManager()
        })
        return singleton.instance!
    }
    
    
    private init()
    {
        m_TableBuilder = TableBuilder.sharedInstance
    }
    
    func hasTablesCreated()-> Bool
    {
        let (tables, _) = SD.existingTables()
        if tables.count >= 5
        {
            return true
        }else
        {
            return false
        }
    }
    
    func createTables()
    {
        
    }
    
}