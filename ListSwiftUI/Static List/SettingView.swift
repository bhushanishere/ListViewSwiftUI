//
//  SettingView.swift
//  ListSwiftUI
//
//  Created by Bhushan Borse DXC on 17/04/24.
//

import SwiftUI

enum AppearanceStyle {
    case auto
    case light
    case dark
}

struct SettingView: View {
    
    @State private var userName: String = ""
    @State private var isPrivate: Bool = true
    @State private var profileImageSize = false
    @State private var fontSize: CGFloat = 5
    @State private var appearance: AppearanceStyle = .auto
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("UserName", text: $userName)
                    Toggle("Private Account", isOn: $isPrivate)
                    Button {
                        
                    } label: {
                        Text("Sign Out")
                    }
                } header: {
                    Text("Account")
                }
                
                Section {
                    Slider(value: $fontSize, in: 1...10) {
                        Label("Default Font Size", systemImage: "text.magnifyingglass")
                    }
                    
                    Picker("Appearance", selection: $appearance) {
                        Text("Dark").tag(AppearanceStyle.dark)
                        Text("Light").tag(AppearanceStyle.light)
                        Text("Auto").tag(AppearanceStyle.auto)
                    }
                } header: {
                    Text("Appearance")
                }
                
                Section {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                } header: {
                    Text("About")
                }
            }
        }
    }
}

#Preview {
    SettingView()
}
