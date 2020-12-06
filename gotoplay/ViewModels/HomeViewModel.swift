//
//  HomeViewController.swift
//  gotoplay
//
//  Created by Caio on 06/12/20.
//

import Foundation

class HomeViewModel: NSObject {
    var upComingPage = 0;
    
    func getLatest(){
        let currentTime = Int64((Date().timeIntervalSince1970 * 1000).rounded())
        let query = """
                fields name, id, cover.url, cover.image_id, rating;
                where first_release_date >= \( currentTime );
                sort first_release_date desc;
                limit 10;
                offset \(upComingPage * 10);
                """
        upComingPage += 1
        let games = IGDBService.getGames(query: query);
    }
    
    func authorize(){
        IGDBService.authorize();
    }
}
