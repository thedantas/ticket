//
//  SelectDayViewModel.swift
//  ticket
//
//  Created by Andre Dantas on 01/08/21.
//

import Foundation
import UIKit

class SelectDayViewModel {
    
    func calculateTicket(request: SelectDay.TicketDay.Request) -> Double? {
        var finalPrice = Double()
        
        switch request.ticketOwner.owner{
        case .child:
            finalPrice = ticketChild(day: request.weekDay, ticketPrice: 5.5)
        case .older:
            finalPrice = ticketOlder(day: request.weekDay, ticketPrice: 6.0)
        case .student:
            finalPrice = ticketStudent(day: request.weekDay, studentCard: request.studentCard ?? false, ticketPrice: 8.0)
        }
        
        return finalPrice
    }
    
    //MARK: Student Logic
    func ticketStudent(day: WeekDay, studentCard: Bool, ticketPrice: Double) -> Double{
        var calculeValue = Double()
        
        switch day{
        case .monday:
            if studentCard {
                calculeValue = ticketPrice * 0.65
            }
            else{
                calculeValue = ticketPrice * 0.90
            }
            
        case .tuesday:
            if studentCard {
                calculeValue = ticketPrice * 0.65
            }
            else{
                calculeValue = ticketPrice * 0.95
            }
            
        case .wednesday:
            calculeValue = ticketPrice * 0.50
            
        case .thurday:
            if studentCard {
                calculeValue = ticketPrice * 0.65
            }
            else{
                calculeValue = ticketPrice * 0.70
            }
            
        case .friday:
            if studentCard {
                calculeValue = ticketPrice * 0.65
            }
            else{
                calculeValue = ticketPrice
            }
            
        case .weekendOrHoliday:
            calculeValue = ticketPrice
            
        }
        

        return calculeValue
    }
    //MARK: Child Logic
    func ticketChild(day: WeekDay, ticketPrice: Double) -> Double{
        var calculeValue = Double()
        
        switch day{
        case .monday:
            calculeValue = ticketPrice * 0.90
            
        case .tuesday:
            calculeValue = ticketPrice * 0.85
            
        case .wednesday:
            calculeValue = ticketPrice * 0.60
            
        case .thurday:
            calculeValue = ticketPrice * 0.70
            
        case .friday:
            calculeValue = ticketPrice
            
        case .weekendOrHoliday:
            calculeValue = ticketPrice
            
        }
    
        return calculeValue
    }
    
    //MARK: Older Logic
    func ticketOlder(day: WeekDay, ticketPrice: Double) -> Double{
        var calculeValue = Double()
        
        switch day{
        case .monday:
            calculeValue = ticketPrice * 0.90
            
        case .tuesday:
            calculeValue = ticketPrice * 0.85
            
        case .wednesday:
            calculeValue = ticketPrice * 0.70
            
        case .thurday:
            calculeValue = ticketPrice
            
        case .friday:
            calculeValue = ticketPrice * 0.89
            
        case .weekendOrHoliday:
            calculeValue = ticketPrice
            
        }
    
        return calculeValue
    }
}
