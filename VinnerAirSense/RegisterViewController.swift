//
//  RegisterViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 14/01/21.
//

import UIKit
import iOSDropDown
import Alamofire
import SwiftyJSON

class RegisterViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtType: DropDown!
    @IBOutlet weak var txtConfirmPAssword: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtLocation: UITextField!
    @IBOutlet weak var txtSelectedCountry: DropDown!
    @IBOutlet weak var txtEmailId: UITextField!
    @IBOutlet weak var tvtName: UITextField!
    @IBOutlet weak var imgRegister: UIImageView!
    @IBOutlet weak var lblRegister: UILabel!
    var itemsNames = ["AE","BH","SA"]
     var itemsImages = ["uae","baharin","saudi"]
      var itemsCode = ["+971","+973","+966"]
    let sharedData = SharedDefault()
    var typeNameArray = [String]()
    var selectedTypeID:Int?
    
    var registerResponseModel: RegistrationResponseModel?
    var typeResponseModel: TypeResponseModel?
    
    var countryListResponseModel: CountryResponseModel?

    var countryArray = [country_list]()
    var selectedCountryID:Int?
    var countryNameArray = [String]()

    var typesArray = [Types]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtSelectedCountry.textAlignment = .right
        txtSelectedCountry.placeholder = "Region"
        txtSelectedCountry.checkMarkEnabled = false
        let customFont:UIFont = UIFont.init(name: (txtSelectedCountry.font?.fontName)!, size: 15.0)!

        txtSelectedCountry.font = customFont
        txtSelectedCountry.textAlignment = .left
        txtSelectedCountry.backgroundColor = UIColor.clear
        
        
        if (UserDefaults.standard.value(forKey: "location") != nil)
        {
            txtLocation.text = (UserDefaults.standard.value(forKey: "location") as! String)

        }

        self.GetCountryList()
        self.GetTypeData()
        
       
