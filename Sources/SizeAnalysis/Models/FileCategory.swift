//
//  FileCategory.swift
//  
//
//  Created by Moises Hernandez on 18/04/21.
//

import Foundation

enum FileCategory: String, Codable {
    case dynamicLibrary = "Dynamic library"
    case ui = "UI"
    case codeSigning = "Code signing"
    case resources = "Resources"
    case localization = "Localization"
    case others = "Others"
    case code = "Code"
    case audio = "Audio"
    case video = "Video"
    
    static func category(for fileName: String) -> FileCategory {
        switch fileName.fileExtension {
        case "dylib":
            return .dynamicLibrary
        case "nib":
            return .ui
        case "mobileprovision", "entitlements", "pem", "der":
            return .codeSigning
        case "gif", "ttf", "otf", "car", "png", "scnp", "sks", "json", "html", "m4a", "svg":
            return .resources
        case "stringsdict", "strings":
            return .localization
        case "xml", "pb", "lite", "gz", "dict", "mom", "txt", "sh", "plist":
            return .others
        case "mp3":
            return .audio
        case "mp4", "mov":
            return .video
        default:
            return .code
        }
    }
}

