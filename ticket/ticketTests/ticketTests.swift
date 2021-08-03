//
//  ticketTests.swift
//  ticketTests
//
//  Created by Andre Dantas on 01/08/21.
//

import XCTest
@testable import ticket

class ticketTests: XCTestCase {

    let selectDayViewModel = SelectDayViewModel()
    
    func testStudentTicket(){
        let test = selectDayViewModel.ticketStudent(day: .friday, studentCard: true, ticketPrice: 8.0)
        XCTAssertEqual(test, 5.2, "Desconto com a carterinha")
      
    }
    
    func testChildTicket(){
        let test = selectDayViewModel.ticketChild(day: .monday, ticketPrice: 5.5)
        XCTAssertEqual(test, 4.95, "Desconto criança")
      
    }
    
    func testOlderTicket(){
        let test = selectDayViewModel.ticketOlder(day: .monday, ticketPrice: 5.5)
        XCTAssertEqual(test, 4.95, "Desconto aposentado")
      
    }
}
