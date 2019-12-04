//
//  ContentView.swift
//  HomeWork1
//
//  Created by user on 02.12.2019.
//  Copyright © 2019 OtusCourse. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var selection = 0
    @State private var showLink = false

    var body: some View {
        TabView(selection: $selection) {
            StartView(selection: $selection, showLink: $showLink)
                .tabItem {
                    VStack {
                        Image(systemName: "power")
                        Text("Start")
                    }
                }
                .tag(0)
            CourseListView(showLink: $showLink)
                .tabItem {
                    VStack {
                        Image(systemName: "desktopcomputer")
                        Text("Course")
                    }
                }
                .tag(1)
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "bubble.left.and.bubble.right")
                        Text("About")
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
