//
//  AQIREsponseModel.swift
//  VinnerAirSense
//
//  Created by MAC on 24/03/21.
//

import Foundation
import ObjectMapper
import SwiftyJSON

class AQIResponseModel {

    let status: String?
    let data : AQIData?
    init(_ json: JSON) {
        status = json["status"].stringValue
        data = AQIData(json["data"])

            }

}
class AQIData {

    let aqi : Int?
    let idx : Int?
    let attributions : [Attributions]?
    let city : City?
    let dominentpol : String?
    let iaqi : Iaqi?
    let time : Time?
    let forecast : Forecast?
    let debug : Debug?


    init(_ json: JSON) {
        aqi = json["aqi"].intValue
        idx = json["idx"].intValue
        dominentpol = json["dominentpol"].stringValue
        attributions = json["all_rooms"].arrayValue.map { Attributions($0) }
        iaqi = Iaqi(json["iaqi"])
        city = City(json["city"])
        time = Time(json["time"])
        forecast = Forecast(json["forecast"])
        debug = Debug(json["debug"])

    }

}
class Attributions {

    let url : String?
    let name : String?
    let logo : String?



    init(_ json: JSON) {
        url = json["url"].stringValue
        name = json["name"].stringValue
        logo = json["logo"].stringValue

    }

}
class City {

    let geo : Double?
    let name : String?
    let url : String?



    init(_ json: JSON) {
        
//        geo = json["geo"].arrayValue.map { Double($0) }

        geo = json["geo"].doubleValue
        name = json["name"].stringValue
        url = json["url"].stringValue

    }

}
class Iaqi {

    let co : Co?
    let h : H?
    let no2 : No2?
    let o3 : O3?
    let p : P?
    let pm10 : Pm10?
    let pm25 : Pm25?
    let so2 : So2?
    let t : T?
    let w : W?


    init(_ json: JSON) {
        co = Co(json["co"])
        h = H(json["h"])
        no2 = No2(json["no2"])
        o3 = O3(json["o3"])
        p = P(json["p"])
        pm10 = Pm10(json["pm10"])
        pm25 = Pm25(json["pm25"])
        so2 = So2(json["so2"])
        t = T(json["t"])
        w = W(json["w"])

    }

}
class So2 {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class Co {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class Dew {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}

class H {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class No2 {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class O3 {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class P {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class Pm10 {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class Pm25 {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class T {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}
class W {

    let v : Int?

    init(_ json: JSON) {
        v = json["v"].intValue

    }

}




class Time {

    let s : String?
    let tz : String?
    let v : Int64?
    let iso : String?



    init(_ json: JSON) {
        s = json["s"].stringValue
        tz = json["tz"].stringValue
        v = json["v"].int64Value
        iso = json["iso"].stringValue

    }

}
class Forecast {

    let daily : Daily?


    init(_ json: JSON) {
        daily = Daily(json["daily"])
       

    }


}
class Debug {

    let sync : String?



    init(_ json: JSON) {
        sync = json["sync"].stringValue

    }

}
class Daily {

    let o31 : [O31]?
    let pm101 : [Pm101]?
    let pm251 : [Pm251]?
    let uvi1 : [Uvi1]?


    init(_ json: JSON) {
        o31 = json["o3"].arrayValue.map { O31($0) }
        pm101 = json["pm10"].arrayValue.map { Pm101($0) }
        pm251 = json["pm25"].arrayValue.map { Pm251($0) }
        uvi1 = json["uvi"].arrayValue.map { Uvi1($0) }
        

    }


}

class O31 {

    let avg1 : Int?
    let day1 : String?
    let max1 : Int?
    let min1 : Int?

    init(_ json: JSON) {
        avg1 = json["avg1"].intValue
        day1 = json["day1"].stringValue
        max1 = json["max1"].intValue
        min1 = json["min"].intValue

    }

}
class Pm101 {

    let avg2 : Int?
    let day2 : String?
    let max2 : Int?
    let min2 : Int?

    init(_ json: JSON) {
        avg2 = json["avg1"].intValue
        day2 = json["day1"].stringValue
        max2 = json["max1"].intValue
        min2 = json["min"].intValue

    }

}
class Pm251 {

    let avg3 : Int?
    let day3 : String?
    let max3 : Int?
    let min3 : Int?

    init(_ json: JSON) {
        avg3 = json["avg1"].intValue
        day3 = json["day1"].stringValue
        max3 = json["max1"].intValue
        min3 = json["min"].intValue

    }

}
class Uvi1 {

    let avg4 : Int?
    let day4 : String?
    let max4 : Int?
    let min4 : Int?

    init(_ json: JSON) {
        avg4 = json["avg1"].intValue
        day4 = json["day1"].stringValue
        max4 = json["max1"].intValue
        min4 = json["min"].intValue

    }

}
