//
//  HierarchicalListView.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 19/04/24.
//

import SwiftUI

struct HierarchicalListView: View {
    
    @State private var fileItems = FileItem.perview()
    
    var body: some View {
        List(fileItems, children: \.children) { fileItem in
            if fileItem.isFolder {
                Label(fileItem.title, systemImage: "folder.fill")
            } else {
                Label(fileItem.title, systemImage: "folder")
            }
        }
    }
}

#Preview {
    HierarchicalListView()
}
