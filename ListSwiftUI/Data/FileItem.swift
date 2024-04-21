//
//  FileItem.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 19/04/24.
//

import Foundation

struct FileItem: Hashable, Identifiable {
    var title: String
    var isFolder: Bool
    var children: [FileItem]? = nil
    let id = UUID()
    
    static func perview() -> [FileItem] {
        [FileItem(title: "Inbox", isFolder: true, children: [FileItem(title: "My First Email", isFolder: false),
                                                             FileItem(title: "My Second Email", isFolder: false)]),
         FileItem(title: "Archived", isFolder: true, children: [FileItem(title: "Work", isFolder: true, children:
                                                                            [FileItem(title: "Next Task", isFolder: false)]),
                                                                FileItem(title: "Personal", isFolder: true, children: [FileItem(title: "Your Subscription expeired", isFolder: false)])]),
         FileItem(title: "Trash", isFolder: true)]
        
    }
}
