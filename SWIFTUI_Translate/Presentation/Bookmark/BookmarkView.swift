//
//  BookmarkView.swift
//  SWIFTUI_Translate
//
//  Created by 이윤수 on 2023/06/01.
//

import SwiftUI

struct BookmarkView : View{
    @StateObject var viewModel : BookmarkViewModel
    
    var body: some View{
        NavigationView {
            List(self.viewModel.bookmarkList, id: \.id){
                BookmarkCell(data: $0)
                    .padding(10)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                    .background(Color(uiColor: .secondarySystemBackground))
            }
            .listStyle(.plain)
            .background(Color(uiColor: .secondarySystemBackground))
            .navigationTitle("즐겨찾기")
        }
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView(viewModel: .init())
    }
}
