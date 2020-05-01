//
//  ContentView.swift
//  SafeShot
//
//  Created by Mackenzie Bryant on 5/1/20.
//  Copyright © 2020 Mackenzie Bryant. All rights reserved.
//

import Combine
import SwiftUI

struct ContentView: View {
    
    var selectPlatforms = ["Instagram", "Facebook", "TikTok", "YouTube"]
    @State private var selectedMode = 0
    @State var reportUserName: String = ""
    
    var isValid: Bool {
        if reportUserName.isEmpty {
            return false
        }
        return true
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Select Platform")){
                    Picker(selection: $selectedMode, label: Text("Platforms")) {
                        ForEach(0..<selectPlatforms.count) {
                            Text(self.selectPlatforms[$0])
                        }
                    }.padding()
                }
                Section(header: Text("Please report the Username that has violated your safety online.")) {
                    HStack {
                        TextField("Username", text: $reportUserName)
                    }.padding()
                    
                }
                Section(header: Text("We strongly encourage you to share any photos that have violated your safety online.")) {
                    HStack {
                        Button(action: {
                                self.attachPhotos()
                            }) {
                                Text("Attach Photos")
                        }
                    }.padding()
                }
                Section {
                    Button(action: {
                        self.submitReport()
                    }) {
                        Text("Submit Report")
                }.padding()
            }
            } .navigationBarTitle("SafeShot")
        }
    }
    func attachPhotos() {
        
    }
    func submitReport() {
        
    }
}
