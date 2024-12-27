//
//  PoverbModel.swift
//  Chinese Number App
//
//  Created by Prinon bhowmik on 12/25/24.
//

import Foundation

struct ProverbModel: Codable {
    let id, proverb, pinyin, translation: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case proverb, pinyin, translation
    }
    
    static func defaultQuote() -> ProverbModel {
        ProverbModel(
            id: "63e6ae053bd28e8c186fdf26",
            proverb: "事实胜于雄辩。",
            pinyin: "Shì shí shèng yú xióng biàn",
            translation: "Facts beat eloquence.")
    }
}
