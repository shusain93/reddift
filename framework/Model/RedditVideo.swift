//
//  RedditVideo.swift
//  BFRImageViewer
//
//  Created by Salman Husain on 7/8/18.
//

import Foundation

public struct RedditVideo {
    public let fallbackURL:URL?
    public let height:Int?
    public let width:Int?
    public let scrubberMediaURL:URL?
    public let dashURL:URL?
    public let duration:Int?
    public let hlsURL:URL?
    public let isGIF:Bool?
    public let transcodingStatus:String?
    
    public init(json: JSONDictionary) {
        fallbackURL = URL.init(string: json["fallback_url"] as? String ?? "")
        height = json["height"] as? Int
        width = json["width"] as? Int
        scrubberMediaURL = URL.init(string: json["scrubber_media_url"] as? String ?? "")
        dashURL = URL.init(string: json["dash_url"] as? String ?? "")
        duration = json["duration"] as? Int
        hlsURL = URL.init(string: json["hls_url"] as? String ?? "")
        isGIF = json["is_gif"] as? Bool
        transcodingStatus = json["transcoding_status"] as? String
    }
    
    public var string: String {
        get {
            return "{RedditMedia=\(hlsURL)}\n"
        }
    }
}
