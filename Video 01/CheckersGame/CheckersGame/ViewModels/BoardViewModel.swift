// BoardViewModel.swift
// Gerencia a lógica de apresentação do tabuleiro

import SwiftUI

class BoardViewModel: ObservableObject {
    @Published private(set) var board: BoardModel
    
    init() {
        self.board = BoardModel()
    }
    
    // Retorna a cor apropriada para cada casa do tabuleiro
    func squareColor(row: Int, col: Int) -> Color {
        guard let isBlack = board.squares[row][col] else {
            return .white
        }
        return isBlack ? .black : .white
    }
} 
