//
//  ExpeloViewModel.swift
//  ExpleoMVVMDemo
//
//  Created by Jayant Tiwari on 09/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//
import UIKit

class ExpleoViewModel {
    
    init() {

    }
    
    func setDataToDefaults() {
        
        UserDefaults.standard.set("Lokesh Kuruva", forKey: "employee_name")
    }
    
    func fetchDataFromDefaults() -> String {
        
        let employee = UserDefaults.standard.string(forKey: "employee_name") as! String
        
        return Company(employee_name: employee).employee_name
    }
    
    func setData(view :ExpleoView)  {
        
        setDataToDefaults()
        var name = fetchDataFromDefaults()
        view.label.text = name
    }
}
