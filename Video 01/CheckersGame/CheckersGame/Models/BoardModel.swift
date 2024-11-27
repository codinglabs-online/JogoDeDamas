// BoardModel.swift
// Representa o modelo do tabuleiro do jogo de damas

import Foundation

struct BoardModel {
    // Tamanho padrão do tabuleiro de damas (8x8)
    static let boardSize = 8
    
    // Matriz que representa o tabuleiro
    // nil = casa vazia
    // true = casa preta
    // false = casa branca
    var squares: [[Bool?]] = Array(
        repeating: Array(repeating: nil, count: boardSize),
        count: boardSize
    )
    
    init() {
        setupBoard()
    }
    
    private mutating func setupBoard() {
        // Configura o padrão do tabuleiro alternando entre casas pretas e brancas
        for row in 0..<BoardModel.boardSize {
            for col in 0..<BoardModel.boardSize {
                // Se a soma de linha e coluna for par, é uma casa branca
                // Se for ímpar, é uma casa preta
                squares[row][col] = (row + col) % 2 != 0
            }
        }
    }
} 
