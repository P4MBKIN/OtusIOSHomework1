//
//  CourseView.swift
//  HomeWork1
//
//  Created by user on 04.12.2019.
//  Copyright © 2019 OtusCourse. All rights reserved.
//

import SwiftUI

struct CourseView: View {

    let name: String

    var body: some View {
        Text("Название курса: " + name).font(.largeTitle)
    }
}
