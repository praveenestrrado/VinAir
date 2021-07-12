//
//  Constants.swift
//  Vinner
//
//  Created by softnotions on 17/07/20.
//  Copyright © 2020 softnotions. All rights reserved.
//

import UIKit

class Constants: NSObject {
    static let connectivityErrorMsg = "Please check internet connection"
    static let appName = "VinAir"
    static let logoutMSG = "Are you sure you want to logout"
    static let removeCartMSG = "Your cart having products, do you wish to checkout?"
    static let signInMessage = "Please Sign-in for adding products to cart."
    static let signInMessage2 = "Please Sign-in to buy products."

    static let ReqDemoMessage = "Please Sign-in to request for demo."
    static let ReqServiceMessage = "Please Sign-in to request for a service."
    static let MoreMessage = "Please Sign-in to view more details."
    static let bagInfo = "Please Sign-in to view the products added in bag."

    static let cartClearInfo = "Please sign in"

    static let deleteAddressMSG = "Do you want to delete the address"
    // MARK:Login Page
    static let btnTextColorWhite =  UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    static let btnBGColor =  UIColor(red: 59.0/255.0, green: 160.0/255.0, blue: 13.0/255.0, alpha: 1.0)
    static let txtfieldBGColor =  UIColor(red: 227.0/255.0, green: 243.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    static let pageTitleTextColor =  UIColor(red: 26.0/255.0, green: 98.0/255.0, blue: 164.0/255.0, alpha: 1.0)
    static let txtfieldPlaceHolderColor =  UIColor(red: 26.0/255.0, green: 98.0/255.0, blue: 164.0/255.0, alpha: 1.0)
    static let TxtPhoneEmpty = "Enter Phone Number"
    // MARK:Verify OTP Page
    static let OtpHeaderTextColor =  UIColor(red: 5.0/255.0, green: 5.0/255.0, blue: 5.0/255.0, alpha: 1.0)
    static let OtpSubTitleTextColor =  UIColor(red:117.0/255.0, green: 117.0/255.0, blue: 117.0/255.0, alpha: 1.0)
    static let optTextfieldLineColor =  UIColor(red: 204.0/255.0, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1.0)
    static let otpEmptyMsg = "Enter OTP"
    // MARK:Home Page
    static let borderColor =  UIColor(red: 221.0/255.0, green: 221.0/255.0, blue: 221.0/255.0, alpha: 1.0)
    static let pdtNameTxtColor =  UIColor(red: 115.0/255.0, green: 115.0/255.0, blue: 115.0/255.0, alpha: 1.0)
    static let qtyTxtColor =  UIColor(red: 149.0/255.0, green: 149.0/255.0, blue: 149.0/255.0, alpha: 1.0)
    static let amtTxtColor =  UIColor(red: 86.0/255.0, green: 125.0/255.0, blue: 39.0/255.0, alpha: 1.0)
    static let categoryTxtColor =  UIColor(red: 116.0/255.0, green: 116.0/255.0, blue: 116.0/255.0, alpha: 1.0)
    
    static let placeholderColor =  UIColor(red: 116.0/255.0, green: 116.0/255.0, blue: 116.0/255.0, alpha: 1.0)
    
    // MARK:URL's
//    static let baseURL = "http://estrradoweb.com/vinairsense/api/customer/"// stagging
    
    static let termConditionURL = "https://vinshopify.com/home/legal/terms_conditions"
    
    static let baseURL = "https://vinshopify.com/vinairsense/api/customer/"// Live

    static let saveReviewUrl = "saveReview"
    static let viewReviewUrl = "viewReview"
    static let versionURL = "version"
    static let registerURL = "signup"
    
    static let SignInURL = "signin"
    static let logOutURL = "signout"

    static let roomURL = "rooms"
    static let addDeviceURL = "add/device"
    static let typeURL = "types"
    
    static let profileURL = "profile"
    static let colorURL = "sensor/colors"
    static let profileUpdateURL = "update/profile"
    static let dashboardURL = "dashboard"
    static let addRoom = "add/room"
static let deviceList = "device/list"
    
    static let featured_product = "featured_product"
    static let productDetailURL = "product_detail"
    static let homeURL = "homeIos"
   

    static let countryURL = "countries"
   
    static let signOutURL = "signout"
    
    static let profileDetailURL = "profile"
   

    // MARK:Add New Address
    static let addTypeEmtyMsg = "Enter address type."
    static let flatNoEmtyMsg = "Enter house number."
    static let zipCodeEmtyMsg = "Enter zipcode."
    static let roadEmtyMsg = "Enter road name."
    static let landmarkEmtyMsg = "Enter landmark."
    
    // MARK:Req Demo
    static let demoEmptyNameMsg = "Enter name."
    static let demoEmptyAddrMsg = "Enter address."
    static let demoEmptyCityMsg = "Enter city."
    static let demoEmptyCountryMsg = "Enter country."
    static let demoEmptyEmailMsg = "Enter email."
    static let demoEmptyLocationMsg = "Enter location."
    static let demoEmptyTypeMsg = "Enter type."

    static let demoEmptyPhMsg = "Enter phone number."
    static let demoEmptyDateMsg = "Enter date."
    static let demoEmptyTimeMsg = "Enter time."
    static let demoEmptyDemoMsg = "Enter request demo."
    static let demoEmptyPdtMsg = "Select product for demo."
    
    // MARK:Cart
    static let pdtRepeatMsg = "Product already added to cart."
    static let pdtAddSuccessMsg = "Product added to cart successfully."
    // MARK:Request Demo & Request Service
    static let emptyCityMsg = "Enter city."
    static let emptyCountryMsg = "Enter country."
    static let emptyMobileMsg = "Enter mobile number."
    static let emptyDateMsg = "Select date."
    static let emptyTimeMsg = "Select time."
    static let emptyRemarkMsg = "Enter remarks."
    static let emptyDemoMsg = "Enter demo."
    
    // MARK:Request Service
    
    // MARK:Verify OTP
    static let emptyOTPMsg = "Enter OTP."
    // MARK:Validate Phone
    static let emptyPhoneMsg = "Enter phone number."
    static let phoneLengthMsg = "Mobile number must be at least 7 characters in length."
    static let phoneLengthMsg2 = "Mobile number must be 7-15 digits"
    static let emptyLocation = "Enter Location."
    static let emptyCountry = "Enter Country"
    static let emptyPWord = "Enter Password."
    static let emptyUserName = "Enter UserName."

    // MARK:Register
    static let usernameEmptyMsg = "Enter name."
    static let emailEmptyMsg = "Enter emailid."
    static let emptyPWD = "Enter password."
    static let emptyCPWD = "Enter confirm password."
    static let emptyMobile = "Enter mobile number."
    static let confirmPwdMSG = "Password and confirm password should me same."
    static let invalidEmailMSG = "Enter a valid email id."
    
    // MARK:Update Profile
    static let profileNameEmptyMsg = "Enter name."
    static let profileHNameEmptyMsg = "Enter house name."
    static let profileAreaEmptyMsg = "Enter area."
    static let profilePostEmptyMsg = "Enter post."
    static let profileStateEmptyMsg = "Enter state."
    static let profileMobileEmptyMsg = "Enter mobile."
    static let profileEmailEmptyMsg = "Enter email."
    static let profileDistEmptyMsg = "Enter district."
    
    
    // MARK:Save Review

    static let saveReviewTitleEmtyMessage = "Please enter the review title."
    static let saveReviewEmtyMessage = "Please enter your review."
    static let saveRatingEmptyMessage = "Please choose your rating for this product"

}
