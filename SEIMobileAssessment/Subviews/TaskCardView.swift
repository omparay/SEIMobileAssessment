//
//  TaskCardView.swift
//  SEIMobileAssessment
//
//  Created by Oliver Paray on 7/28/25.
//

import SwiftUI

struct TaskCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .firstTextBaseline) {
                Text("5 Days").font(.caption2.bold()).padding(.trailing, -4)
                Text("since last engagement").font(.caption).padding(.leading, 0)
                Spacer()
            }
            .padding()
            .background(Color.myTaskFill)
            HStack {
                VStack(alignment: .leading) {
                    Text("NURS5000").padding(.bottom)
                    Button {
                    } label: {
                        VStack {
                            Text("1 overdue").font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.red.opacity(0.1))
                    }
                    Button {
                    } label: {
                        VStack {
                            Text("4 upcoming tasks").font(.caption)
                        }
                    }
                    .padding(.horizontal)
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.blue.opacity(0.1))
                    }
                }
                Spacer()
                Image("Chart")
            }
            .padding()
            VStack(alignment: .leading) {
                HStack {
                    Label("Unread Messages", systemImage: "envelope.badge").font(.callout)
                    Spacer()
                    Text("1").font(.callout)
                }
                HStack {
                    Label("Announcements", systemImage: "envelope.badge").font(.callout)
                    Spacer()
                    Text("2").font(.callout)
                }
            }
            .padding()
        }
        .cornerRadius(16)
    }
}

#Preview {
    TaskCardView()
}
