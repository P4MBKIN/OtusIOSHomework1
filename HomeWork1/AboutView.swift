//
//  AboutView.swift
//  HomeWork1
//
//  Created by user on 04.12.2019.
//  Copyright © 2019 OtusCourse. All rights reserved.
//

import SwiftUI

struct AboutView: View {

    @State private var showModal: Bool = false

    var body: some View {
        Button(action: {self.showModal = true}) {
            Text("Открыть модальное окно")
        }.betterSheet(isPresented: self.$showModal, onDismiss: { print("On dismiss")}) {
            ModalView()
        }
    }
}

struct ModalView: View {
    var body: some View {
        Text("Мы на модальном окне")
    }
}
