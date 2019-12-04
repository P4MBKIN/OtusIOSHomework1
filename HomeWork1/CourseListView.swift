//
//  CourseListView.swift
//  HomeWork1
//
//  Created by user on 03.12.2019.
//  Copyright © 2019 OtusCourse. All rights reserved.
//

import SwiftUI

final class CourseListViewModel: ObservableObject {

    @Published private(set) var filterButtonName = "Switch Faves"

    @Published private(set) var courses = [
        Course(name: "PHP-разработчик", isFav: false),
        Course(name: "Архитектор программного обеспечения", isFav: false),
        Course(name: "Team Lead 2.0", isFav: false),
        Course(name: "Разработчик на Spring Framework", isFav: false),
        Course(name: "Web-разработчик на Python", isFav: false),
        Course(name: "iOS Разработчик. Продвинутый курс v 2.0", isFav: true),
        Course(name: "Разработчик Golang", isFav: false)
    ]
}

struct Course: Identifiable {

    let id = UUID()
    let name: String
    let isFav: Bool
}

// MARK: - Views

struct CourseListView: View {

    @ObservedObject var viewModel = CourseListViewModel()
    @State var favesShowed: Bool = false
    @Binding var showLink: Bool

    var body: some View {
        NavigationView {
            List {
                FilterView(favesShowed: $favesShowed)
                    .environmentObject(viewModel)
                ForEach(viewModel.courses) { course in
                    if !self.favesShowed || course.isFav {
                        if course.isFav {
                            NavigationLink(destination: CourseView(name: course.name), isActive: self.$showLink) {
                                Text(course.name)
                            }
                        } else {
                            NavigationLink(destination: CourseView(name: course.name)) {
                                Text(course.name)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Courses")
        }
    }
}

struct FilterView: View {

    @Binding var favesShowed: Bool
    @EnvironmentObject var viewModel: CourseListViewModel

    var body: some View {
        Toggle(isOn: $favesShowed) {
            Text(viewModel.filterButtonName)
        }
    }
}
