//
//  TableBuilder.swift
//  OntarioG1
//
//  Created by boby thomas on 2015-10-07.
//  Copyright © 2015 boby thomas. All rights reserved.
//

import Foundation

class TableBuilder {
    
    
    class var sharedInstance : TableBuilder{
        struct instanceStruct {
            static var onceToken : dispatch_once_t = 0
            static var instance : TableBuilder? = nil
        }
        
        dispatch_once(&instanceStruct.onceToken, {
            instanceStruct.instance = TableBuilder()
        })
        
        return instanceStruct.instance!
        
    }
    
    private init()
    {
        
    }
    enum TableType {
        case SingsTable
        case RulesTable
        case TestsTable
        case SingWrongTable
        case RulesWrongTable
    }
    
    func createTables()
    {
        // There are five tables
        //        1. Sings QA
        if let err = SD.createTable("Sings", withColumnNamesAndTypes: [
            "Index": .IntVal,
            "Question": .StringVal,
            "ImageName": .StringVal,
            "Option1": .StringVal,
            "Option2": .StringVal,
            "Option3": .StringVal,
            "Option4": .StringVal,
            "Answer" : .IntVal,
            "Status" : .IntVal] )
        {
            //there was an error during this function, handle it here
            print("Could'nt create Signs table Error Code: \(err)")
        } else {
            //no error, the table was created successfully
            print("Sings Table has been created.")
        }
        
        //        2. Rules QA
        
        if let err = SD.createTable("Rules", withColumnNamesAndTypes: [
            "Index": .IntVal,
            "Question": .StringVal,
            "Option1": .StringVal,
            "Option2": .StringVal,
            "Option3": .StringVal,
            "Option4": .StringVal,
            "Answer" : .IntVal,
            "Status" : .IntVal] )
        {
            //there was an error during this function, handle it here
            print("Could'nt create Rules table Error Code: \(err)")
        } else {
            //no error, the table was created successfully
            print("Rules Table has been created.")
        }
        
        //        3. Tests QA
        
        if let err = SD.createTable("Tests", withColumnNamesAndTypes: [
            "Index": .IntVal,
            "Question": .StringVal,
            "Option1": .StringVal,
            "Option2": .StringVal,
            "Option3": .StringVal,
            "Option4": .StringVal,
            "Answer" : .IntVal,
            "Status" : .IntVal] )
        {
            //there was an error during this function, handle it here
            print("Could'nt create Tests table Error Code: \(err)")
        } else {
            //no error, the table was created successfully
            print("Tests Table has been created.")
        }
        
        //        4. Wrong Sings QA
        
        
        if let err = SD.createTable("WrongSings", withColumnNamesAndTypes: ["Index": .IntVal] )
        {
            //there was an error during this function, handle it here
            print("Could'nt create WrongSings table Error Code: \(err)")
        } else {
            //no error, the table was created successfully
            print("WrongSigns Table has been created.")
        }
        
        //        5. Wrong Rules QA
        
        
        if let err = SD.createTable("WrongRules", withColumnNamesAndTypes: ["Index": .IntVal] )
        {
            //there was an error during this function, handle it here
            print("Could'nt create WrongRules table Error Code: \(err)")
        } else {
            //no error, the table was created successfully
            print("WrongRules Table has been created.")
        }
        
        if let err = SD.createTable("WrongTests", withColumnNamesAndTypes: ["Index": .IntVal] )
        {
            //there was an error during this function, handle it here
            print("Could'nt create WrongTests table Error Code: \(err)")
        } else {
            //no error, the table was created successfully
            print("WrongTests Table has been created.")
        }
        
        
    }
    
    func fillDataIntoTable()
    {
        //fillSignsTable()
        fillRulesTable()
        fillTestsTable()
    }
    
    func fillSignsTable()
    {
        
//        "Index": .IntVal,
//        "Question": .StringVal,
//        "ImageName": .StringVal,
//        "Option1": .StringVal,
//        "Option2": .StringVal,
//        "Option3": .StringVal,
//        "Option4": .StringVal,
//        "Answer" : .IntVal,
//        "Status" : .IntVal]
        SD.executeChange("INSERT INTO Signs (Index, Question, ImageName, Option1, Option2, Option3, Option4, Answer, Status) VALUES ('1', 'What does this road sign mean?', 'Question1', 'No idling for more than 3 minutes', 'No smoking', 'Idling is permitted', 'No stopping for more than 3 minutes',  1, 0)")
        
    }
    
    func fillRulesTable()
    {
        
    }
    
    func fillTestsTable()
    {
        
    }
    
}