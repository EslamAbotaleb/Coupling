//: [Previous](@previous)

import Foundation

protocol PaymentService {
    func processPayment()
}
/*
 Payment Service maybe :-
 1. Paypal
 2. payfort
 3. Stripe
 4. Mondia Media
 */

// 2. Implement the concrete classes with descriptive names (low level)
class PaypalPaymentService: PaymentService {
    func processPayment() {
        print("Processing payment through PayPal")
    }
}

class StripePaymentService: PaymentService {
    func processPayment() {
        print("Processing payment through Stripe")
    }
}

// 3. Inject the PaymentService abstraction into UserService (DI)
class UserService {
    private var paymentService: PaymentService

    init(paymentService: PaymentService) {
        self.paymentService = paymentService
    }

    func displayProcessPayment() {
        paymentService.processPayment()
    }
}

//// 4. Inject dependency (via DIP) when creating UserService
//let paymentService = StripePaymentService()  // Could easily swap with PaypalPaymentService
//let userService = UserService(paymentService: paymentService)
let paypal = PaypalPaymentService()
let userService = UserService(paymentService: paypal)
