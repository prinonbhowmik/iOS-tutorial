//
//  ContentView.swift
//  UrlSession
//
//  Created by Prinon bhowmik on 12/21/24.
//

import SwiftUI

struct NewsView: View {
    @State private var model = ViewModel()

    var body: some View {
        NavigationStack {
            List(model.stories) { story in
                Entry(story: story)
            }
            .listStyle(.plain)
            .navigationTitle("News")
            .task {
                try? await model.fetchTopStories()
            }
        }
    }
}

extension Entry {
    init(story: Item) {
        title = story.title
        score = story.score
        commentCount = story.commentCount
        footnote = (story.url.host() ?? "")
        + " - \(story.date.formatted(.relative(presentation: .numeric)))"
        + " - by \(story.author)"
    }
}

#Preview {
    NewsView()
}
