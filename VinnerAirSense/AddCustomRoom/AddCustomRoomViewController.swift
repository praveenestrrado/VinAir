//
//  AddCustomRoomViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 19/03/21.
//

import UIKit
import SDWebImage
import MobileCoreServices
import Alamofire
import SwiftyJSON
import PhotosUI
import Photos
import iOSDropDown

class AddCustomRoomViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet var imgRoom: UIImageView!
    @IBOutlet var txtEnterRoomName: UITextField!
    
    let sharedData = SharedDefault()
    var signOutResponse: signOutResponseModel?
    var signOutData: SignOutData?
    var firstImgData:String = String()
    var timage = UIImage()
    var addRoomResponseModel: AddRoomResponseModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ActionNext(_ sender: Any) {
        
        if txtEnterRoomName.text?.count == 0
        {
            self.showToast(message: "Please enter room name")
        }
        else if firstImgData.count == 0
        {
            self.showToast(message: "Please provide room image")

        }
        else
        {
            self.addRoomAPI()

        }
    }
    @IBAction func ActionGetImage(_ sender: Any) {
        
        
        self.showAlert()

    }
    
    func addRoomAPI()
    {
        
            self.view.activityStartAnimating()
            var postDict = Dictionary<String,String>()
            //mobilevalue.dropFirst(1)
            postDict = [
                "access_token":sharedData.getAccessToken(),
                "room_name":txtEnterRoomName.text!,
                "room_image":firstImgData
            ]
            
            let loginURL = Constants.baseURL+Constants.addRoom
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
                        self.addRoomResponseModel = AddRoomResponseModel(response)
                        let statusCode = Int((self.addRoomResponseModel?.httpcode)!)
                        if statusCode == 200{
                            self.showToast(message: (self.addRoomResponseModel?.message)!)
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                 
                                self.navigationController?.popViewController(animated: false)

                                
                            }
                        }
                        if statusCode == 400
                        {
                            self.view.activityStopAnimating()
                            self.showToast(message: (self.addRoomResponseModel?.message)!)

                        }
                        
                    }
                    catch let err {
                        print("Error::",err.localizedDescription)
                    }
                }
            }
    }
    
    
    @IBAction func ActionBack(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: false)
    }
    
    
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
        
        self.imgRoom.image = timage


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
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func ACtionPlus(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "AddDeviceViewController") as! AddDeviceViewController
        self.navigationController?.pushViewController(next, animated: false)
    }
    @IBAction func ActionHome(_ sender: Any) {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(next, animated: false)
    }
    
    @IBAction func ActionProfile(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(next, animated: false)
    }
    @IBAction func ActionLogOut(_ sender: Any) {
        
        
        let alert = UIAlertController(title: Constants.appName, message: Constants.logoutMSG, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { _ in
            //Yes Action
            
            self.Logout()
           
        }))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
            print("NO")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    func Logout(){
        self.view.activityStartAnimating()
        
        var postDict = Dictionary<String,String>()

        postDict = [
            "access_token":self.sharedData.getAccessToken()
        ]
        
        print("PostData: ",postDict)
        let loginURL = Constants.baseURL+Constants.logOutURL
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
                    self.signOutResponse = signOutResponseModel(response)
                    let statusCode = Int((self.signOutResponse?.httpcode)!)
                    self.signOutData = self.signOutResponse?.signOutData

                    if statusCode == 200{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0)
                        {
                            
                            self.showToast(message: (self.signOutData?.msg)!)

                            self.sharedData.setAccessToken(token: "")
                            let next = self.storyboard?.instantiateViewController(withIdentifier: "SignInNewViewController") as! SignInNewViewController
                            self.navigationController?.pushViewController(next, animated: false)

                        }
                    }
                    if statusCode == 400
                    {
                        self.showToast(message: (self.signOutResponse?.message)!)
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
