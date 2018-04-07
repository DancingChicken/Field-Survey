//
//  FieldSurveyJSONParser.swift
//  Field Survey
//
//  Created by Sandra Berndt on 4/6/18.
//  Copyright © 2018 Sandra Berndt. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser {
    
    class func parse(  date: Data) -> [FieldSurvey] {
        var fieldSurvey = [FieldSurvey]()
        DateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok"{
            
            if let events = root["events"] as? [Any] {
                for event in events {
                    if let event = event as? [String: String] {
                        if let classificationName = event["classification"],
                            let title = event["title"],
                            let description = event["description"],
                            let dateString = event["date"],
                            let date = dateFormatter.date(from: dateString){
                            
                        }
                    }
                }
            }
        }
        
        return fieldSurvey
    }
}
