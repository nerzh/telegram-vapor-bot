//
//  ChatType.swift
//  Telegrammer
//
//  Created by Givi Pataridze on 21.04.2018.
//

import Foundation

/// Type of chat, can be either “private”, “group”, “supergroup” or “channel”
public enum TGChatType: String, Codable {
    case `private`
    case group
    case supergroup
    case channel
    case undefined

    public init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer().decode(String.self)
        guard let type = TGChatType(rawValue: value) else {
            self = .undefined
            return
        }
        self = type
    }
}
