//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by joonwon lee on 2022/06/11.
//

import Foundation


final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
