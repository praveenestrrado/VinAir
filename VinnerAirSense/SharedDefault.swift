//
//  SharedDefault.swift
//  iDesigner
//
//  Created by Softnotions Technologies Pvt Ltd on 2/19/20.
//  Copyright © 2020 Softnotions Technologies Pvt Ltd. All rights reserved.
//

import UIKit

class SharedDefault: UIViewController {
   
    
    func setAppName(loginStatus:String)
    {
        UserDefaults.standard.set(loginStatus, forKey: "AppName")
        UserDefaults.standard.synchronize()
    }
    func getAppName() -> String {
        return UserDefaults.standard.string(forKey: "AppName")!
    }
    
    
    func setLoginStatus(loginStatus:Bool)
    {
        UserDefaults.standard.set(loginStatus, forKey: "LoginStatus")
        UserDefaults.standard.synchronize()
    }
    
    func getLoginStatus() -> Bool {
        return UserDefaults.standard.bool(forKey: "LoginStatus")
    }
    
    func setPhoneNumber(loginStatus:String)
    {
        UserDefaults.standard.set(loginStatus, forKey: "PhoneNumber")
        UserDefaults.standard.synchronize()
    }
    func getPhoneNumber()-> Any
    {
        return UserDefaults.standard.value(forKey: "PhoneNumber")!
        
    }
    
    func setAccessToken(token:String)
    {
        UserDefaults.standard.set(token, forKey: "access_token")
        UserDefaults.standard.synchronize()
    }
    func getAccessToken()-> String
    {
        return UserDefaults.standard.value(forKey: "access_token")! as! String
        
    }
    func clearAccessToken()
    {
        UserDefaults.standard.removeObject(forKey: "access_token")
        UserDefaults.standard.synchronize()
    }
    
 
    func setCountyCode(token:String)
    {
        UserDefaults.standard.set(token, forKey: "country_code")
        UserDefaults.standard.synchronize()
    }
    func getCountyCode()-> String
    {
        return UserDefaults.standard.value(forKey: "country_code")! as! String
        
    }
    
    func setCountyImg(token:String)
    {
        UserDefaults.standard.set(token, forKey: "country_img")
        UserDefaults.standard.synchronize()
    }
    func getCountyImg()-> String
    {
        return UserDefaults.standard.value(forKey: "country_img")! as! String
        
    }
    
    func setCountyName(token:String)
    {
        UserDefaults.standard.set(token, forKey: "country_name")
        UserDefaults.standard.synchronize()
    }
    func getCountyName()-> String
    {
        return UserDefaults.standard.value(forKey: "country_name")! as! String
        
    }
    
  
    
    
    func setEmailID(loginStatus:String)
    {
        UserDefaults.standard.set(loginStatus, forKey: "email")
        UserDefaults.standard.synchronize()
    }
    func getEmailID() -> String {
        return UserDefaults.standard.string(forKey: "email")!
    }
    
    func setName(loginStatus:String)
    {
        UserDefaults.standard.set(loginStatus, forKey: "name")
        UserDefaults.standard.synchronize()
    }
    func getName() -> String {
        return UserDefaults.standard.string(forKey: "name")!
    }
    
    
    func setDefoultDeviceID(token:String)
    {
        UserDefaults.standard.set(token, forKey: "DefoultDeviceID")
        UserDefaults.standard.synchronize()
    }
    func getDefoultDeviceID()-> String
    {
        return UserDefaults.standard.value(forKey: "DefoultDeviceID")! as! String
        
    }
    
    func setDefoultDeviceName(token:String)
    {
        UserDefaults.standard.set(token, forKey: "DefoultDeviceName")
        UserDefaults.standard.synchronize()
    }
    func getDefoultDeviceName()-> String
    {
        return UserDefaults.standard.value(forKey: "DefoultDeviceName")! as! String
        
    }
    func setGraphGetTimingData(token:String)
    {
        UserDefaults.standard.set(token, forKey: "TimingData")
        UserDefaults.standard.synchronize()
    }
    func getGraphGetTimingData()-> String
    {
        return UserDefaults.standard.value(forKey: "TimingData")! as! String
        
    }
    func setGraphStatus(token:String)
    {
        UserDefaults.standard.set(token, forKey: "GraphStatus")
        UserDefaults.standard.synchronize()
    }
    func getGraphGraphStatus()-> String
    {
        return UserDefaults.standard.value(forKey: "GraphStatus")! as! String
        
    }
    func clearFcmToken()
       {
           UserDefaults.standard.removeObject(forKey: "fcm_token")
           UserDefaults.standard.synchronize()
       }
    func setFcmToken(token:String)
       {
           UserDefaults.standard.set(token, forKey: "fcm_token")
           UserDefaults.standard.synchronize()
       }
       func getFcmToken()-> String
       {
           return UserDefaults.standard.value(forKey: "fcm_token")! as! String
           
       }
}
