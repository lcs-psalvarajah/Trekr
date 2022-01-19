//
//  Tip.swift
//  Trekr
//
//  Created by Salvarajah, Prajina on 2022-01-19.
//

import Foundation

struct Tip: Decodable {

    let text: String
    let children: [Tip]?
}

