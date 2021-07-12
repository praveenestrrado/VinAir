//
//  typeResponseModel.swift
//  VinnerAirSense
//
//  Created by MAC on 25/02/21.
//

import Foundation
import SwiftyJSON

class TypeResponseModel {

    let httpcode: Int?
    let status: String?
    let message: String?
    let typesdata: typesData?
    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        typesdata = typesData(json["data"])
    }

}



class CountryResponseModel {

    let httpcode: Int?
    let status: String?
    let message: String?
    let country_listdata: country_listData?
    init(_ json: JSON) {
        httpcode = json["httpcode"].intValue
        status = json["status"].stringValue
        message = json["message"].stringValue
        country_listdata = country_listData(json["data"])
    }

}


class country_listData {


    
    let country_lists:[country_list]?


    init(_ json: JSON) {
        country_lists = json["country_list"].arrayValue.map { country_list($0) }
        
        

    }


}
class country_list {

    let id: Int?
    let name: String?
    let status: Int?

    init(_ json: JSON) {
        id = json["id"].intValue
        name = json["name"].stringValue
        status = json["status"].intValue
    }

}


class typesData {


    
    let types:[Types]?


    init(_ json: JSON) {
        types = json["types"].arrayValue.map { Types($0) }
        
        

    }


}
class Types {

    let id: Int?
    let name: String?
    let status: Int?

    init(_ json: JSON) {
        id = json["id"].intValue
        name = json["name"].stringValue
        status = json["status"].intValue
    }

}
