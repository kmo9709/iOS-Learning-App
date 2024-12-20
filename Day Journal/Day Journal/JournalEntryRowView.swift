//
//  JournalEntryRowView.swift
//  Day Journal
//
//  Created by Mahoney, Kevin (STL) on 12/19/24.
//

import SwiftUI

struct JournalEntryRowView: View {
    let rowJournalEntry: JournalEntry
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(rowJournalEntry.title)
                    .font(.headline)
                    .lineLimit(1)
                Text("-")
                
                Text(rowJournalEntry.body)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            HStack {
                Text(rowJournalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                Text(String(repeating: "⭐️", count: rowJournalEntry.rating))
            }
            .font(.caption)
        }
    }
}

#Preview {
    JournalEntryRowView(rowJournalEntry: JournalEntry(title: "My Dog Bit me", body: "My dog was a jerk today, I was only 5 minutes late for breakfast, and he bit me", rating: 4, date: Date()))
}
