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
                    Text("NURS5000")
                    .padding(.bottom)
                    Button {
                    } label: {
                        VStack {
                            Text("1 overdue")
                            .foregroundStyle(Color.black)
                            .font(.caption)
                            .fixedSize(horizontal: true, vertical: false)
                        }
                    }
                    .padding(.horizontal)
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.gray,lineWidth: 1)
                    }
                    .padding(.bottom, 2)
                    Button {
                    } label: {
                        VStack {
                            Text("4 upcoming tasks")
                            .foregroundStyle(Color.black)
                            .font(.caption)
                            .fixedSize(horizontal: true, vertical: false)
                        }
                    }
                    .padding(.horizontal)
                    .background {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.gray,lineWidth: 2)
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
                    Label("Announcements", systemImage: "envelope.badge")
                    Spacer()
                    Text("2").font(.callout)
                }
            }
            .padding()
        }
        .frame(width: 250)
        .cornerRadius(16)
    }
}

#Preview {
    TaskCardView()
}
