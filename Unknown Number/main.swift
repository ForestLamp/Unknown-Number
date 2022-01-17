//
//  main.swift
//  Unknown Number
//
//  Created by Alex Ch. on 17.01.2022.
//

import Foundation

let randomNumber = UInt8.random(in: 1...250)
print("Загадано случайное число, попробуйте отгадать!")
var isWin = false
repeat {
    guard let userNumber = UInt8(readLine() ?? "") else {
        print("Вы ввели некорректное число. Попробуйте снова")
        continue
    }
    if userNumber < randomNumber {
        print("Вы ввели число меньше загаданного")
    } else if userNumber > randomNumber {
        print("Ваше число больше загаданного")
    } else {
        print("Вы угадали!")
        isWin = true
    }
} while !isWin
