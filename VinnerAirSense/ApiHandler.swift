//
//  ApiHandler.swift
//  SwiftChart_Example
//
//  Created by Mac Book on 3/15/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import Alamofire

let URL1 = "http://54.212.67.110:3000/api/v1/measures/statistics"

class ApiHandler{
    let sharedData = SharedDefault()

    static var shared = ApiHandler()
    private init(){
    }
    
    func postPlotData(userdetails: PlotdataReq,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLastDateData(userdetails: PlotdataLuxLastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotLuxLastWeekData(userdetails: PlotdataLuxLastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotLuxLastMonthData(userdetails: PlotdataLuxLastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotLuxLast1MinuteDayData(userdetails: PlotdataLuxDayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotLuxLast2MinuteDayData(userdetails: PlotdataLuxDayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotLuxLast5MinuteDayData(userdetails: PlotdataLuxDayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast10MinuteDayData(userdetails: PlotdataDayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast30MinuteDayData(userdetails: PlotdataDayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotLuxLast60MinuteDayData(userdetails: PlotdataLuxDayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast2HoursDayData(userdetails: PlotdataLuxDayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotLuxLast8HoursDayData(userdetails: PlotdataLuxDayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    
    
    func postPlotLuxLast1MinuteWeeklyData(userdetails: PlotdataLuxWeekReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotLuxLast2MinuteWeeklyData(userdetails: PlotdataLuxWeekReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotLuxLast5MinuteWeeklyData(userdetails: PlotdataLuxWeekReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotLuxLast10MinuteWeeklyData(userdetails: PlotdataLuxWeekReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotLuxLast30MinuteWeeklyData(userdetails: PlotdataLuxWeekReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast60MinuteWeeklyData(userdetails: PlotdataLuxWeekReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast2HoursWeeklyData(userdetails: PlotdataLuxWeekReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast8HoursWeeklyData(userdetails: PlotdataLuxWeekReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast1MinuteMonthlyData(userdetails: PlotdataLuxMonthReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotLuxLast2MinuteMonthlyData(userdetails: PlotdataLuxMonthReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotLuxLast5MinuteMonthlyData(userdetails: PlotdataLuxMonthReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotLuxLast10MinuteMonthlyData(userdetails: PlotdataLuxMonthReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotLuxLast30MinuteMonthlyData(userdetails: PlotdataMonthReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast60MinuteMonthlyData(userdetails: PlotdataLuxMonthReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast2HoursMonthlyData(userdetails: PlotdataLuxMonthReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotLuxLast8HoursMonthlyData(userdetails: PlotdataLuxMonthReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotHumidityData(userdetails: PlotdataReqHumidity,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityLastDayData(userdetails: PlotdataHumidityLastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityLastWeeklyData(userdetails: PlotdataHumidityLastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityLastMonthlyData(userdetails: PlotdataHumidityLastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotHumidityDaily1MinuteData(userdetails: PlotdataHumidityDayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotHumidityDaily2MinuteData(userdetails: PlotdataHumidityDayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityDaily5MinuteData(userdetails: PlotdataHumidityDayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotHumidityDaily10MinuteData(userdetails: PlotdataHumidityDayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotHumidityDaily30MinuteData(userdetails: PlotdataHumidityDayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityDaily60MinuteData(userdetails: PlotdataHumidityDayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotHumidityDaily2HoursData(userdetails: PlotdataHumidityDayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotHumidityDaily8HoursData(userdetails: PlotdataHumidityDayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityWeekly1MinuteData(userdetails: PlotdataHumidityWeekReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityWeekly2MinuteData(userdetails: PlotdataHumidityWeekReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotHumidityWeekly5MinuteData(userdetails: PlotdataHumidityWeekReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityWeekly10MinuteData(userdetails: PlotdataHumidityWeekReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityWeekly30MinuteData(userdetails: PlotdataHumidityWeekReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotHumidityWeekly60MinuteData(userdetails: PlotdataHumidityWeekReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotHumidityWeekly2HoursData(userdetails: PlotdataHumidityWeekReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotHumidityWeekly8HoursData(userdetails: PlotdataHumidityWeekReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityMonthly1MinuteData(userdetails: PlotdataHumidityMonthReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityMonthly2MinuteData(userdetails: PlotdataHumidityMonthReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotHumidityMonthly5MinuteData(userdetails: PlotdataHumidityMonthReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotHumidityMonthly10MinuteData(userdetails: PlotdataHumidityMonthReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotHumidityMonthly30MinuteData(userdetails: PlotdataHumidityMonthReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityMonthly60MinuteData(userdetails: PlotdataHumidityMonthReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityMonthly2HoursData(userdetails: PlotdataHumidityMonthReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotHumidityMonthly8HoursData(userdetails: PlotdataHumidityMonthReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    
    
    func postPlotVOCData(userdetails: PlotdataReqVOC,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLAstDayData(userdetails: PlotdataVOCLastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotVOCLastWeekData(userdetails: PlotdataVOCLastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLastMonthData(userdetails: PlotdataVOCLastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast1MinuteDayData(userdetails: PlotdataVOCDayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast2MinuteDayData(userdetails: PlotdataVOCDayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotVOCLast5MinuteDayData(userdetails: PlotdataVOCDayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast10MinuteDayData(userdetails: PlotdataVOCDayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast30MinuteDayData(userdetails: PlotdataVOCDayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast60MinuteDayData(userdetails: PlotdataVOCDayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast2HoursDayData(userdetails: PlotdataVOCDayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast8HoursDayData(userdetails: PlotdataVOCDayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast1MinuteWeekData(userdetails: PlotdataVOCWeekReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast2MinuteWeekData(userdetails: PlotdataVOCWeekReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast5MinuteWeekData(userdetails: PlotdataVOCWeekReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast10MinuteWeekData(userdetails: PlotdataVOCWeekReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast30MinuteWeekData(userdetails: PlotdataVOCWeekReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast60MinuteWeekData(userdetails: PlotdataVOCWeekReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast2HoursWeekData(userdetails: PlotdataVOCWeekReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast8HoursWeekData(userdetails: PlotdataVOCWeekReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast1MinuteMonthData(userdetails: PlotdataVOCMonthReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast2MinuteMonthData(userdetails: PlotdataVOCMonthReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast5MinuteMonthData(userdetails: PlotdataVOCMonthReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast10MinuteMonthData(userdetails: PlotdataVOCMonthReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotVOCLast30MinuteMonthData(userdetails: PlotdataVOCMonthReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast60MinuteMonthData(userdetails: PlotdataVOCMonthReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast2HoursMonthData(userdetails: PlotdataVOCMonthReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotVOCLast8HoursMonthData(userdetails: PlotdataVOCMonthReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotPM1LastDayData(userdetails: PlotdataPM1LastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotPM1LastWeekData(userdetails: PlotdataPM1LastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1LastMonthData(userdetails: PlotdataPM1LastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotPM1LastDay1MinuteData(userdetails: PlotdataPM1DayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    
    
    func postPlotPM1LastDay2MinuteData(userdetails: PlotdataPM1DayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotPM1LastDay5MinuteData(userdetails: PlotdataPM1DayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM1LastDay10MinuteData(userdetails: PlotdataPM1DayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1LastDay30MinuteData(userdetails: PlotdataPM1DayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1LastDay60MinuteData(userdetails: PlotdataPM1DayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1LastDay2HoursData(userdetails: PlotdataPM1DayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1LastDay8HoursData(userdetails: PlotdataPM1DayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM1Week1MinuteData(userdetails: PlotdataPM1WeekReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1Week2MinuteData(userdetails: PlotdataPM1WeekReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1Week5MinuteData(userdetails: PlotdataPM1WeekReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM1Week10MinuteData(userdetails: PlotdataPM1WeekReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1Week30MinuteData(userdetails: PlotdataPM1WeekReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1Week60MinuteData(userdetails: PlotdataPM1WeekReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM1Week2HoursData(userdetails: PlotdataPM1WeekReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotPM1Week8HoursData(userdetails: PlotdataPM1WeekReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotPM1Monthly1MinuteData(userdetails: PlotdataPM1MonthReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM1Monthly2MinuteData(userdetails: PlotdataPM1MonthReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM1Monthly5MinuteData(userdetails: PlotdataPM1MonthReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM1Monthly10MinuteData(userdetails: PlotdataPM1MonthReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1Monthly30MinuteData(userdetails: PlotdataPM1MonthReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1Monthly60MinuteData(userdetails: PlotdataPM1MonthReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1Monthly2HoursData(userdetails: PlotdataPM1MonthReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM1Monthly8HoursData(userdetails: PlotdataPM1MonthReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    
    
    
    
    
    func postPlotPM10Data(userdetails: PlotdataReqpm10n,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotPM10LastDayData(userdetails: PlotdataPM1LastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotPM10LastWeekData(userdetails: PlotdataPM10LastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10LastMonthData(userdetails: PlotdataPM10LastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10LastDay1MinuteData(userdetails: PlotdataPM10DayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10LastDay2MinuteData(userdetails: PlotdataPM10DayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10LastDay5MinuteData(userdetails: PlotdataPM10DayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10LastDay10MinuteData(userdetails: PlotdataPM10DayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10LastDay30MinuteData(userdetails: PlotdataPM10DayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10LastDay60MinuteData(userdetails: PlotdataPM10DayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10LastDay2HoursData(userdetails: PlotdataPM10DayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10LastDay8HoursData(userdetails: PlotdataPM10DayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotPM10Week1MinuteData(userdetails: PlotdataPM10WeekReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Week2MinuteData(userdetails: PlotdataPM10WeekReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Week5MinuteData(userdetails: PlotdataPM10WeekReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Week10MinuteData(userdetails: PlotdataPM10WeekReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10Week30MinuteData(userdetails: PlotdataPM10WeekReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Week60MinuteData(userdetails: PlotdataPM10WeekReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10Week2hoursData(userdetails: PlotdataPM10WeekReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Week8hoursData(userdetails: PlotdataPM10WeekReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotPM10Monthly1MinuteData(userdetails: PlotdataPM10MonthReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Monthly2MinuteData(userdetails: PlotdataPM10MonthReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Monthly5MinuteData(userdetails: PlotdataPM10MonthReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10Monthly10MinuteData(userdetails: PlotdataPM10MonthReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotPM10Monthly30MinuteData(userdetails: PlotdataPM10MonthReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Monthly60MinuteData(userdetails: PlotdataPM10MonthReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Monthly2HoursData(userdetails: PlotdataPM10MonthReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotPM10Monthly8HoursData(userdetails: PlotdataPM10MonthReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    
    
    
    
    
    func postPlotPM1Data(userdetails: PlotdataReqpm1n,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotTeperatureData(userdetails: PlotdataReqTeperature,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotTeperatureLastDayData(userdetails: PlotdataTempLastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotTeperatureLastWeekData(userdetails: PlotdataTempLastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotTemperatureLastMonthData(userdetails: PlotdataTempLastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotTemperatureLast1MinuteData(userdetails: PlotdataTempDayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast2MinuteData(userdetails: PlotdataTempDayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast5MinuteData(userdetails: PlotdataTempDayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast10MinuteData(userdetails: PlotdataTempDayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast30MinuteData(userdetails: PlotdataTempDayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast60MinuteData(userdetails: PlotdataTempDayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast2HoursData(userdetails: PlotdataTempDayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotTemperatureLast8HoursData(userdetails: PlotdataTempDayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotTemperatureLast1MinuteWeekData(userdetails: PlotdataTempWeekReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotTemperatureLast2MinuteWeekData(userdetails: PlotdataTempWeekReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast5MinuteWeekData(userdetails: PlotdataTempWeekReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast10MinuteWeekData(userdetails: PlotdataTempWeekReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast30MinuteWeekData(userdetails: PlotdataTempWeekReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast60MinuteWeekData(userdetails: PlotdataTempWeekReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast2HoursWeekData(userdetails: PlotdataTempWeekReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotTemperatureLast8HoursWeekData(userdetails: PlotdataTempWeekReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotTemperatureLast1MinuteMonthlthlyData(userdetails: PlotdataTempMonthReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast2MinuteMonthlthlyData(userdetails: PlotdataTempMonthReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast5MinuteMonthlthlyData(userdetails: PlotdataTempMonthReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotTemperatureLast10MinuteMonthlthlyData(userdetails: PlotdataTempMonthReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotTemperatureLast30MinuteMonthlthlyData(userdetails: PlotdataTempMonthReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast60MinuteMonthlthlyData(userdetails: PlotdataTempMonthReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotTemperatureLast2HoursMonthlthlyData(userdetails: PlotdataTempMonthReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotTemperatureLast8HoursMonthlthlyData(userdetails: PlotdataTempMonthReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotCo2nLastDayData(userdetails: PlotdataCO2LastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCo2nLastWeekData(userdetails: PlotdataCO2LastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotCo2nLastMonthData(userdetails: PlotdataCO2LastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotCo2n1MinuteDayData(userdetails: PlotdataCO2DayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCo2n2MinuteDayData(userdetails: PlotdataCO2DayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCo2n5MinuteDayData(userdetails: PlotdataCO2DayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotCo2n10MinuteDayData(userdetails: PlotdataCO2DayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCo2n30MinuteDayData(userdetails: PlotCO2DayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotCo2n60MinuteDayData(userdetails: PlotdataCO2DayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotCo2n2HoursDayData(userdetails: PlotdataCO2DayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCo2n8HoursDayData(userdetails: PlotdataCO2DayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotCo2n1MinuteWeekData(userdetails: PlotdataCO2WeekReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func postPlotCo2nData(userdetails: PlotdataReqCo2n,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotpm2_5nData(userdetails: PlotdataReqpm2_5n,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotpm2_5nLastDayData(userdetails: PlotdataPM2_5LastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotpm2_5nLastWeekData(userdetails: PlotdataPM2_5LastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotpm2_5nLastMOnthData(userdetails: PlotdataPM2_5LastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotpm2_5nLast1MinuteDayData(userdetails: PlotdataPM2_5DayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotpm2_5nLast2MinuteDayData(userdetails: PlotdataPM2_5DayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotpm2_5nLast5MinuteDayData(userdetails: PlotdataPM2_5DayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotpm2_5nLast10MinuteDayData(userdetails: PlotdataPM2_5DayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotpm2_5nLast30MinuteDayData(userdetails: PlotPM2_5TempDayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotpm2_5nLast60MinuteDayData(userdetails: PlotdataPM2_5DayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotpm2_5nLast2HoursDayData(userdetails: PlotdataPM2_5DayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotpm2_5nLast8HoursDayData(userdetails: PlotdataPM2_5DayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotOzoneLastDayData(userdetails: PlotdataOzoneLastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotOzoneLastMonthData(userdetails: PlotdataOzoneLastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotOzoneLastWeekData(userdetails: PlotdataOzoneLastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotOzoneDay1MinuteData(userdetails: PlotdataOzoneDayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotOzoneDay2MinuteData(userdetails: PlotdataOzoneDayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotOzoneDay5MinuteData(userdetails: PlotdataOzoneDayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotOzoneDay10MinuteData(userdetails: PlotdataOzoneDayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotOzoneDay30MinuteData(userdetails: PlotOzoneDayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotOzoneDay60MinuteData(userdetails: PlotdataOzoneDayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotOzoneDay2HoursData(userdetails: PlotdataOzoneDayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotOzoneDay8HoursData(userdetails: PlotdataOzoneDayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotCOLastDayData(userdetails: PlotdataCarbonMonoxideLastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCOLastWeekData(userdetails: PlotdataCarbonMonoxideLastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotCOLastMonthData(userdetails: PlotdataCarbonMonoxideLastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotCOLast1MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCOLast2MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCOLast5MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCOLast10MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCOLast30MinuteDayData(userdetails: PlotdataCarbonMonoxideWeekReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCOLast60MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotCOLast2HoursDayData(userdetails: PlotdataCarbonMonoxideDayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    func postPlotCOLast8HoursDayData(userdetails: PlotdataCarbonMonoxideDayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    func postPlotCH2OLastDayData(userdetails: Plotdatach2onLastDayRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLastWeekData(userdetails: Plotdatach2onLastWeekRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLastMonthData(userdetails: Plotdatach2onLastMonthRequest,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLast1MinuteDayData(userdetails: Plotdatach2onDayReqFor1Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func postPlotCH2OLast2MinuteDayData(userdetails: Plotdatach2onDayReqFor2Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLast5MinuteDayData(userdetails: Plotdatach2onDayReqFor5Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLast10MinuteDayData(userdetails: Plotdatach2onDayReqFor10Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLast30MinuteDayData(userdetails: Plotch2onDayReqFor30Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLast60MinuteDayData(userdetails: Plotdatach2onDayReqFor60Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLast2HOURSDayData(userdetails: Plotdatach2onDayReqFor120Minute,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    func postPlotCH2OLast8HOURSDayData(userdetails: Plotdatach2onDayReqFor8Hours,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    
    
    
    
    
    func postPloteCo2_nData(userdetails: PlotdataReqeCo2_n,completion:@escaping (_ success: Bool,_ object:String,_ Alert : String?,_ resp:Any?) -> ())
    {
        let Url = URL1
        let myUrl = Foundation.URL(string: Url)!
        var request = URLRequest(url:myUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "content-type")

        do {
            let jsonEncoder = JSONEncoder()
            let requestModelObj = try jsonEncoder.encode(userdetails)
            let codedRequest = String(data: requestModelObj, encoding: .utf8)
            print(codedRequest!)
            request.httpBody = codedRequest?.data(using:.utf8)
            AF.request(request).validate().responseJSON { response in
                print(response)
                switch response.result {
                case .success( _):
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseOBJ = try jsonDecoder.decode([PlotData].self, from: response.data!)
                            completion(true, "Successfull" , "true",responseOBJ)
                        }catch{}

                case .failure( _):
                    completion(false, "" , "",nil)
                }
            }
        } catch {
            print("Unexpected error: \(error).")
        }
    }
}


struct PlotData : Codable {
    let time : String?
    let measure_name : String?
    let device_id : String?
    let p_no : String?
    let measureValueString : String?
    let measureValue : String?

    enum CodingKeys: String, CodingKey {

        case time = "time"
        case measure_name = "measure_name"
        case device_id = "device_id"
        case p_no = "p_no"
        case measureValueString = "measureValueString"
        case measureValue = "measureValue"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        time = try values.decodeIfPresent(String.self, forKey: .time)
        measure_name = try values.decodeIfPresent(String.self, forKey: .measure_name)
        device_id = try values.decodeIfPresent(String.self, forKey: .device_id)
        p_no = try values.decodeIfPresent(String.self, forKey: .p_no)
        measureValueString = try values.decodeIfPresent(String.self, forKey: .measureValueString)
        measureValue = try values.decodeIfPresent(String.self, forKey: .measureValue)
    }

}



// Lux Chart Request week


struct PlotdataLuxWeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataLuxWeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataLuxWeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataLuxWeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataLuxWeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataLuxWeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataLuxWeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "120"
      self.times = "minute"

    }

}
struct PlotdataLuxWeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "480"
      self.times = "minute"

    }

}
struct PlotdataLuxLastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
      

    }

}



// Plot data lux day data

struct PlotdataLuxDayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataLuxDayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataLuxDayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataDayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataLuxDayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataLuxDayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
       self.limit = "120"
      self.times = "minute"

    }

}


struct PlotdataLuxDayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataLuxLastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "lux1"
      

    }

}
// Plot data lux Month data

struct PlotdataLuxMonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataLuxMonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataLuxMonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataLuxMonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataMonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataLuxMonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataLuxMonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataLuxMonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
       self.limit = "480"
      self.times = "minute"

    }

}



struct PlotdataLuxLastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "lux1"
      

    }

}
struct PlotdataReq : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        
        self.measureName = "lux1"
        self.self.limit = "100"
    }

}
struct PlotdataReqHumidity : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
    }
    
    init()
    {
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.measureName = "hum1"
        self.self.limit = "100"
    }

}

// Plot data for Relative humidity

struct PlotdataHumidityWeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "hum1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataHumidityWeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "hum1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataHumidityWeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "hum1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataHumidityWeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "lux1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataHumidityWeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "hum1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataHumidityWeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "hum1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataHumidityWeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "hum1"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataHumidityWeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "hum1"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataHumidityLastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "hum1"
      

    }

}
struct PlotdataHumidityLastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
      

    }

}

// Plot data Humidity day data

struct PlotdataHumidityDayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataHumidityDayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataHumidityDayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataHumidityDayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataHumidityDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataHumidityDayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataHumidityDayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataHumidityDayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "hum1"
       self.limit = "480"
      self.times = "minute"

    }

}



// Plot data Humidity Month data

struct PlotdataHumidityMonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataHumidityMonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataHumidityMonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataHumidityMonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataHumidityMonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataHumidityMonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataHumidityMonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataHumidityMonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataHumidityLastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "hum1"
      

    }

}





struct PlotdataReqpm1n : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        
        case measureName = "measureName"
        case limit = "limit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
    }
    
    init()
    {
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.measureName = "pm1n"
        self.self.limit = "100"
    }

}


// Graph ploting for  PM10
struct PlotdataPM1WeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM1WeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM1WeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM1WeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataPM1WeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM1WeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPM1WeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataPM1WeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataPM1LastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm1n"
      

    }

}
struct PlotdataPM1LastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
      

    }

}

// Plot data Humidity day data

struct PlotdataPM1DayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM1DayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM1DayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM1DayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataPM1DayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM1DayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPM1DayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataPM1DayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm1n"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataPM1MonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM1MonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM1MonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM1MonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataPM1MonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM1MonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPM1MonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataPM1MonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataPM1LastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm1n"
      

    }

}








struct PlotdataReqpm10n : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
    }
    
    init()
    {
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.measureName = "pm10n"
        self.self.limit = "100"
    }

}


// Graph ploting for  PM1
struct PlotdataPM10WeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM10WeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM10WeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM10WeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataPM10WeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM10WeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPM10WeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataPM10WeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataPM10LastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm10n"
      

    }

}
struct PlotdataPM10LastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
      

    }

}

// Plot data Humidity day data

struct PlotdataPM10DayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM10DayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM10DayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM10DayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataPM10DayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM10DayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPM10DayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataPM10DayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm10n"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataPM10MonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM10MonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM10MonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM10MonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataPM10MonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM10MonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPM10MonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataPM10MonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataPM10LastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm10n"
      

    }

}



struct PlotdataReqVOC : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
    }
    
    init()
    {
        if self.sharedData.getDefoultDeviceID().count == 0 
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.measureName = "voc1"
        self.self.limit = "100"
    }

}

struct PlotdataVOCWeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataVOCWeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataVOCWeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataVOCWeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataVOCWeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataVOCWeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataVOCWeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataVOCWeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataVOCLastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "voc1"
      

    }

}
struct PlotdataVOCLastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
      

    }

}

// Plot data Humidity day data

struct PlotdataVOCDayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataVOCDayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataVOCDayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataVOCDayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataVOCDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataVOCDayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataVOCDayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataVOCDayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "voc1"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataVOCMonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataVOCMonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataVOCMonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataVOCMonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataVOCMonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataVOCMonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataVOCMonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataVOCMonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataVOCLastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "voc1"
      

    }

}







struct PlotdataReqTeperature : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
    }
    
    init()
    {
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.measureName = "temp1"
        self.self.limit = "100"
    }

}


struct PlotdataTempWeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataTempWeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataTempWeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataTempWeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataTempWeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataTempWeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataTempWeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataTempWeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataTempLastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "temp1"
      

    }

}
struct PlotdataTempLastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
      

    }

}

// Plot data Humidity day data

struct PlotdataTempDayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataTempDayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataTempDayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataTempDayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataTempDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataTempDayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataTempDayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataTempDayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "temp1"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataTempMonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataTempMonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataTempMonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataTempMonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataTempMonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataTempMonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataTempMonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataTempMonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataTempLastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "temp1"
      

    }

}









struct PlotdataReqCo2n : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
    }
    
    init()
    {
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.measureName = "co2n"
        self.self.limit = "100"
    }
}




struct PlotdataCO2WeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataCO2WeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataCO2WeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataCO2WeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataCO2WeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataCO2WeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataCO2WeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataCO2WeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataCO2LastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "co2n"
      

    }

}
struct PlotdataCO2LastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
      

    }

}

// Plot data Humidity day data

struct PlotdataCO2DayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataCO2DayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataCO2DayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataCO2DayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotCO2DayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataCO2DayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataCO2DayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataCO2DayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "co2n"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataCO2MonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataCO2MonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataCO2MonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataCO2MonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataCO2MonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataCo2MonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataCO2MonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataCO2MonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataCO2LastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "co2n"
      

    }

}










    struct PlotdataReqpm2_5n : Codable {
        var deviceId : String?
        let measureName : String?
        let limit : String?
        let sharedData = SharedDefault()

        enum CodingKeys: String, CodingKey {

            case deviceId = "deviceId"
            case measureName = "measureName"
            case limit = "limit"
        }

        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
            measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
            limit = try values.decodeIfPresent(String.self, forKey: .limit)
        }
        
        init()
        {
            if self.sharedData.getDefoultDeviceID().count == 0
            {
                self.deviceId = "2103010006"
            }
            else
            {
                self.deviceId = self.sharedData.getDefoultDeviceID()

            }
            
//            self.deviceId = "2103010006"

            self.measureName = "pm2_5n"
            self.self.limit = "100"
        }

}



struct PlotdataPM2_5WeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM2_5WeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM2_5WeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM2_5WeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataPM2_5WeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM2_5WeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPM2_5WeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataPM2_5WeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataPM2_5LastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "pm2_5n"
      

    }

}
struct PlotdataPM2_5LastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
      

    }

}

// Plot data Humidity day data

struct PlotdataPM2_5DayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM2_5DayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM2_5DayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM2_5DayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotPM2_5TempDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM2_5DayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPM2_5DayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataPM2_5DayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "pm2_5n"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataPM2_5MonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataPM2_5MonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataPM2_5MonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataPM2_5MonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataPM2_5MonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataPM2_5MonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataPm2_5MonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataPM2_5MonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataPM2_5LastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "pm2_5n"
      

    }

}
















struct PlotdataReqeCo2_n : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
    }
    
    init()
    {
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.measureName = "eco2n"
        self.self.limit = "100"
    }

}


struct PlotdataEC02WeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataECO2WeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataECO2WeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataECO2WeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataECO2WeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataECO2WeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataECO2WeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataECO2WeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataECO2LastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "eco2n"
      

    }

}
struct PlotdataECO2LastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
      

    }

}

// Plot data Humidity day data

struct PlotdataECO2DayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataECO2DayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataECO2DayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataECO2DayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotECO2TempDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataECO2DayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataECO2DayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataECO2DayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "eco2n"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataECO2MonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataECO2MonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataECO2MonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataECO2MonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataECO2MonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataECO2MonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataECO2MonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataECO2MonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataECO2LastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "eco2n"
      

    }

}



// Req Parameter of "CO"


struct PlotdataCarbonMonoxideWeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "con"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataCarbon_Monoxide2WeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "con"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideWeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "con"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideWeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "con"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideWeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideWeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "con"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideWeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "con"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataCArbonMnoxideWeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "con"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataCarbonMonoxideLastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "con"
      

    }

}
struct PlotdataCarbonMonoxideLastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
      

    }

}

// Plot data Humidity day data

struct PlotdataCarbonMonoxideDayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideDayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideDayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideDayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotCarbonMonoxideTempDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideDayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideDayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataCarbonMonoxideDayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "con"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataCarbonMonoxideMonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideMonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideMonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideMonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideMonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideMonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataCarbonMonoxideMonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataCarbonMonoxideMonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataCarbonMonoxideLastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "con"
      

    }

}

// Req Parameter of "Ozone"


struct PlotdataOzoneWeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataOzoneWeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataOzoneWeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataOzoneWeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataOzoneWeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataOzoneWeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataOzoneWeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataOzoneWeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
       self.limit = "480"
      self.times = "minute"

    }

}

struct PlotdataOzoneLastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "o3n"
      

    }

}
struct PlotdataOzoneLastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
      

    }

}

// Plot data Humidity day data

struct PlotdataOzoneDayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataOzoneDayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataOzoneDayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataOzoneDayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotOzoneDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataOzoneDayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataOzoneDayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
       self.limit = "120"
      self.times = "minute"

    }

}

struct PlotdataOzoneDayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "o3n"
       self.limit = "480"
      self.times = "minute"

    }

}




struct PlotdataOzoneMonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
       self.limit = "1"
      self.times = "minute"

    }

}
struct PlotdataOzoneMonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
       self.limit = "2"
      self.times = "minute"

    }

}
struct PlotdataOzoneMonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
       self.limit = "5"
      self.times = "minute"

    }

}
struct PlotdataOzoneMonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
       self.limit = "10"
      self.times = "minute"

    }

}
struct PlotdataOzoneMonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
       self.limit = "30"
      self.times = "minute"

    }

}
struct PlotdataOzoneMonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
       self.limit = "60"
      self.times = "minute"

    }

}
struct PlotdataOzoneMonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
       self.limit = "120"
      self.times = "minute"

    }

}



struct PlotdataOzoneMonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
       self.limit = "480"
      self.times = "minute"

    }

}






struct PlotdataOzoneLastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "o3n"
      

    }

}

// Req Parameter of "Formaldihyde"


struct Plotdatach2onWeekReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
       self.limit = "1"
      self.times = "minute"

    }

}
struct Plotdatach2onWeekReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
       self.limit = "2"
      self.times = "minute"

    }

}
struct Plotdatach2onWeekReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
       self.limit = "5"
      self.times = "minute"

    }

}
struct Plotdatach2onWeekReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
       self.limit = "10"
      self.times = "minute"

    }

}
struct Plotdatach2onWeekReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
       self.limit = "30"
      self.times = "minute"

    }

}
struct Plotdatach2onWeekReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
       self.limit = "60"
      self.times = "minute"

    }

}
struct Plotdatach2onWeekReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
       self.limit = "120"
      self.times = "minute"

    }

}

struct Plotdatach2oneWeekReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
       self.limit = "480"
      self.times = "minute"

    }

}

struct Plotdatach2onLastWeekRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "week"
        self.measureName = "ch2on"
      

    }

}
struct Plotdatach2onLastDayRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
      

    }

}

// Plot data Humidity day data

struct Plotdatach2onDayReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
       self.limit = "1"
      self.times = "minute"

    }

}
struct Plotdatach2onDayReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
       self.limit = "2"
      self.times = "minute"

    }

}
struct Plotdatach2onDayReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
       self.limit = "5"
      self.times = "minute"

    }

}
struct Plotdatach2onDayReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
       self.limit = "10"
      self.times = "minute"

    }

}
struct Plotch2onDayReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
       self.limit = "30"
      self.times = "minute"

    }

}
struct Plotdatach2onDayReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
       self.limit = "60"
      self.times = "minute"

    }

}
struct Plotdatach2onDayReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
       self.limit = "120"
      self.times = "minute"

    }

}

struct Plotdatach2onDayReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "day"
        self.measureName = "ch2on"
       self.limit = "480"
      self.times = "minute"

    }

}




struct Plotdatach2onMonthReqFor1Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
       self.limit = "1"
      self.times = "minute"

    }

}
struct Plotdatach2onMonthReqFor2Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
       self.limit = "2"
      self.times = "minute"

    }

}
struct Plotdatach2onMonthReqFor5Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
       self.limit = "5"
      self.times = "minute"

    }

}
struct Plotdatach2onMonthReqFor10Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
       self.limit = "10"
      self.times = "minute"

    }

}
struct Plotdatach2onMonthReqFor30Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
       self.limit = "30"
      self.times = "minute"

    }

}
struct Plotdatach2onMonthReqFor60Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
       self.limit = "60"
      self.times = "minute"

    }

}
struct Plotdatach2onMonthReqFor120Minute : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
       self.limit = "120"
      self.times = "minute"

    }

}



struct Plotdatach2onMonthReqFor8Hours : Codable {
    var deviceId : String?
    let measureName : String?
    let limit : String?
    let period : String?
    let times : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case limit = "limit"
        case period = "period"
        case times = "time"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        limit = try values.decodeIfPresent(String.self, forKey: .limit)
        period = try values.decodeIfPresent(String.self, forKey: .period)
        times = try values.decodeIfPresent(String.self, forKey: .times)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
       self.limit = "480"
      self.times = "minute"

    }

}






struct Plotdatach2onLastMonthRequest : Codable {
    var deviceId : String?
    let measureName : String?
    let period : String?

    let sharedData = SharedDefault()

    enum CodingKeys: String, CodingKey {

        case deviceId = "deviceId"
        case measureName = "measureName"
        case period = "period"

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
        measureName = try values.decodeIfPresent(String.self, forKey: .measureName)
        period = try values.decodeIfPresent(String.self, forKey: .period)

    }
    
    init()
    {
        
        
        if self.sharedData.getDefoultDeviceID().count == 0
        {
            self.deviceId = "2103010006"
        }
        else
        {
            self.deviceId = self.sharedData.getDefoultDeviceID()

        }
        
//        self.deviceId = "2103010006"

        self.period = "month"
        self.measureName = "ch2on"
      

    }

}


