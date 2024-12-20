//
//  JournalEntry.swift
//  Day Journal
//
//  Created by Mahoney, Kevin (STL) on 12/19/24.
//

import Foundation

class JournalEntry: Identifiable {
    var title: String = ""
    var body: String = ""
    var rating: Int = 1
    var date: Date = Date()
    
    init(title: String, body: String, rating: Int, date: Date) {
        self.title = title
        self.body = body
        self.rating = rating
        self.date = date
    }
}

let journalEntries: [JournalEntry] = [JournalEntry(title: "My Dog Bit me", body: "My dog was a jerk today, I was only 5 minutes late for breakfast, and he bit me", rating: 4, date: Date()),JournalEntry(title: "My Dog Bit me Again", body: "My dog was a jerk today, I was only 5 minutes late for breakfast, and he bit me", rating: 4, date: Date()), JournalEntry(title: "My Dog Bit me ITS THE LAST TIME", body: "My dog was a jerk today, I was only 5 minutes late for breakfast, and he bit me", rating: 4, date: Date())]
