//
//  main.swift
//  Swift-Collection-Example
//
//  Created by Omairys Uzcátegui on 2021-06-01.
//

import Foundation
print("Test 1")

//to let the user enter these amounts
func enterAmounts(electricityBills:[String: Double])->[String: Double]{
    let months = ["january","february","march","april","may","june","july","august","september","october","november","december"]
    var electricityBillsWithAmounts = [String: Double] ()
    
    for item in months {
        print("Insert the amount for the month \(item):")
        let value = Double(readLine()!)!
        electricityBillsWithAmounts[item] = value
    }
    return electricityBillsWithAmounts
}

//1.    Ask the user to select the month and print the amount of the bill for that month.
func selectAmonth (electricityBills:[String: Double]){
    print("Insert a month to consult: ")
    let key = readLine()!
    
    if electricityBills[key] == nil{
        print("the month does not exist")
    }else{
        print("the amount of the bill \(key) = ",electricityBills[key]!)
    }
}
//2.    Find and print the average of all bills
func findAverage(any:[String: Double])->Double{
    var sum=0.0
    for (_, value) in any {
        sum += value
    }
    return sum / Double(any.count)
}
//3.    Find and print the average of each quarter of the year. So print the quarter number and its average.
func findAverageQuarter(electricityBills:[String: Double]){
    var quarter1 = [String: Double] ()
    var quarter2 = [String: Double] ()
    var quarter3 = [String: Double] ()
    var quarter4 = [String: Double] ()
    
    for (key, value) in electricityBills {
        switch key {
        case "january","february","march":
            quarter1[key] = value
        case "april","may","june":
            quarter2[key] = value
        case "july","august","september":
            quarter3[key] = value
        case "october","november","december":
            quarter4[key] = value
        default:
            break
        }
    }
    print("First quarter \(quarter1) the average is \(findAverage(any: quarter1))")
    print("Second quarter \(quarter2) the average is \(findAverage(any: quarter2))")
    print("Third quarter \(quarter3) the average is \(findAverage(any: quarter3))")
    print("Fourth quarter \(quarter3) the average is \(findAverage(any: quarter4))")
}
//4.    Print names of months which their bills more than 75$
func findBillsMore(electricityBills:[String: Double]){
    let moreThan = 75.0
    var exist = false
    print("Do exist months which their bills more than 75$ ?:")
    for (key, value) in electricityBills{
        if value > moreThan {
            exist = true
            print(key)
        }
    }
    if !exist {
        print("No!")
    }
}
//5.    Print the name of the month that has the minimum bill amount
func findMinimun(electricityBills:[String: Double])-> String{
    var min = electricityBills.values.first
    var month = String()
    for (key, value) in electricityBills{
        //min = value
        if value < min! {
            min = value
            month = key
        }
    }
    return month
}

var electricityBills = ["january":0.0,
                        "february":0.0,
                        "march":0.0,
                        "april":0.0,
                        "may":0.0,
                        "june":0.0,
                        "july":0.0,
                        "august":0.0,
                        "september":0.0,
                        "october":0.0,
                        "november":0.0,
                        "december":0.0]
//to let the user enter these amounts
electricityBills = enterAmounts(electricityBills:electricityBills)
//1.    Ask the user to select the month and print the amount of the bill for that month.
selectAmonth(electricityBills:electricityBills)
//2.    Find and print the average of all bills
print("The average of all bills: ", findAverage(any: electricityBills))
//3.    Find and print the average of each quarter of the year. So print the quarter number and its average.
findAverageQuarter(electricityBills:electricityBills)
//4.    Print names of months which their bills more than 75$
findBillsMore(electricityBills:electricityBills)
//5.    Print the name of the month that has the minimum bill amount
print("The name of the month that has the minimum bill amount is: ", findMinimun(electricityBills:electricityBills))

