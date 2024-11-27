// BoardView.swift
// Responsável pela apresentação visual do tabuleiro

import SwiftUI

struct BoardView: View {
    @StateObject private var viewModel = BoardViewModel()
    let squareSize: CGFloat = 90
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ForEach(0..<BoardModel.boardSize, id: \.self) { row in
                    HStack(spacing: 0) {
                        ForEach(0..<BoardModel.boardSize, id: \.self) { col in
                            Rectangle()
                                .fill(viewModel.squareColor(row: row, col: col))
                                .frame(width: squareSize, height: squareSize)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(Color.gray.opacity(0.3))
        }
    }
}

#Preview {
    BoardView()
} 
