//
//  SignInNewViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 05/02/21.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignInNewViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUserName: UITextField!

    var signInResponseModel: SignInResponseModel?
    var signInData: SignInData?
    var user_data: User_data?


    let sharedData = SharedDefault()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserName.delegate = self
        txtPassword.delegate = self
        // For use in foreground
        
        // Do any additional setup after loading the view.
    }

    @IBAction func ActionSignIn(_ sender: Any)
    {
        if Reachability.isConnectedToNetwork()
        {
            if txtUserName.text!.count<=0
            {
                self.showToast(message:Constants.emptyUserName)
            }
             else if txtPassword.text!.count<=0
            {
                self.showToast(message:Constants.emptyPWord)
            }
            else
            {
                self.SignIn()
            }
           
            
        }
        else
        {
            self.showToast(message:Constants.connectivityErrorMsg)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    func SignIn(){
        self.view.activityStartAnimating()
        
        var postDict = Dictionary<String,String>()

        postDict = [
            "user_name":txtUserName.text!,
            "password":txtPassword.text!,
            "device_token":"778689",
            "os":"ios",

        ]
        
//        postDict = [
//            "user_name":"sherinn@email.com",
//            "password":"111111",
//            "device_token":"778689",
//            "os":"ios",
//
//        ]
        print("PostData: ",postDict)
        let loginURL = Constants.baseURL+Constants.SignInURL
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
                    self.signInResponseModel = SignInResponseModel(response)
                    let statusCode = Int((self.signInResponseModel?.httpcode)!)
                    if statusCode == 200{
                        print("otpRespModel ----- ",self.signInResponseModel!)
                        self.showToast(message: (self.signInResponseModel?.message)!)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0)
                        {
                            
                            self.signInData = self.signInResponseModel?.signInData
                            
                            self.user_data  = self.signInData?.user_data
                            
                            self.sharedData.setAccessToken(token: (self.user_data?.access_token)!)
                            self.sharedData.setEmailID(loginStatus: (self.user_data?.email)!)
                            self.sharedData.setName(loginStatus: (self.user_data?.name)!)
                            
                            self.sharedData.setDefoultDeviceName(token: (self.user_data?.deviceName)!)
                            
                            self.sharedData.setDefoultDeviceID(token: (self.user_data?.deviceId)!)
//                            self.sharedData.setDefoultDeviceID(token: "2103010006")

//                            UserDefaults.standard.setValue(self.user_data?.access_token, forKey: "AccessToken")
//                            UserDefaults.standard.setValue(self.user_data?.name, forKey: "name")
//                            UserDefaults.standard.setValue(self.user_data?.email, forKey: "email")
                            
                            
                            if self.sharedData.getDefoultDeviceName().count > 0
                            {
                                
                                let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                                self.navigationController?.pushViewController(next, animated: false)
                                
                            }
                            else
                            {
                                let next = self.storyboard?.instantiateViewController(withIdentifier: "AddDeviceViewController") as! AddDeviceViewController
                                self.navigationController?.pushViewController(next, animated: false)
                            }
         
                          
                            

                        }
                    }
                    if statusCode == 400{
                        self.showToast(message: (self.signInResponseModel?.message)!)
                    }
                    self.view.activityStopAnimating()
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // use "_"
        textField.resignFirstResponder()
        return true;
    }

    
    @IBAction func ActionBack(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        self.navigationController?.pushViewController(next, animated: false)
        
        
        
        
    }
}
