//
//  ContentView.swift
//  Day Journal
//
//  Created by Mahoney, Kevin (STL) on 12/19/24.
//

import SwiftUI

struct JournalEntriesListView: View {
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: JournalEntryDetailView(detailJournalEntry: listedJournalEntry)){
                    JournalEntryRowView(rowJournalEntry:  listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
        }
    }
}

#Preview {
    JournalEntriesListView()
}
