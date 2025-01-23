//
//  Method Injection.swift
//
//
//  Created by Eslam on 20/01/2025.
//
// MARK: - Step three from IOC Into Dependency Injection using method injection


 protocol PaymentService {
     func processPayment()
 }

 class PaypalPaymentServiceImpl: PaymentService {
     func processPayment() {
         print("Payment processed!")
     }
 }

 class UserService {
     // No property to store paymentService here
     func createUser(paymentService: PaymentService) {
         paymentService.processPayment()  // Using injected PaymentService
     }
 }

 // 1. Create the PaymentService instance
 let paypalpaymentService = PaypalPaymentServiceImpl()
let StripepaymentService = StripPaymentServiceImpl()

 // 2. Create the UserService instance
 let userService = UserService()

 // 3. Inject the PaymentService dependency at the method level
 userService.displayPayment(paymentService: StripepaymentService)  // This will print "Payment processed!"

