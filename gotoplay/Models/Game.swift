//
//  Game.swift
//  gotoplay
//
//  Created by Caio on 06/12/20.
//

import Foundation
class Game : Decodable{
    var id: Int;
    var name: String;
    var category: Int?;
    var created_at: Int?;
    var slug: String?;
    var summary: String?;
    var updated_at: Int?;
    var url: String?;
    var rating: Float?;
    var first_release_date: Int?;
    var storyline: String?;
//                    var involved_companies: Array<Company>
//                    var genres: Array<Genre>
//                    var platforms: Array<Platform>
//                    var screenshots: Array<Image>
//                    var videos: Array<Video>
//                    var cover: Image
}
