//
//  ScanQRViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 24/02/21.
//

import UIKit
import AVFoundation
import MobileCoreServices
import Alamofire
import SwiftyJSON
//import SwiftyXMLParser


class ScanQRViewController: UIViewController ,AVCaptureMetadataOutputObjectsDelegate {
    var strTitle:String = String()

    var captureSession:AVCaptureSession?
    var videoPreviewLayer:AVCaptureVideoPreviewLayer?
    var qrCodeFrameView:UIView?
    let supportedCodeTypes = [AVMetadataObject.ObjectType.qr]
    var resultString = ""
    var countV: Int = 0
    
    var sRoomID : Int?
    var sDeviceName : String?
    var iSelectedRoomID: Int?

    
    
    @IBOutlet var viewQR: UIView!
    @IBOutlet var viewScanCodeBg: UIView!
    let maskLayer = CAShapeLayer()
    
    @IBOutlet weak var lblHeader: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        
         maskLayer.path = UIBezierPath(roundedRect: view.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 5, height: 5)).cgPath
         
         let borderLayer = CAShapeLayer()
         borderLayer.frame = self.view.bounds
         //borderLayer.path = maskLayer.CGPath
         maskLayer.path = UIBezierPath(roundedRect: viewQR.bounds, byRoundingCorners: [.topLeft,.topRight, .bottomLeft, .bottomRight], cornerRadii: CGSize(width: 10.0, height: 10.0)).cgPath
         borderLayer.mask = maskLayer
         borderLayer.lineWidth = 5.0
         borderLayer.strokeColor = UIColor.white.cgColor
         borderLayer.strokeColor = UIColor.clear.cgColor
         viewQR.layer.addSublayer(borderLayer)
        
        self.StartQrCodeScan()

    }
    func StartQrCodeScan(){
        guard let captureDevice = AVCaptureDevice.default(for: AVMediaType.video) else {return}
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession = AVCaptureSession()
            captureSession?.addInput(input)
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession?.addOutput(captureMetadataOutput)
            
            captureMetadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = supportedCodeTypes
            
            videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession!)
            videoPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
            //videoPreviewLayer?.frame = view.layer.bounds
            videoPreviewLayer?.frame = viewQR.layer.bounds
            
            viewQR.layer.addSublayer(videoPreviewLayer!)
            
            captureSession?.startRunning()
            
            qrCodeFrameView = UIView()
            
            if let qrCodeFrameView = qrCodeFrameView {
                qrCodeFrameView.layer.borderColor = UIColor.green.cgColor
                qrCodeFrameView.layer.borderWidth = 2
                //self.view.addSubview(qrCodeFrameView)
                //self.view.bringSubviewToFront(qrCodeFrameView)
                
                //viewQR.addSubview(qrCodeFrameView)
                viewQR.bringSubviewToFront(qrCodeFrameView)
            }
            
            captureSession?.startRunning()
            
        } catch {
            // If any error occurs, simply print it out and don't continue any more.
            print(error)
            return
        }
    }
    
    
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection){
        
        captureSession!.stopRunning()
        
         if let metadataObject = metadataObjects.first {
         guard let readableObject = metadataObject as? AVMetadataMachineReadableCodeObject else { return }
         guard let stringValue = readableObject.stringValue else { return }
         AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            
        
            
            let next = self.storyboard?.instantiateViewController(withIdentifier: "DeviceConnectionViewController") as! DeviceConnectionViewController
            next.sRoomID = self.sRoomID
            next.sDeviceName = self.sDeviceName
            next.sDeviceId = stringValue
            
            UserDefaults.standard.setValue(stringValue, forKey: "ScannedDeviceId")
            self.navigationController?.pushViewController(next, animated: false)
            
            
            
//            self.showToast(message: stringValue)
            
            
         }
         
         dismiss(animated: true)
         
        
       
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func btnNextAction(_ sender: Any)
    {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "DeviceConnectionViewController") as! DeviceConnectionViewController
        next.sRoomID = self.sRoomID
//        next.iSelectedRoomID = self.iSelectedRoomID
        next.sDeviceName = self.sDeviceName
        self.navigationController?.pushViewController(next, animated: false)
        
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "SetSSIDViewController") as! SetSSIDViewController
//        self.navigationController?.pushViewController(next, animated: false)
    }
}
