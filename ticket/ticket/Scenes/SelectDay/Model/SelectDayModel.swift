//
//  SelectDayModel.swift
//  ticket
//
//  Created by Andre Dantas on 01/08/21.
//

import Foundation
import UIKit

enum SelectDay {
    enum TicketDay {
        struct Request {
            var ticketOwner: ticketType
            var weekDay: WeekDay
            var studentCard: Bool?
        }
        enum Response {
            struct Failure {
                var error: Error
            }
            struct Success {
                var price: Double
            }
        }
        enum ViewModel {
            struct Failure {
                var error: Error
            }
            struct Success {
                var price: Double
            }
        }
    }
}
enum Owner {
    case child
    case older
    case student
}
enum WeekDay {
    case monday
    case tuesday
    case wednesday
    case thurday
    case friday
    case weekendOrHoliday
}
struct ticketType {
    var owner: Owner
    var pot: Double = 0
    var outs: Double = 0
}


