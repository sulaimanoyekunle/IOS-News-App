//
//  CategoryRow.swift
//  NewsfeedUI-Starter
//
//  Created by Sulaiman O on 1/10/24.
//



import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var articles: [NewsArticle]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.title)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(articles) { article in
                        NavigationLink(destination: DetailView(article: article)) {
                            CategoryItem(article: article)
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }
    
    struct CategoryRow_Previews: PreviewProvider {
        static var articles = NewsFeed.sampleData
        
        static var previews: some View {
            CategoryRow(categoryName: "Sports", articles: articles)
        }
    }
}
