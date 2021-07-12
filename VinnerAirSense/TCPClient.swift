//
//  TCPClient.swift
//  VinnerAirSense
//
//  Created by MAC on 08/02/21.
//

import Foundation
protocol TCPClientDelegate: class {
    
    func didUpdateOnClientMessage(message: String)

}

class TCPClient: NSObject {
    static let sharedInstance = TCPClient()
    
    weak var delegate: TCPClientDelegate?
    
    var inputStream : InputStream?
    var outputStream : OutputStream?
 
    func connect(host: String, port: String) {
        var readStream : Unmanaged<CFReadStream>?
        var writeStream : Unmanaged<CFWriteStream>?
        let host : CFString = NSString(string: host)
        
        guard let port : UInt32 = UInt32(port) else {
            delegate?.didUpdateOnClientMessage(message: "Unknown Port - Please contact the developer")
            return
        }
            
//        Stream.getStreamsToHost(withName: host, port: port, inputStream: &inputStream, outputStream: &outputStream)
        CFStreamCreatePairWithSocketToHost(kCFAllocatorDefault, host, port, &readStream, &writeStream)
            
        inputStream = readStream!.takeUnretainedValue()
        outputStream = writeStream!.takeUnretainedValue()
            
        inputStream!.delegate = self
        outputStream!.delegate = self
            
        inputStream!.schedule(in: RunLoop.current, forMode: RunLoop.Mode.default)
        outputStream!.schedule(in: RunLoop.current, forMode: RunLoop.Mode.default)
            
        inputStream!.open()
        outputStream!.open()
      }
    
    
    func send(message: String){
        
        let response = "msg:\(message)"
        let buff = [UInt8](message.utf8)
        if let _ = response.data(using: .ascii) {
            outputStream?.write(buff, maxLength: buff.count)
        }

    }
  
    
}

extension TCPClient: StreamDelegate {
    func stream(_ aStream: Stream, handle eventCode: Stream.Event)
    {
        switch eventCode {
        case .openCompleted:

            print("Open Completed - \(String(describing: aStream.streamError?.localizedDescription))")

        case .errorOccurred:
            
            print("Error Occured - \(String(describing: aStream.streamError?.localizedDescription))")


        case .hasBytesAvailable:
            
            if aStream == inputStream {
                var dataBuffer = Array<UInt8>(repeating: 0, count: 1024)
                var len: Int
                while (inputStream?.hasBytesAvailable)! {
                    len = (inputStream?.read(&dataBuffer, maxLength: 1024))!
                    if len > 0 {
                        let output = String(bytes: dataBuffer, encoding: .ascii)
                        if nil != output {
                            print("server said: \(output ?? "")")
                            
                            delegate?.didUpdateOnClientMessage(message: "server said: \(output ?? "")")
                        }
                    }
                }
            }
            
        

        case .hasSpaceAvailable:
            
            print("Has Space Available - \(String(describing: aStream.streamError?.localizedDescription))")


        case .endEncountered:
            print("End Encountered - \(String(describing: aStream.streamError?.localizedDescription))")


        default:
            break
        }
    }
  
   
}
