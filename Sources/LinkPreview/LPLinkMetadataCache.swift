//
//  LPLinkMetadataCache.swift
//
//  Created by Artem Frolov on 05/01/2025.
//

import SwiftUI
import LinkPresentation

class LPLinkMetadataCache {
    static let shared = LPLinkMetadataCache()
    private let cache = NSCache<NSString, LPLinkMetadata>()
    
    func setMetadata(_ metadata: LPLinkMetadata, forURL url: URL) {
        cache.setObject(metadata, forKey: url.absoluteString as NSString)
    }
    
    func getMetadata(forURL url: URL) -> LPLinkMetadata? {
        return cache.object(forKey: url.absoluteString as NSString)
    }
}