//
//  StudentResourcesView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct StudentResourcesView: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Text("Stuent Resources").font(.headline)
                Spacer()
                Text("See More").font(.caption)
            }
            .padding(.bottom)
            HStack(alignment: .lastTextBaseline,spacing: 12) {
                Label("Campus", systemImage: "building.2").labelStyle(VerticalLabelStyle())
                Label("Finances", systemImage: "dollarsign.bank.building").labelStyle(VerticalLabelStyle())
                Label("Academics", systemImage: "graduationcap").labelStyle(VerticalLabelStyle())
                Label("Grades", systemImage: "chart.line.text.clipboard").labelStyle(VerticalLabelStyle())
                Label("Library", systemImage: "books.vertical").labelStyle(VerticalLabelStyle())
            }
        }
        .padding()
    }
}

struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: 4) {
            configuration.icon.font(.title)
            configuration.title.font(.caption2)
        }
    }
}

#Preview {
    StudentResourcesView()
}
