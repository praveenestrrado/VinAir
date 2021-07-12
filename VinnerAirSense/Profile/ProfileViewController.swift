//
//  ProfileViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 13/02/21.
//

import UIKit
import SDWebImage
import MobileCoreServices
import Alamofire
import SwiftyJSON
import PhotosUI
import Photos
import iOSDropDown

class ProfileViewController: UIViewController,UITextFieldDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var btnProfilePic: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtType: DropDown!
    @IBOutlet weak var txtLocation: UITextField!
    @IBOutlet weak var txtCountry: DropDown!
    
    @IBOutlet var txtStandards: DropDown!
    @IBOutlet var txtTiming: DropDown!
    
    @IBOutlet weak var imgEditProfile: SDAnimatedImageView!

    var itemsNames = ["10 Minutes", "20 Minutes", "40 Minutes","1 Hour"]
    var stnd = ["LEED", "WELL","FITWELL","RESET"]

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtName: UITextField!
    let sharedData = SharedDefault()
    var typeNameArray = [String]()
    var selectedTypeID:Int?
    var selectedStandardID:Int?

    var pUpdateModel:ProfileUpRespModel?

    var registerResponseModel: RegistrationResponseModel?
    var typeResponseModel: TypeResponseModel?
    
    var countryListResponseModel: CountryResponseModel?

    var countryArray = [country_list]()
    var selectedCountryID:Int?
    var countryNameArray = [String]()
    var selectedStandard:Int?

    var typesArray = [Types]()
    var standardsArray = [standardsData]()
    var standardsNameArray = [String]()

    var bSelectedDate :Bool = false
    var firstImgData:String = String()
    var timage = UIImage()
    var profileModel:ProfileModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.GetProfileDetails()
        // Do any additional setup after loading the view.
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(self.openGallery))
//        imgEditProfile.addGestureRecognizer(tap)
//        imgEditProfile.isUserInteractionEnabled = true
//
        if UserDefaults.standard.value(forKey: "Timer") as! String == "60"
        {
            
            txtTiming.text = "1 Minute"

        }
       else if  UserDefaults.standard.value(forKey: "Timer") as! String == "600"
        {
        txtTiming.text = "10 Minutes"

       
        }
        else if UserDefaults.standard.value(forKey: "Timer") as! String == "1200"
        {
            txtTiming.text = "20 Minutes"

            
        }
        else if UserDefaults.standard.value(forKey: "Timer") as! String == "2400"
        {
            txtTiming.text = "40 Minutes"

        }
        
        else if UserDefaults.standard.value(forKey: "Timer") as! String == "3600"
        {
            txtTiming.text = "1 Hour"

          
        }
        txtStandards.optionArray = self.stnd

        imgEditProfile.layer.cornerRadius = imgEditProfile.frame.size.height/2
        txtTiming.optionArray = self.itemsNames
        txtTiming.didSelect{(selectedText , index ,id) in
            //self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
            print("selectedText ----- ",selectedText)
            
            self.txtTiming.text = self.itemsNames[index]
            if selectedText == "10 Minutes"
            {
                UserDefaults.standard.setValue("600", forKey: "Timer")

            }
           else  if selectedText == "20 Minutes"
            {
                UserDefaults.standard.setValue("1200", forKey: "Timer")

            }
            else if selectedText == "40 Minutes"
            {
                UserDefaults.standard.setValue("2400", forKey: "Timer")

            }
            else if selectedText == "1 Hour"
            {
                UserDefaults.standard.setValue("3600", forKey: "Timer")

            }
            
        }
        self.GetTypeData()
        self.GetCountryList()
        
        txtCountry.didSelect{(selectedText , index ,id) in
            //self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
            print("selectedText ----- ",selectedText)
            
            self.txtCountry.text = selectedText
            
            self.selectedCountryID = self.countryArray[index].id

            
            self.sharedData.setCountyCode(token: String(self.selectedCountryID!))
            
            
            
            
            
//            self.sharedData.setCountyName(token: self.itemsNames[index])
            
        }
        
        
        
        txtStandards.didSelect{(selectedText , index ,id) in
            //self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
            print("selectedText ----- ",selectedText)
            self.txtStandards.text = selectedText
            self.selectedStandardID = id
        }
        
        
        txtType.didSelect{(selectedText , index ,id) in
            //self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
            print("selectedText ----- ",selectedText)
            
            self.txtType.text = selectedText
            
            self.selectedTypeID = self.typesArray[index].id
            
            print("selected type id",self.selectedTypeID!)
        }
        if (UserDefaults.standard.value(forKey: "location") != nil)
        {
            txtLocation.text = (UserDefaults.standard.value(forKey: "location") as! String)

        }
    }
    @objc func openGallery()
    {
        print("Tapped on Image")
        self.showAlert()
    }
    @IBAction func ActionProfile(_ sender: Any) {
        
        self.showAlert()

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    //Show alert to selected the media source type.
    func showAlert() {
        
        var alertStyle = UIAlertController.Style.actionSheet
            if (UIDevice.current.userInterfaceIdiom == .pad) {
              alertStyle = UIAlertController.Style.alert
            }

                let alert = UIAlertController(title: "Image Selection", message: "From where you want to pick this image?", preferredStyle: alertStyle)
                alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: {(action: UIAlertAction) in
                    self.getImage(fromSourceType: .camera)
                }))
                alert.addAction(UIAlertAction(title: "Photo Album", style: .default, handler: {(action: UIAlertAction) in
                    self.getImage(fromSourceType: .photoLibrary)
                }))
                alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
                
                
            }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    @IBAction func ActionBack(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: false)
    }
    
    @IBAction func Actionedit(_ sender: Any) {
        
        if !bSelectedDate
        {
//            txtName.text = ""
//            txtEmail.text = ""
//            txtCountry.text = ""
//            txtType.text = ""
//            txtLocation.text = ""
//            txtPassword.text = ""
            
            self.txtStandards.isEnabled = true
            self.txtTiming.isEnabled = true
            btnProfilePic.isEnabled = true
            txtName.isEnabled = true
            txtEmail.isEnabled = true
            txtCountry.isEnabled = true
            txtLocation.isEnabled = true
            txtType.isEnabled = true
            txtPassword.isEnabled = true
            bSelectedDate = true
            txtType.isEnabled = true
            self.btnSave.setTitle("SAVE", for: .normal)
        }
        else if bSelectedDate
        {
            
            
            
            if self.txtName.text?.count == 0
            {
                self.showToast(message: Constants.demoEmptyNameMsg)
            }
            else  if self.txtEmail.text?.count == 0
            {
                self.showToast(message: Constants.demoEmptyEmailMsg)
            }
            else if !(txtEmail.text!.isValidEmail()) {
                self.showToast(message:Constants.invalidEmailMSG)
                return
            }
            else  if self.txtCountry.text?.count == 0
            {
                self.showToast(message: Constants.demoEmptyCountryMsg)
            }
            else  if self.txtLocation.text?.count == 0
            {
                self.showToast(message: Constants.demoEmptyLocationMsg)
            }
            else  if self.txtType.text?.count == 0
            {
                self.showToast(message: Constants.demoEmptyTypeMsg)
            }
            else  if self.txtPassword.text?.count == 0
            {
                self.showToast(message: Constants.emptyPWD)
            }
            else
            {
                self.updateProfile()
            }
        }
    }
    //get image from source type
       func getImage(fromSourceType sourceType: UIImagePickerController.SourceType) {
        
        //Check is source type available
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {
            
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = sourceType
            imagePickerController.modalPresentationStyle = .fullScreen
            self.present(imagePickerController, animated: true, completion: nil)
        }
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("Info ------->",info as Any)
        if let imageURL = info[UIImagePickerController.InfoKey.referenceURL] as? URL {
            let result = PHAsset.fetchAssets(withALAssetURLs: [imageURL], options: nil)
            let asset = result.firstObject
            print(asset?.value(forKey: "filename") as Any)
        }
        let pImage = info[UIImagePickerController.InfoKey.originalImage]
        timage = (pImage as? UIImage)!
        firstImgData = convertImageToBase_64(image: timage.jpeg(UIImage.JPEGQuality(rawValue: 0.0)!)!)
        
        self.imgEditProfile.image = timage


        // btnProfilePic.setImage(pImage as? UIImage, for: .normal)
        //updateDetails["avatar"] = convertImageToBase64(image: ((pImage as? UIImage)!))
        dismiss(animated: true, completion: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.view.activityStartAnimating()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            self.view.activityStopAnimating()
        }
    }
    
    func saveImage(imageName: String, image: UIImage) {
        
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }

        let fileName = imageName
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        guard let data = image.jpegData(compressionQuality: 1) else { return }

        //Checks if file exists, removes it if so.
        if FileManager.default.fileExists(atPath: fileURL.path) {
            do {
                try FileManager.default.removeItem(atPath: fileURL.path)
                print("Removed old image")
            } catch let removeError {
                print("couldn't remove file at path", removeError)
            }

        }

        do {
            try data.write(to: fileURL)
        } catch let error {
            print("error saving file with error", error)
        }

    }
    func deleteDirectory(sFileNme:String)
    {
        guard let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }

        let fileName = sFileNme
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        //Checks if file exists, removes it if so.
        if FileManager.default.fileExists(atPath: fileURL.path) {
            do {
                try FileManager.default.removeItem(atPath: fileURL.path)
                print("Removed old image")
            } catch let removeError {
                print("couldn't remove file at path", removeError)
            }

        }
    }
    
    
    
    func GetProfileDetails()
    {
     
        self.view.activityStartAnimating()
        
        var postDict = Dictionary<String,String>()
        postDict = ["access_token":self.sharedData.getAccessToken()

        ]
        
        let loginURL = Constants.baseURL+Constants.profileURL
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
                    self.profileModel = ProfileModel(response)
                    let statusCode = Int((self.profileModel?.httpcode)!)
                    if statusCode == 200{
                        
                        let url = URL(string: (self.profileModel?.profileData?.profile_data?.profile_pic)!)
                        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
                        self.imgEditProfile.image = UIImage(data: data!)

//                        self.imgEditProfile.sd_setImage(with: URL(string: (self.profileModel?.profileData?.profile_data?.profile_pic!)!), placeholderImage: UIImage(named: "Transparent"))

                        self.txtStandards.text = self.profileModel?.profileData?.profile_data?.standard
                        self.selectedStandardID = self.profileModel?.profileData?.profile_data?.standard_id
                        
                        self.standardsArray = (self.profileModel?.profileData?.standards)!
                        for item in self.standardsArray
                        {
                            
                            self.standardsNameArray.append(item.standard_name!)
                            
                            self.txtStandards.optionIds?.append(item.id!)

                        }
                        
                        self.txtStandards.optionArray = self.standardsNameArray
                        
                            self.txtName.text = self.profileModel?.profileData?.profile_data?.name
                            self.txtEmail.text = self.profileModel?.profileData?.profile_data?.email
                            self.txtCountry.text = self.profileModel?.profileData?.profile_data?.country
                            self.txtLocation.text = self.profileModel?.profileData?.profile_data?.location
                            self.txtType.text = self.profileModel?.profileData?.profile_data?.type
                            self.txtPassword.text = "123456"
                            self.selectedTypeID = self.profileModel?.profileData?.profile_data?.type_id
                            self.selectedCountryID = self.profileModel?.profileData?.profile_data?.country_id
                            self.view.activityStopAnimating()
                        
                    }
                    if statusCode == 400
                    {
                        self.view.activityStopAnimating()
                        self.showToast(message: (self.profileModel?.message)!)
                    }
                    
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }
    
    func updateProfile(){
        self.view.activityStartAnimating()
        var postDict = Dictionary<String,String>()
        //mobilevalue.dropFirst(1)
        postDict = [
            "access_token":sharedData.getAccessToken(),
            "name":txtName.text!,
            "email":txtEmail.text!,
            "country":String(self.selectedCountryID!),
            "location":txtLocation.text!,
            "type":String(self.selectedTypeID!),
            "password":txtPassword.text!,
            "profile_pic":firstImgData,
            "standard":String(self.selectedStandardID!)
        ]
        
        let loginURL = Constants.baseURL+Constants.profileUpdateURL
        print("loginURL",loginURL)
        print("postDict",postDict)
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
                    self.pUpdateModel = ProfileUpRespModel(response)
                    let statusCode = Int((self.pUpdateModel?.httpcode)!)
                    if statusCode == 200{
                        self.showToast(message: (self.pUpdateModel?.message)!)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                             
                            self.view.activityStopAnimating()
//                            self.saveImage(imageName: "ProfileImage_\(self.txtName.text!)", image: self.timage)
//
//                            self.navigationController?.popViewController(animated: true)
                            self.txtStandards.isEnabled = false
                            self.txtTiming.isEnabled = false
                            self.btnProfilePic.isEnabled = false
                            self.txtName.isEnabled = false
                            self.txtEmail.isEnabled = false
                            self.txtCountry.isEnabled = false
                            self.txtLocation.isEnabled = false
                            self.txtType.isEnabled = false
                            self.txtPassword.isEnabled = false
                            self.bSelectedDate = false
                            self.txtType.isEnabled = false
                            self.btnSave.setTitle("EDIT", for: .normal)
                            
                            
                        }
                    }
                    if statusCode == 400
                    {
                        self.view.activityStopAnimating()
                        self.showToast(message: (self.pUpdateModel?.message)!)
                        self.deleteDirectory(sFileNme: "ProfileImage")

                    }
                    
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
                        print("registerResponseModel ----- ",self.typeResponseModel)
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
                        print("registerResponseModel ----- ",self.countryListResponseModel)
                        self.view.activityStopAnimating()

                   
                        self.countryArray = (self.countryListResponseModel?.country_listdata?.country_lists)!
                        
                        

                        for item in self.countryArray
                        {
                            
                            self.countryNameArray.append(item.name!)
                            
                            self.txtCountry.optionIds?.append(item.id!)

                        }
                        
                        
                        
                        self.countryNameArray =  self.countryNameArray.sorted { $0.localizedCaseInsensitiveCompare($1) == ComparisonResult.orderedAscending }

                        self.txtCountry.optionArray = self.countryNameArray
                        
                        
                        
                        
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

    @IBAction func ACtionBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
}
