//
//  DataModel.swift
//  Greeting App
//
//  Created by Prinon bhowmik on 11/19/24.
//

import SwiftUI

struct DataModel: Identifiable{
    let id = UUID() 
    let text: LocalizedStringKey
    let color: Color
    let textColor: Color
}