//        txtSelectedCountry.optionImageArray = self.itemsImages
        
        
        txtSelectedCountry.didSelect{(selectedText , index ,id) in
            //self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
            print("selectedText ----- ",selectedText)
            
            self.txtSelectedCountry.text = selectedText
            
            self.selectedCountryID = self.countryArray[index].id

            
            self.sharedData.setCountyCode(token: String(self.selectedCountryID!))
//            self.sharedData.setCountyName(token: self.itemsNames[index])
            
        }
        
        
        
        
        txtType.didSelect{(selectedText , index ,id) in
            //self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
            print("selectedText ----- ",selectedText)
            
            self.txtType.text = selectedText
            
            self.selectedTypeID = self.typesArray[index].id
            
            print("selected type id",self.selectedTypeID!)
        }
        
    }
    
    
    @IBAction func ActionBack(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func ActionRegister(_ sender: Any)
    {
        //let next = self.storyboard?.instantiateViewController(withIdentifier: "tabbar") as! TabBarController
        //  self.navigationController?.pushViewController(next, animated: true)
        print("valid ======--------> ",txtEmailId.text!.isValidEmail())
        if Reachability.isConnectedToNetwork() {
            if tvtName.text!.count<=0 {
                self.showToast(message:Constants.usernameEmptyMsg)
            }
            else  if txtEmailId.text!.count<=0 {
                self.showToast(message:Constants.emailEmptyMsg)
            }
            else  if txtPassword.text!.count<=0 {
                self.showToast(message:Constants.emptyPWD)
            }
            else  if txtConfirmPAssword.text!.count<=0 {
                self.showToast(message:Constants.emptyCPWD)
            }
            else  if txtSelectedCountry.text!.count<=0 {
                self.showToast(message:Constants.emptyCountry)
            }
            
            
            if txtLocation.text!.count<=0 {
                self.showToast(message:Constants.emptyLocation)
            }
            else if txtType.text!.count <= 0
            {
                self.showToast(message:"Please select type")
            }
            
            else {
                if !(txtEmailId.text!.isValidEmail()) {
                    self.showToast(message:Constants.invalidEmailMSG)
                    return
                }
                if txtConfirmPAssword.text! != txtPassword.text! {
                    self.showToast(message:Constants.confirmPwdMSG)
                    return
                }
                else {
                    self.registerNewUser()
                   
                }
                
            }
            
        }
        else {
            self.showToast(message:Constants.connectivityErrorMsg)
        }
        
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func registerNewUser()
    {
     
        self.view.activityStartAnimating()
        
        var postDict = Dictionary<String,String>()
     postDict = ["name":tvtName.text!,
                 "email":txtEmailId.text!,
                 "country":self.sharedData.getCountyCode(),
                 "location":txtLocation.text!,
                 "password":txtPassword.text!,
                 "type": String(self.selectedTypeID!),
                 "confirm_password":txtConfirmPAssword.text!

        ]
        
        print("PostData: ",postDict)
        let loginURL = Constants.baseURL+Constants.registerURL
        print("loginURL",loginURL)
        
        AF.request(loginURL, method: .post, parameters: postDict, encoding: URLEncoding.default, headers: nil).responseJSON { (data) in
            print("Response:***:",data.description)
            
            switch (data.result) {
            case .failure(let error) :
                self.view.activityStopAnimating()
               
                if error._code == NSURLErrorTimedOut {
                    self.showToast(message: "Request timed out! Please try again!")
                }
                else if error._code == 4 {
                    self.showToast(message: "Internal server error! Please try again!")
                }
                else if error._code == -1003 {
                    self.showToast(message: "Server error! Please contact support!")
                }
            case .success :
                do {
                    
                    let response = JSON(data.data!)
                    self.registerResponseModel = RegistrationResponseModel(response)
                    
                    let statusCode = Int((self.registerResponseModel?.httpcode)!)
                    if statusCode == 200{
                        self.view.activityStopAnimating()

                     self.showToast(message: (self.registerResponseModel?.message)!)
                     DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                         
                        let next = self.storyboard?.instantiateViewController(withIdentifier: "SignInNewViewController") as! SignInNewViewController
                        self.navigationController?.pushViewController(next, animated: false)
                        
                     }
                     
                    }
                    if statusCode == 400{
                        
                     self.showToast(message: (self.registerResponseModel?.message)!)
                    }
                    
                    
                    self.view.activityStopAnimating()
                    
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }
    
    
    
    
    
    func GetTypeData()
    {
     
        self.view.activityStartAnimating()
        
      
        let loginURL = Constants.baseURL+Constants.typeURL
        print("loginURL",loginURL)
        
        AF.request(loginURL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (data) in
            print("Response:***:",data.description)
            
            switch (data.result) {
            case .failure(let error) :
                self.view.activityStopAnimating()
               
                if error._code == NSURLErrorTimedOut {
                    self.showToast(message: "Request timed out! Please try again!")
                }
                else if error._code == 4 {
                    self.showToast(message: "Internal server error! Please try again!")
                }
                else if error._code == -1003 {
                    self.showToast(message: "Server error! Please contact support!")
                }
            case .success :
                do {
                    
                    let response = JSON(data.data!)
                    self.typeResponseModel = TypeResponseModel(response)
                    
                    let statusCode = Int((self.typeResponseModel?.httpcode)!)
                    if statusCode == 200{
                        self.view.activityStopAnimating()

                   
                        self.typesArray = (self.typeResponseModel?.typesdata?.types)!
                        
                        

                        for item in self.typesArray
                        {
                            
                            self.typeNameArray.append(item.name!)
                            
                            self.txtType.optionIds?.append(item.id!)

                        }
                        
                        
                        
                        self.typeNameArray =  self.typeNameArray.sorted { $0.localizedCaseInsensitiveCompare($1) == ComparisonResult.orderedAscending }

                        self.txtType.optionArray = self.typeNameArray
                        
                        
                        
                        
                    }
                    if statusCode == 400{
                        
                     self.showToast(message: (self.typeResponseModel?.message)!)
                    }
                    
                    
                    self.view.activityStopAnimating()
                    
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }



    func GetCountryList()
    {
     
        self.view.activityStartAnimating()
        
      
        let loginURL = "https://estrradoweb.com/vinairsense/api/countries"
        
        print("loginURL",loginURL)
        
        AF.request(loginURL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (data) in
            print("Response:***:",data.description)
            
            switch (data.result) {
            case .failure(let error) :
                self.view.activityStopAnimating()
               
                if error._code == NSURLErrorTimedOut {
                    self.showToast(message: "Request timed out! Please try again!")
                }
                else if error._code == 4 {
                    self.showToast(message: "Internal server error! Please try again!")
                }
                else if error._code == -1003 {
                    self.showToast(message: "Server error! Please contact support!")
                }
            case .success :
                do {
                    
                    let response = JSON(data.data!)
                    self.countryListResponseModel = CountryResponseModel(response)
                    
                    let statusCode = Int((self.countryListResponseModel?.httpcode)!)
                    if statusCode == 200{
                        self.view.activityStopAnimating()

                   
                        self.countryArray = (self.countryListResponseModel?.country_listdata?.country_lists)!
                        
                        

                        for item in self.countryArray
                        {
                            
                            self.countryNameArray.append(item.name!)
                            
                            self.txtSelectedCountry.optionIds?.append(item.id!)

                        }
                        
                        
                        
                        self.countryNameArray =  self.countryNameArray.sorted { $0.localizedCaseInsensitiveCompare($1) == ComparisonResult.orderedAscending }

                        self.txtSelectedCountry.optionArray = self.countryNameArray
                        
                        
                        
                        
                    }
                    if statusCode == 400{
                        
                     self.showToast(message: (self.countryListResponseModel?.message)!)
                    }
                    
                    
                    self.view.activityStopAnimating()
                    
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }


    
    
    
    
}
