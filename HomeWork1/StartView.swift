//
//  StartView.swift
//  HomeWork1
//
//  Created by user on 04.12.2019.
//  Copyright © 2019 OtusCourse. All rights reserved.
//

import SwiftUI

struct StartView: View {

    @Binding var selection: Int
    @Binding var showLink: Bool

    func action() {
        self.selection = 1
        self.showLink = true
    }

    var body: some View {
        Button(action: { self.action()}) {
            Text("Открыть второй таб и пункт, который isFav")
        }
    }
}
