//
//  IGDBService.swift
//  gotoplay
//
//  Created by Caio on 06/12/20.
//

import Alamofire
import Foundation

final class IGDBService: NSObject{
    
    static var userID = "6g5h5upbxikf5qnwud8wycatn5t4id"
    static var token = ""
    static var games = "https://api.igdb.com/v4/games/"
    static var autorize = "https://id.twitch.tv/oauth2/token?client_id=6g5h5upbxikf5qnwud8wycatn5t4id&client_secret=07fg4jdvhtlole2p8jwlb9jeu210by&grant_type=client_credentials"
    
    static func getGames(query: String) -> [Game] {
        var games = [Game]();
        let headers: HTTPHeaders = [
            "Authorization": "Bearer " + self.token,
            "Client-ID": self.userID,
            "Content-Type": "text/plain"
        ]
        
        var request = URLRequest(url: URL(string: self.games)!)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = query.data(using: .utf8)!
        request.headers = headers
        	
        AF.request(request).responseDecodable(of: [Game].self) { response in
            debugPrint(response)
            games = response.value ?? [Game]()
        }
        return games;
    }
    
    static func authorize(){
        AF.request(self.autorize, method: .post).responseDecodable(of: Authorization.self) { response in
            self.token = response.value?.access_token ?? ""
        }
    }
}
