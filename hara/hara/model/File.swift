//
//  File.swift
//  hara
//
//  Created by Harshini Raj on 15/09/21.
//

import Foundation

struct sdata: Codable {
    var id : Int
    var name : String
    var gender: String
    var email: String
    var status: String
    
}
struct datum: Codable
{
    var data: [sdata]
}
