//
//  main.swift
//  workshop_swift_ampersand
//
//  Created by Levent Kantaroğlu on 24.04.2024.
//

import Foundation

print("Start");

var selectedValue = 1
print(selectedValue)

//myFn1(selectedValue: selectedValue)
//print(selectedValue)

myFn2(selectedValue: &selectedValue)
print(selectedValue)

myFn3(chosenValue: &selectedValue)
print(selectedValue)

myFn4(chosenValue: &selectedValue)
print(selectedValue)

// Cannot assign to value: 'selectedValue' is a 'let' constant
func myFn1(selectedValue: Int){
    // Cannot assign to value: 'selectedValue' is a 'let' constant
    // --> selectedValue = 2
}

func myFn2(selectedValue: inout Int){
    selectedValue = 3
}

func myFn3(chosenValue: inout Int){
    // Simultaneous accesses to 0x100008000, but modification requires exclusive access
    // --> selectedValue = 4
}

func myFn4(chosenValue: inout Int){
    // No effect to the top level [selectedValue]
    chosenValue = 5
}
