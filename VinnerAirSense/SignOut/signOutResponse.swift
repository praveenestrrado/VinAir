//
//  signOutResponse.swift
//  VinnerAirSense
//
//  Created by MAC on 15/02/21.
//

import Foundation
import SwiftyJSON

class signOutResponseModel {
    
    let httpcode: Int?
    let status: String?
    let message: String?
    let signOutData: SignOutData?

    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        signOutData = SignOutData(json["data"])

        
    }
    
}
    class SignOutData {


        
        let msg: String?

        init(_ json: JSON) {
            msg = json["msg"].stringValue
        }
    
}
