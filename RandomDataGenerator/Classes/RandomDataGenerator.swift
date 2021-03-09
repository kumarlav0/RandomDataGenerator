//  RandomDataGenerator.swift
//  RandomDataGenerator
//
//  Created by mac on 08/03/21.
//

import Foundation
import UIKit



public class DataGenerator{

  public init() {
        
    }
    
   public func createEmployees(numberOfEmploye:Int) ->[Employee]  {
        var employeeArr = [Employee]()
        if numberOfEmploye != 0{
            for _ in 1...numberOfEmploye{
                var empObj = Employee()
                empObj.empAge = Int.random(in: 18...65) // Avg Age of any Employee between 18 to 65
                empObj.empGender = RandomData().getRandomGender(randomNum: Int.random(in: 1...10))
                empObj.empID = RandomData().getRandomId()
                empObj.empMarritalStatus = RandomData().getRandomMarritalStatus(randomNum: Int.random(in: 0...1))
                empObj.empName = RandomData().randomString(length:  Int.random(in: 5...15))
                empObj.empMonthlySalary = Float.random(in: 15000...90000)
                
               /// Getting Image Url
                let framworkBundle = Bundle(for: DataGenerator.self)
                let path = framworkBundle.path(forResource: "Resources", ofType: "bundle")
                let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
                
                // Returning UIImage
                empObj.empImage = UIImage(named: "\(RandomData().getRandomImg(number: Int.random(in: 1...10))).png", in: resourcesBundle, compatibleWith: nil)
                empObj.empEmail = RandomData().getRandomEmail()
                empObj.empMobileNumber = RandomData().getRandomMobileNumber()
                employeeArr.append(empObj)
            }
        }
        
           return employeeArr
       }
    
   public func createUsers(numberOfEmploye:Int)  {
        
    }
    
   
    
}





public struct Employee{
   public var empID:String?
   public var empName:String?
   public var empMonthlySalary:Float?
   public var empYearlySalary:Float{
        return empMonthlySalary ?? 0 * 12
    }
   public var empAge:Int?
   public var empMarritalStatus:Bool?
   public var empGender:Gender?
   public var empImage:UIImage?
   public var empEmail:String?
   public var empMobileNumber:String?
    

    /// Your public structs in your framework need a public init.
       ///
       /// Don't forget to add your let properties initial values too.
    
   public init() {
        
    }
    
//    public init(empID: String,empName:String,empMonthlySalary:Float,empAge:Int,empMarritalStatus:Bool,empGender:Gender,empImage:UIImage,empEmail:String, empMobileNumber:String) {
//        self.empID = empID
//        self.empName = empName
//        self.empMonthlySalary = empMonthlySalary
//        self.empAge = empAge
//        self.empMarritalStatus = empMarritalStatus
//        self.empGender = empGender
//        self.empImage = empImage
//        self.empEmail = empEmail
//        self.empMobileNumber = empMobileNumber
//    }
    
}



public enum Gender:String{
    case Male = "Male"
    case Female = "Female"
    case Transgender = "Transgender"
    case GenderNeutral = "Gender Neutral"
    case NonBinary = "NonBinary"
    case Agender = "Agender"
    case PanGender = "PanGender"
    case Genderqueer = "Genderqueer"
    case TwoSpirit = "TwoSpirit"
    case ThirdGender = "ThirdGender"
    case DontWantToRevel = "Sorry"
}


public class RandomData{
    
   public func getRandomGender(randomNum:Int) -> Gender {
        
        switch randomNum {
        case 1:
            return .Male
        case 2:
            return .Female
        case 3:
            return .Transgender
        case 4:
            return .GenderNeutral
        case 5:
            return .NonBinary
        case 6:
            return .Agender
        case 7:
            return .PanGender
        case 8:
            return .Genderqueer
        case 9:
            return .TwoSpirit
        case 10:
            return .ThirdGender
        default:
            return .DontWantToRevel
        }
    }
    
   public func getRandomId() -> String {
        return randomString(length: 16) //UUID().uuidString
    }
    
   public func getRandomMarritalStatus(randomNum:Int) -> Bool {
           switch randomNum {
           case 0:
               return false
           case 1:
               return true
           default:
               return false
           }
       }
    
    
  // returns a random email as string
   public func getRandomEmail() -> String {
        let nameLength = randomInt(from: 5, to: 10)
        let domainLength = randomInt(from: 5, to: 10)
        let domainSuffixes = ["com", "net", "org", "io", "co.uk"]
        let name = randomString(length: nameLength)
        let domain = randomString(length: domainLength)
        let randomDomainSuffixIndex = Int(arc4random_uniform(UInt32(domainSuffixes.count)))
        let domainSuffix = domainSuffixes[randomDomainSuffixIndex]
        let text = name + "@" + domain + "." + domainSuffix
        return text
    }
    
    
   public func getRandomMobileNumber() -> String {
        // Starting 6 to 9 for indian Mobile Numbers
        return "\(Int.random(in: 6...9))\(random9DigitString())"
    }
    
    
   public func getRandomImg(number:Int) -> String {
        switch number {
        case 1:
            
            return "img1"
        case 2:
            return "img2"
        case 3:
            return "img3"
        case 4:
            return "img4"
        case 5:
            return "img5"
        case 6:
            return "img6"
        case 7:
            return "img7"
        case 8:
            return "img8"
        case 9:
            return "img9"
        case 10:
            return "img10"
        default:
             return "img10"
        }
    }
    
    
    //=======================================================================
    // MARK:- Usefull Method for Data
    
    func random9DigitString() -> String {
        let min: UInt32 = 100_000_000
        let max: UInt32 = 999_999_999
        let i = min + arc4random_uniform(max - min + 1)
        return String(i)
    }
    
    
    
    func randomInt(from: Int, to: Int) -> Int {
        let range = UInt32(to - from)
        let rndInt = Int(arc4random_uniform(range + 1)) + from
        return rndInt
    }
    
    // returns a random color
    func randomColor() -> UIColor{
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    
    
   // Generating Random String
    func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyz0123456789" // ABCDEFGHIJKLMNOPQRSTUVWXYZ
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
    
    
}


extension Int {
    static func random(max: Int) -> Int {
        let rnd = Int(arc4random_uniform(UInt32(max) + 1))
        return rnd
    }
    
}

