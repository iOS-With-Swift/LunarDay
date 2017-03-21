//
//  convertDay.swift
//  LunarDay
//
//  Created by Lê Hồng Phong on 3/21/17.
//  Copyright © 2017 Lê Hồng Phong. All rights reserved.
//

import Foundation

func splitDate(date: Date){
    let year = Calendar.current.component(.year, from: date)
    let month = Calendar.current.component(.month, from: date)
    let day = Calendar.current.component(.day, from: date)
    
    print("day:\(day) month:\(month) year:\(year)")
}
func jdFromDate(date: Date)->Int{
    let yy = Calendar.current.component(.year, from: date)
    let mm = Calendar.current.component(.month, from: date)
    let dd = Calendar.current.component(.day, from: date)
    
    let a = (14 - mm) / 12
    var y = yy+4800-a
    var m = mm+12*a-3
    var jd = dd + Int((153*m+2)/5) + 365*y + Int(y/4) - Int(y/100) + Int(y/400) - 32045
    if (jd < 2299161) {
        jd = dd + Int((153*m+2)/5) + 365*y + Int(y/4) - 32083
    }
    print("jd: \(jd)")
    return jd
    
}
func jdToDate(jd:Int){
    var a, b, c, d, e, m, day, month, year:Int
    if (jd > 2299160) { // After 5/10/1582, Gregorian calendar
        a = jd + 32044
        b = Int((4*a+3)/146097)
        c = a - Int((b*146097)/4)
    } else {
        b = 0
        c = jd + 32082
    }
    d = Int((4*c+3)/1461)
    e = c - Int((1461*d)/4)
    m = Int((5*e+2)/153)
    day = e - Int((153*m+2)/5) + 1
    month = m + 3 - 12*Int(m/10)
    year = b*100 + d - 4800 + Int(m/10)
    print("jdToDate: day:\(day) month:\(month) year:\(year)")
}



func getNewMoonDay(k:Int, timeZone:Int)->Int{

    return 0
}

func getSunLongitude(jdn:Int, timeZone:Int)->Int{

    return 0
}
