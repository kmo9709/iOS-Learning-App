//
//  JournalEntryDetailView.swift
//  Day Journal
//
//  Created by Mahoney, Kevin (STL) on 12/19/24.
//

import SwiftUI

struct JournalEntryDetailView: View {
    let detailJournalEntry: JournalEntry
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(String(repeating: "⭐️", count: detailJournalEntry.rating))
                Text(detailJournalEntry.date, style: .date)
                    .bold()
                    .padding(.bottom)
                Text(detailJournalEntry.body)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle(detailJournalEntry.title)
    }
}

#Preview {
    JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "My Dog Bit me", body: "My dog was a jerk today, I was only 5 minutes late for breakfast, and he bit me", rating: 4, date: Date()))
}
