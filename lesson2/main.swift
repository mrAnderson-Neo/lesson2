//
//  main.swift
//  lesson2
//
//  Created by Андрей Калюжный on 06.03.2021.
//

import Foundation

// Массив из 100 чисел
var arr = Array(1...100)

// Чётное нечётное число
func thisIsAnEvenNumber(numb: Int) -> Bool {
    return numb%2 == 0
}

// Определить делится ли число на 3
func thisNumberIsDivisibleBy3(numb: Int) -> Bool {
    return numb%3 == 0
}

// Получить число Фибоначи
func getFibonacciNumber(numb: Int) -> Int {
    if numb == 1 || numb == 2{
        return 1
    }
    return getFibonacciNumber(numb: numb - 2) + getFibonacciNumber(numb: numb - 1)
}
// Перебиаю массив в обратом прядке чтобы при удалении индексы не сбивались
for i in (-(arr.count-1)...0){
    var removeNumb = false
    let el = arr[-i]
    
    
    if thisIsAnEvenNumber(numb: el) {
        print("Число \(el) является чётным")
        removeNumb = true
    }else{
        print("Число \(el) является нечётным")
    }
    
    if thisNumberIsDivisibleBy3(numb: el) {
        print("Число \(el) делится на 3")
        removeNumb = true
    }else{
        print("Число \(el) не делится на 3")
    }
    
    // Удаляем все чётные числа либо числа которые делятся на 3
    if removeNumb {
        arr.remove(at: el-1)
    }
}

print(arr)

print(getFibonacciNumber(numb: 4))


