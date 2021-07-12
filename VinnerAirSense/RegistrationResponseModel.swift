//
//  RegistrationResponseModel.swift
//  VinnerAirSense
//
//  Created by MAC on 03/02/21.
//

import Foundation
import SwiftyJSON

class RegistrationResponseModel {
    
    let httpcode: Int?
    let status: String?
    let message: String?
    let registrationData: RegistrationData?

    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        registrationData = RegistrationData(json["data"])
    }
    
}
    class RegistrationData {

        let message: String?
//        let name: String?
//        let email: String?
//        let mobile: String?
//        let redirect: String?

        init(_ json: JSON) {
            message = json["message"].stringValue
//            name = json["name"].stringValue
//            email = json["email"].stringValue
//            mobile = json["mobile"].stringValue
//            redirect = json["redirect"].stringValue
        }

    
}
