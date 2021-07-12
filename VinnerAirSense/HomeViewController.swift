//
//  HomeViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 12/01/21.
//

import UIKit
import Charts
import MBCircularProgressBar
import Alamofire
import SwiftyJSON
import TinyConstraints


class HomeViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource, ChartViewDelegate{
    
    
    @IBOutlet var lblProgressBar4Heading: UILabel!
    @IBOutlet var lblProgressBar3Heading: UILabel!
    @IBOutlet var lblProgressBar2Heading: UILabel!
    @IBOutlet var lblProgressBar1Heading: UILabel!
    @IBOutlet var lblLocation2HealthStatus: UILabel!
    @IBOutlet var lblLocation2Data: UILabel!
    @IBOutlet var lblLocation2: UILabel!
    @IBOutlet var lblLocationHealthStatus: UILabel!
    @IBOutlet var lblLocation1Data: UILabel!
    @IBOutlet var lblLocation1: UILabel!
    
    
    @IBOutlet var xAxisCarbonDioxide: UIView!
    @IBOutlet var xAxisViewHumidity: UIView!
    @IBOutlet var XaxisViewTeperature: UIView!
    @IBOutlet var xAxisViewCarbonMonoxide: UIView!
    @IBOutlet var xAxisOzoneChartView: UIView!
    @IBOutlet var xAxisViewPM1: UIView!
    @IBOutlet var xAxisPM2_5: UIView!
    @IBOutlet var xAxisPM10View: UIView!
    @IBOutlet var xAxisVOC: UIView!
    @IBOutlet var formaldihydeView: UIView!
    @IBOutlet var xAxisLux: UIView!
    
    
    
    
    
    
    
    @IBOutlet var xAxisViewPm01: UIView!
    
    @IBOutlet var xAxis_eCo2nView: UIView!
    @IBOutlet var xAxisViewPM2_5: UIView!
    @IBOutlet var xAxisViewCo2n: UIView!
    var timerTiming:Timer?
    var count: Int = 0
    var xaxisData = [Double]()
    var stepDouble  : [Double] = [0,30,60,90,120,150]
    var sCurrentCountryName = String()
    var times = [Double]()
    var timeString = [String]()
    
    @IBOutlet var humidityGraphView: Chart!
    @IBOutlet var temperatureGraphView: Chart!
    @IBOutlet var CarbonMonoxideChartView: Chart!
    @IBOutlet var pm1GraphView: Chart!
    @IBOutlet var CarbonDioxideChart: Chart!
    @IBOutlet var PM2_5ChartView: Chart!
    @IBOutlet var OzoneChartView: Chart!
    @IBOutlet var PM10ChartView: Chart!
    @IBOutlet var vocGraphView: Chart!
    @IBOutlet var FormaldihydeChartView: Chart!
    @IBOutlet var luxGraphView: Chart!
    
    
    
    @IBOutlet var viewMonth: UIView!
    
    @IBOutlet var temperatureMonthlyChart: Chart!
    @IBOutlet var xAXisTemperatureMonthly: UIView!
    
    @IBOutlet var HumidityMonthlyChart: Chart!
    @IBOutlet var xAxisHumidityMonthlyChart: UIView!
    
    @IBOutlet var CarbonMonoxideMonthlyChart: Chart!
    @IBOutlet var xAxisViewCarbonMonoxideMOnthly: UIView!
    
    @IBOutlet var OzoneMonthlyChart: Chart!
    @IBOutlet var xAXisOzoneMonthly: UIView!
    
    @IBOutlet var PM1MonthlyChart: Chart!
    @IBOutlet var xAXisPM1MonthlyChart: UIView!
    
    
    @IBOutlet var PM2_5MonthlyChart: Chart!
    @IBOutlet var xAxisViewPM2_5Monthly: UIView!
    
    @IBOutlet var PM10MonthlyChart: Chart!
    @IBOutlet var xAXisPM10MOnthly: UIView!
    
    @IBOutlet var VOCMonthlyGraph: Chart!
    @IBOutlet var xAXisVOCMOnthly: UIView!
    
    
    @IBOutlet var FormaldihydeMonthlyChart: Chart!
    @IBOutlet var xAxisDormaldihyde: UIView!
    
    
    @IBOutlet var CarbonDiooxideMonthlyChart: Chart!
    @IBOutlet var xAxisCarbonDioxideMonthly: UIView!
    
    @IBOutlet var LuxMonthlyChart: Chart!
    @IBOutlet var xAxisLuxMonthly: UIView!
    
    
    
    
    @IBOutlet var viewWeek: UIView!
    
    @IBOutlet var temperatureWeeklyChart: Chart!
    @IBOutlet var xAXisTemperatureWeekly: UIView!
    
    @IBOutlet var HumidityWeeklyChart: Chart!
    @IBOutlet var xAxisHumidityWeeklyChart: UIView!
    
    @IBOutlet var CarbonDIoxideWeeklyChart: Chart!
    @IBOutlet var xAxisViewCarbonDioxideWeekly: UIView!
    
    @IBOutlet var OzoneWeeklyChart: Chart!
    @IBOutlet var xAXisOzoneWeekly: UIView!
    
    @IBOutlet var PM1WeeklyChart: Chart!
    @IBOutlet var xAXisPM1WeeklyChart: UIView!
    
    
    @IBOutlet var PM2_5WeeklyChart: Chart!
    @IBOutlet var xAxisViewPM2_5Weekly: UIView!
    
    @IBOutlet var PM10WeeklyChart: Chart!
    @IBOutlet var xAXisPM10Weekly: UIView!
    
    @IBOutlet var VOCWeeklyGraph: Chart!
    @IBOutlet var xAXisVOCWeekly: UIView!
    
    
    @IBOutlet var FormaldihydeWeeklyChart: Chart!
    @IBOutlet var xAxisDormaldihydeWeek: UIView!
    
    
    @IBOutlet var CarbonMonoxideWeeklyChart: Chart!
    @IBOutlet var xAxisCarbonMonoxideWeekly: UIView!
    
    @IBOutlet var LuxWeeklyChart: Chart!
    @IBOutlet var xAxisLuxWeeklly: UIView!
    
    
    
    
    
    @IBOutlet var lblHomeTiming: UILabel!
    
    @IBOutlet weak var lblTemperature: UILabel!
    
    @IBOutlet weak var lblCO3: UILabel!
    
    @IBOutlet weak var lblCO2: UILabel!
    var data = [PlotData]()
    
    @IBOutlet weak var lblFormaldyhyde: UILabel!
    
    @IBOutlet var btnDailyStatus: UIButton!
    @IBOutlet var btnMonthlyStatus: UIButton!
    
    @IBOutlet var viewMonthlyStatus: UIView!
    @IBOutlet var viewWeeklyStatus: UIView!
    @IBOutlet var btnweeklyStatus: UIButton!
    @IBOutlet var viewDailyStatus: UIView!
    @IBOutlet var VOCLineChartView: LineChartView!
    @IBOutlet weak var stackView: UIStackView!
    weak var axisFormatDelegate: IAxisValueFormatter?
    
    @IBOutlet var PM1LineChartView: LineChartView!
    @IBOutlet var PM1oLineChartView: LineChartView!
    @IBOutlet var humidityLineChartView: LineChartView!
    
    @IBOutlet var eCo2nLineChartView: LineChartView!
    @IBOutlet var Co2nLineChartView: LineChartView!
    @IBOutlet weak var luxLineChartView: LineChartView!

    @IBOutlet var pm2_5LineChartView: LineChartView!
    @IBOutlet var temperatureLineChartView: LineChartView!
    
    @IBOutlet weak var progressBarCarbonMonoxide: UIProgressView!
    @IBOutlet weak var progressBarFormaldyhyde: UIProgressView!
    @IBOutlet weak var progressBarcarbonDioxide: UIProgressView!
    @IBOutlet weak var progressBarTemperature: UIProgressView!
    
    var purplecolorSensor = [String]()
    var purplecolorsensorName = [String]()
    var purplecolorsensorData = [Float]()
    
    var redcolorSensor = [String]()
    var redcolorsensorName = [String]()
    var redcolorsensorData = [Float]()
    
    var orangecolorSensor = [String]()
    var orangecolorsensorName = [String]()
    var orangecolorsensorData = [Float]()
    
    var yellowcolorSensor = [String]()
    var yellowcolorsensorName = [String]()
    var yellowcolorsensorData = [Float]()
    
    var greencolorSensor = [String]()
    var greencolorsensorName = [String]()
    var greebcolorsensorData = [Float]()
    
    
    var signOutResponse: signOutResponseModel?
    var signOutData: SignOutData?
    var sHumidity: String?
    var sTemperarture: String?
    var sCOValue: String?

    var sPM10: String?
    var sPM1: String?
    var sVOC: String?
    var sOzone: String?
    var sDeviceId : String?
    var sPM2_5: String?
    var sCh2_o: String?
    var sLux: String?
    var sCO2: String?
    
    
    var sTeperatureDates: [String] = []
    var sTepMeasureMeasreValue: [Double] = []
    
    
    var sHumDates: [String] = []
    var sHumMeasreValue: [Double] = []
    
    var sCarbonMonoxideDates: [String] = []
    var sCarbonMonoxideMeasreValue: [Double] = []
    
    var sOzoneDates: [String] = []
    var sOzoneMeasreValue: [Double] = []
    
    var sPM1Dates: [String] = []
    var sPM1MeasreValue: [Double] = []
    
    
    var spm2_5nDates: [String] = []
    var spm2_5nMeasureValue: [Double] = []
    
    var sPM10Dates: [String] = []
    var sPM10MeasreValue: [Double] = []
    
    var sVOCDates: [String] = []
    var sVOCMeasreValue: [Double] = []

    var sFormaldihydeDates: [String] = []
    var sFormaldihydeMeasreValue: [Double] = []
    
    var sCo2nDates: [String] = []
    var sCo2nMeasureValue: [Double] = []
    
    
    var sLuxDates: [String] = []
    var sluxMeasreValue: [Double] = []
    
   
    
   
    
    
    
    
 
    
    var colorResponseModel: ColorResponseModel?
    
    var deviceDataResponseModel: DeviceDataResponseModel?
    
    var luxLineChartModel:LuxLineChartResponseModel?
    
    var aQIResponseModel: AQIResponseModel?

    var aQIData: AQIData?

    var attributions : [Attributions]?
    var city : City?

    var iaqi : Iaqi?
    var time : Time?
    var forecast : Forecast?
    var debug : Debug?
    
    var co : Co?
    var h : H?
    var no2 : No2?
    var o3 : O3?
    var p : P?
    var pm10 : Pm10?
    var pm25 : Pm25?
    var so2 : So2?
    var t : T?
    var w : W?
    var daily : Daily?
    var o31 : [O31]?
    var pm101 : [Pm101]?
    var pm251 : [Pm251]?
    var uvi1 : [Uvi1]?
    
    var result: Result?
    var voc1: Voc1?
    var temp1: Temp1?
    var co2n: Co2n?
    var pm1n: Pm1n?
    var timenew: Timenew?
    var hum1: Hum1?
    var pm10n: Pm10n?
    var lux1: Lux1?
    var pm2_5n: Pm2_5n?
  
    var ch2on: Ch2on?
    var con : Con?
    var errn : Errn?
    var o3n : O3n?
    var rtcn : Rtcn?

    

    var sensor_color_codeArray = [sensor_color_codeList]()
    
    var homeRoomResponseModel: HomeRoomResponseModel?
    var dashboardlistData:dashboardListData?
    var dashboardata = [dashboardData]()
    var deviceListData = [devicesList]()
    var sensors:[sensorsList]?
    var color_ranges:[color_rangesList]?


    @IBOutlet weak var circularProgressView: MBCircularProgressBarView!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var lblPurifier: UILabel!
    @IBOutlet weak var collectionViewHome: UICollectionView!
    @IBOutlet weak var lblHome: UILabel!
    @IBOutlet weak var viewBase: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    var months: [String]!
    var unitsSold: [Double]!
    var unitsBought: [Double]!
    let sharedData = SharedDefault()

    @IBOutlet weak var viewBarchartBase: UIView!
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var viewHome: UIView!
    var dataEntries: [ChartDataEntry] = []

    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        let locale = Locale.current
        print(locale.regionCode)
        
        self.sCurrentCountryName = self.countryName(from: locale.regionCode!)
        
        self.lblLocation1.text =  "AQI Outdoor " + self.sCurrentCountryName
        
                self.lblPurifier.text = self.sharedData.getDefoultDeviceName()
                self.GetAirQualityDetails()
        //                if UserDefaults.standard.value(forKey: "ScannedDeviceId") as! String != "nil"
        //                {
        self.GetDeviceAPIDetails()
        
        if self.sharedData.getGraphGraphStatus() == "1"
        {
            self.viewWeek.isHidden = true
            self.viewMonth.isHidden = true
            
            if self.sharedData.getGraphGetTimingData() == "1"
            {
                self.lblHomeTiming.text = "1 Minute"

                self.GetTempChartLast1MinuteDayData()
                self.GetHumidityChartLast1MinuteDayData()
                self.GetCOChartLast1MinuteDayData()
                self.GetOzoneChartLast1MinuteDayData()
                self.GetPM1ChartLast1MinuteDayData()
                self.GetPM2_5ChartLast1MinuteDayData()
                self.GetPM10ChartLast1MinuteDayData()
                self.GetVOCChartLast1MinuteDayData()
                self.GetCH2OChartLast1MinuteDayData()
                self.GetCO2ChartLast1MinuteDayData()
                self.GetLuxChartLast1MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "2"
            {
                self.lblHomeTiming.text = "2 Minute"

                self.GetTempChartLast2MinuteDayData()
                self.GetHumidityChartLast2MinuteDayData()
                self.GetCOChartLast2MinuteDayData()
                self.GetOzoneChartLast2MinuteDayData()
                self.GetPM1ChartLast2MinuteDayData()
                self.GetPM2_5ChartLast2MinuteDayData()
                self.GetPM10ChartLast2MinuteDayData()
                self.GetVOCChartLast2MinuteDayData()
                self.GetCH2OChartLast2MinuteDayData()
                self.GetCO2ChartLast2MinuteDayData()
                self.GetLuxChartLast2MinuteDayData()
            }
            
            else  if self.sharedData.getGraphGetTimingData() == "5"
            {
                self.lblHomeTiming.text = "5 Minute"

                self.GetTempChartLast5MinuteDayData()
                self.GetHumidityChartLast5MinuteDayData()
                self.GetCOChartLast5MinuteDayData()
                self.GetOzoneChartLast5MinuteDayData()
                self.GetPM1ChartLast5MinuteDayData()
                self.GetPM2_5ChartLast5MinuteDayData()
                self.GetPM10ChartLast5MinuteDayData()
                self.GetVOCChartLast5MinuteDayData()
                self.GetCH2OChartLast5MinuteDayData()
                self.GetCO2ChartLast5MinuteDayData()
                self.GetLuxChartLast5MinuteDayData()
            
            }
            else  if self.sharedData.getGraphGetTimingData() == "10"
            {
                self.lblHomeTiming.text = "10 Minutes"

                self.GetTempChartLast10MinuteDayData()
                self.GetHumidityChartLast10MinuteDayData()
                self.GetCOChartLast10MinuteDayData()
                self.GetOzoneChartLast10MinuteDayData()
                self.GetPM10ChartLast10MinuteDayData()
                self.GetPM2_5ChartLast10MinuteDayData()
                self.GetPM10ChartLast10MinuteDayData()
                self.GetVOCChartLast10MinuteDayData()
                self.GetCH2OChartLast10MinuteDayData()
                self.GetCO2ChartLast10MinuteDayData()
                self.GetLuxChartLast10MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "30"
            {
                self.lblHomeTiming.text = "30 Minutes"

                self.GetTempChartLast30MinuteDayData()
                self.GetHumidityChartLast30MinuteDayData()
                self.GetCOChartLast30MinuteDayData()
                self.GetOzoneChartLast30MinuteDayData()
                self.GetPM1ChartLast30MinuteDayData()
                self.GetPM2_5ChartLast30MinuteDayData()
                self.GetPM10ChartLast30MinuteDayData()
                self.GetVOCChartLast30MinuteDayData()
                self.GetCH2OChartLast30MinuteDayData()
                self.GetCO2ChartLast30MinuteDayData()
                self.GetLuxChartLast30MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "60"
            {
                self.lblHomeTiming.text = "1 Hour"

                self.GetTempChartLast60MinuteDayData()
                self.GetHumidityChartLast60MinuteDayData()
                self.GetCOChartLast60MinuteDayData()
                self.GetOzoneChartLast60MinuteDayData()
                self.GetPM1ChartLast60MinuteDayData()
                self.GetPM2_5ChartLast60MinuteDayData()
                self.GetPM10ChartLast60MinuteDayData()
                self.GetVOCChartLast60MinuteDayData()
                self.GetCH2OChartLast60MinuteDayData()
                self.GetCO2ChartLast60MinuteDayData()
                self.GetLuxChartLast60MinuteDayData()
            
            }
            else  if self.sharedData.getGraphGetTimingData() == "120"
            {
                self.lblHomeTiming.text = "2 Hours"

                self.GetTempChartLast2HoursDayData()
                self.GetHumidityChartLast2HoursDayData()
                self.GetCOChartLast2HoursDayData()
                self.GetOzoneChartLast2HoursDayData()
                self.GetPM1ChartLast2HoursDayData()
                self.GetPM2_5ChartLast2HoursDayData()
                self.GetPM10ChartLast2HoursDayData()
                self.GetVOCChartLast2HoursDayData()
                self.GetCH2OChartLast2HoursDayData()
                self.GetCO2ChartLast2HoursDayData()
                self.GetLuxChartLast2HoursDayData()
            
                
            } else  if self.sharedData.getGraphGetTimingData() == "480"
            {
                self.lblHomeTiming.text = "8 Hours"

                self.GetTempChartLast8HoursDayData()
                self.GetHumidityChartLast8HoursDayData()
                self.GetCOChartLast8HoursDayData()
                self.GetOzoneChartLast8HoursDayData()
                self.GetPM1ChartLast8HoursDayData()
                self.GetPM2_5ChartLast8HoursDayData()
                self.GetPM10ChartLast8HoursDayData()
                self.GetVOCChartLast8HoursDayData()
                self.GetCH2OChartLast8HoursDayData()
                self.GetCO2ChartLast8HoursDayData()
                self.GetLuxChartLast8HoursDayData()
            
            }
            else
            {
                self.lblHomeTiming.text = "Last Day"

            self.GetTemperatureChartLastDayData()
            self.GetHumidityChartLastDayData()
            self.GetCOChartLastDayData()
            self.GetOzoneChartLastDayData()
            self.GetPM1ChartLastDayData()
            self.GetPM2_5ChartLastDayData()
            self.GetPM10ChartLastDayData()
            self.GetVOCChartLastDayData()
            self.GetCH2OChartLastDayData()
            self.GetCO2ChartLastDayData()
            self.GetLuxChartLastDayData()
            }
        }
        else if self.sharedData.getGraphGraphStatus() == "2"
        {
            self.viewWeek.isHidden = false
            self.viewMonth.isHidden = true
            
            
            self.GetTemperatureChartLastWeekData()
            self.GetHumidityChartLastWeekData()
            self.GetCOChartLastWeekData()
            self.GetOzoneChartLastWeekData()
            self.GetPM1ChartLastWeekData()
            self.GetPM2_5ChartLastWeekData()
            self.GetPM10ChartLastWeekData()
            self.GetVOCChartLastWeekData()
            self.GetCH2OChartLastWeekData()
            self.GetCO2ChartLastWeekData()
            self.GetLuxChartLastWeekData()
        }
        else if self.sharedData.getGraphGraphStatus() == "3"
        {
            self.viewWeek.isHidden = true
            self.viewMonth.isHidden = false
            
            self.GetTempChartLastMonthData()
            self.GetHumidityChartLastMonthData()
            self.GetCOChartLastMonthData()
            self.GetOzoneChartLastMonthData()
            self.GetPM1ChartLastMonthData()
            self.GetPM2_5ChartLastMonthData()
            self.GetPM10ChartLastMonthData()
            self.GetVOCChartLastMonthData()
            self.GetCH2OChartLastMonthData()
            self.GetCO2ChartLastMonthData()
            self.GetLuxChartLastMonthData()
        }
       
        
        
        
//        self.GetLuxChartValueAPI()
//        self.GetHumidityChartValueAPI()
//        self.GetPM1ChartValueAPI()
//        self.GetPM10ChartValueAPI()
//        self.Getvoc1ChartValueAPI()
//        self.GetTeperatureChartValueAPI()
//        self.GetPM2_5nChartValueAPI()
//        self.GeteCo2_nChartValueAPI()
//        self.GetCo2nChartValueAPI()
//                        }
                        
                        
                        if #available(iOS 11.0, *){
                            viewDailyStatus.clipsToBounds = true
                            viewDailyStatus.layer.cornerRadius = 2
                            viewDailyStatus.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
                           
                            viewWeeklyStatus.clipsToBounds = true
                            viewWeeklyStatus.layer.cornerRadius = 2
                            viewWeeklyStatus.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
                            viewDailyStatus.clipsToBounds = true
                            viewDailyStatus.layer.cornerRadius = 2
                            viewDailyStatus.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
                        }
                        
                        else{
                               let rectShape = CAShapeLayer()
                               rectShape.bounds = view.frame
                               rectShape.position = view.center
                               rectShape.path = UIBezierPath(roundedRect: view.bounds,    byRoundingCorners: [.bottomLeft , .bottomRight], cornerRadii: CGSize(width: 4, height: 4)).cgPath
                                viewDailyStatus.layer.backgroundColor = UIColor.green.cgColor
                                viewDailyStatus.layer.mask = rectShape
                            
                            viewWeeklyStatus.layer.backgroundColor = UIColor.green.cgColor
                            viewWeeklyStatus.layer.mask = rectShape
                            
                            viewDailyStatus.layer.backgroundColor = UIColor.green.cgColor
                            viewDailyStatus.layer.mask = rectShape
                          }
                        
                        
                //        self.viewDailyStatus.roundCorners([.bottomLeft, .bottomRight], radius: 2)
                //        self.viewWeeklyStatus.roundCorners([.bottomLeft, .bottomRight], radius: 2)
                //        self.viewMonthlyStatus.roundCorners([.bottomLeft, .bottomRight], radius: 2)

                        self.viewDailyStatus.backgroundColor = UIColor.systemGreen
                        self.btnDailyStatus.setTitleColor(UIColor.systemGreen, for: .normal)
                        
                        self.btnDailyStatus.sizeToFit()
                        self.btnweeklyStatus.sizeToFit()
                        self.btnMonthlyStatus.sizeToFit()

                        self.sHumidity = "0"
                        self.sPM10 = "0"
                        self.sPM1 = "0"
                        self.sVOC = "0"
                        self.sOzone = "0"
        self.sTemperarture = "0"
        self.sCOValue = "0"
        self.sPM2_5 = "0"
        self.sCh2_o = "0"
        self.sCO2 = "0"
        self.sLux = "0"
                self.start()
                      
                        //
                        
                        SetAllCharts()
                        
                        
                        
                        
                //        setChart()
                        
                        //
                        
                        self.GetDashBoardRoomDetails()
                        self.GetColorDetails()
                        

                        
                        viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
                        viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)

                //        progressBarTemperature.progress = 0.4
                        months = ["06", "09", "12", "15", "Now", "21", "00", "03", "01", "02", "00", "03"]
                        unitsSold = [60.0, 70.0, 90.0, 85.0, 120.0, 140.0, 90.0, 85.0, 75.0, 60.0, 55.0, 65.0]
                        
                        
                        

                        viewBase.dropShadow()

                        
                        // Do any additional setup after loading the view.
                    }

    override func  viewDidAppear(_ animated: Bool) {
        
        
//                if UserDefaults.standard.value(forKey: "ScannedDeviceId") as! String != "nil"
//                {
        self.GetDeviceAPIDetails()
        if self.sharedData.getGraphGraphStatus() == "1"
        {
            
            if self.sharedData.getGraphGetTimingData() == "1"
            {
                self.lblHomeTiming.text = "1 Minute"

                self.GetTempChartLast1MinuteDayData()
                self.GetHumidityChartLast1MinuteDayData()
                self.GetCOChartLast1MinuteDayData()
                self.GetOzoneChartLast1MinuteDayData()
                self.GetPM1ChartLast1MinuteDayData()
                self.GetPM2_5ChartLast1MinuteDayData()
                self.GetPM10ChartLast1MinuteDayData()
                self.GetVOCChartLast1MinuteDayData()
                self.GetCH2OChartLast1MinuteDayData()
                self.GetCO2ChartLast1MinuteDayData()
                self.GetLuxChartLast1MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "2"
            {
                self.lblHomeTiming.text = "2 Minute"

                self.GetTempChartLast2MinuteDayData()
                self.GetHumidityChartLast2MinuteDayData()
                self.GetCOChartLast2MinuteDayData()
                self.GetOzoneChartLast2MinuteDayData()
                self.GetPM1ChartLast2MinuteDayData()
                self.GetPM2_5ChartLast2MinuteDayData()
                self.GetPM10ChartLast2MinuteDayData()
                self.GetVOCChartLast2MinuteDayData()
                self.GetCH2OChartLast2MinuteDayData()
                self.GetCO2ChartLast2MinuteDayData()
                self.GetLuxChartLast2MinuteDayData()
            }
            
            else  if self.sharedData.getGraphGetTimingData() == "5"
            {
                self.lblHomeTiming.text = "5 Minute"

                self.GetTempChartLast5MinuteDayData()
                self.GetHumidityChartLast5MinuteDayData()
                self.GetCOChartLast5MinuteDayData()
                self.GetOzoneChartLast5MinuteDayData()
                self.GetPM1ChartLast5MinuteDayData()
                self.GetPM2_5ChartLast5MinuteDayData()
                self.GetPM10ChartLast5MinuteDayData()
                self.GetVOCChartLast5MinuteDayData()
                self.GetCH2OChartLast5MinuteDayData()
                self.GetCO2ChartLast5MinuteDayData()
                self.GetLuxChartLast5MinuteDayData()
            
            }
            else  if self.sharedData.getGraphGetTimingData() == "10"
            {
                self.lblHomeTiming.text = "10 Minutes"

                self.GetTempChartLast10MinuteDayData()
                self.GetHumidityChartLast10MinuteDayData()
                self.GetCOChartLast10MinuteDayData()
                self.GetOzoneChartLast10MinuteDayData()
                self.GetPM10ChartLast10MinuteDayData()
                self.GetPM2_5ChartLast10MinuteDayData()
                self.GetPM10ChartLast10MinuteDayData()
                self.GetVOCChartLast10MinuteDayData()
                self.GetCH2OChartLast10MinuteDayData()
                self.GetCO2ChartLast10MinuteDayData()
                self.GetLuxChartLast10MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "30"
            {
                self.lblHomeTiming.text = "30 Minutes"

                self.GetTempChartLast30MinuteDayData()
                self.GetHumidityChartLast30MinuteDayData()
                self.GetCOChartLast30MinuteDayData()
                self.GetOzoneChartLast30MinuteDayData()
                self.GetPM1ChartLast30MinuteDayData()
                self.GetPM2_5ChartLast30MinuteDayData()
                self.GetPM10ChartLast30MinuteDayData()
                self.GetVOCChartLast30MinuteDayData()
                self.GetCH2OChartLast30MinuteDayData()
                self.GetCO2ChartLast30MinuteDayData()
                self.GetLuxChartLast30MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "60"
            {
                self.lblHomeTiming.text = "1 Hour"

                self.GetTempChartLast60MinuteDayData()
                self.GetHumidityChartLast60MinuteDayData()
                self.GetCOChartLast60MinuteDayData()
                self.GetOzoneChartLast60MinuteDayData()
                self.GetPM1ChartLast60MinuteDayData()
                self.GetPM2_5ChartLast60MinuteDayData()
                self.GetPM10ChartLast60MinuteDayData()
                self.GetVOCChartLast60MinuteDayData()
                self.GetCH2OChartLast60MinuteDayData()
                self.GetCO2ChartLast60MinuteDayData()
                self.GetLuxChartLast60MinuteDayData()
            
            }
            else  if self.sharedData.getGraphGetTimingData() == "120"
            {
                self.lblHomeTiming.text = "2 Hours"

                self.GetTempChartLast2HoursDayData()
                self.GetHumidityChartLast2HoursDayData()
                self.GetCOChartLast2HoursDayData()
                self.GetOzoneChartLast2HoursDayData()
                self.GetPM1ChartLast2HoursDayData()
                self.GetPM2_5ChartLast2HoursDayData()
                self.GetPM10ChartLast2HoursDayData()
                self.GetVOCChartLast2HoursDayData()
                self.GetCH2OChartLast2HoursDayData()
                self.GetCO2ChartLast2HoursDayData()
                self.GetLuxChartLast2HoursDayData()
            
                
            } else  if self.sharedData.getGraphGetTimingData() == "480"
            {
                self.lblHomeTiming.text = "8 Hours"

                self.GetTempChartLast8HoursDayData()
                self.GetHumidityChartLast8HoursDayData()
                self.GetCOChartLast8HoursDayData()
                self.GetOzoneChartLast8HoursDayData()
                self.GetPM1ChartLast8HoursDayData()
                self.GetPM2_5ChartLast8HoursDayData()
                self.GetPM10ChartLast8HoursDayData()
                self.GetVOCChartLast8HoursDayData()
                self.GetCH2OChartLast8HoursDayData()
                self.GetCO2ChartLast8HoursDayData()
                self.GetLuxChartLast8HoursDayData()
            
            }
            else
            {
                self.lblHomeTiming.text = "Last Day"

            self.GetTemperatureChartLastDayData()
            self.GetHumidityChartLastDayData()
            self.GetCOChartLastDayData()
            self.GetOzoneChartLastDayData()
            self.GetPM1ChartLastDayData()
            self.GetPM2_5ChartLastDayData()
            self.GetPM10ChartLastDayData()
            self.GetVOCChartLastDayData()
            self.GetCH2OChartLastDayData()
            self.GetCO2ChartLastDayData()
            self.GetLuxChartLastDayData()
            }
        }
        else if self.sharedData.getGraphGraphStatus() == "2"
        {
            self.GetTemperatureChartLastWeekData()
            self.GetHumidityChartLastWeekData()
            self.GetCOChartLastWeekData()
            self.GetOzoneChartLastWeekData()
            self.GetPM1ChartLastWeekData()
            self.GetPM2_5ChartLastWeekData()
            self.GetPM10ChartLastWeekData()
            self.GetVOCChartLastWeekData()
            self.GetCH2OChartLastWeekData()
            self.GetCO2ChartLastWeekData()
            self.GetLuxChartLastWeekData()
        }
        else if self.sharedData.getGraphGraphStatus() == "3"
        {
            self.GetTempChartLastMonthData()
            self.GetHumidityChartLastMonthData()
            self.GetCOChartLastMonthData()
            self.GetOzoneChartLastMonthData()
            self.GetPM1ChartLastMonthData()
            self.GetPM2_5ChartLastMonthData()
            self.GetPM10ChartLastMonthData()
            self.GetVOCChartLastMonthData()
            self.GetCH2OChartLastMonthData()
            self.GetCO2ChartLastMonthData()
            self.GetLuxChartLastMonthData()
        }
       
        
//                }
                
                
                if #available(iOS 11.0, *){
                    viewDailyStatus.clipsToBounds = true
                    viewDailyStatus.layer.cornerRadius = 2
                    viewDailyStatus.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
                   
                    viewWeeklyStatus.clipsToBounds = true
                    viewWeeklyStatus.layer.cornerRadius = 2
                    viewWeeklyStatus.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
                    viewDailyStatus.clipsToBounds = true
                    viewDailyStatus.layer.cornerRadius = 2
                    viewDailyStatus.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
                }
                
                else{
                       let rectShape = CAShapeLayer()
                       rectShape.bounds = view.frame
                       rectShape.position = view.center
                       rectShape.path = UIBezierPath(roundedRect: view.bounds,    byRoundingCorners: [.bottomLeft , .bottomRight], cornerRadii: CGSize(width: 4, height: 4)).cgPath
                        viewDailyStatus.layer.backgroundColor = UIColor.green.cgColor
                        viewDailyStatus.layer.mask = rectShape
                    
                    viewWeeklyStatus.layer.backgroundColor = UIColor.green.cgColor
                    viewWeeklyStatus.layer.mask = rectShape
                    
                    viewDailyStatus.layer.backgroundColor = UIColor.green.cgColor
                    viewDailyStatus.layer.mask = rectShape
                  }
                
                
        //        self.viewDailyStatus.roundCorners([.bottomLeft, .bottomRight], radius: 2)
        //        self.viewWeeklyStatus.roundCorners([.bottomLeft, .bottomRight], radius: 2)
        //        self.viewMonthlyStatus.roundCorners([.bottomLeft, .bottomRight], radius: 2)

                self.viewDailyStatus.backgroundColor = UIColor.systemGreen
                self.btnDailyStatus.setTitleColor(UIColor.systemGreen, for: .normal)
                
                self.btnDailyStatus.sizeToFit()
                self.btnweeklyStatus.sizeToFit()
                self.btnMonthlyStatus.sizeToFit()

                self.sHumidity = "0"
                self.sPM10 = "0"
                self.sPM1 = "0"
                self.sVOC = "0"
                self.sOzone = "0"
        self.sTemperarture = "0"
        self.sCOValue = "0"
        self.sPM2_5 = "0"
        self.sCh2_o = "0"
        self.sCO2 = "0"
        self.sLux = "0"

        self.start()
              
                //
                
                SetAllCharts()
                
                
                
                
        //        setChart()
                
                //
                
                self.GetDashBoardRoomDetails()
                self.GetColorDetails()
                

                
                viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
                viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)

        //        progressBarTemperature.progress = 0.4
                months = ["06", "09", "12", "15", "Now", "21", "00", "03", "01", "02", "00", "03"]
                unitsSold = [60.0, 70.0, 90.0, 85.0, 120.0, 140.0, 90.0, 85.0, 75.0, 60.0, 55.0, 65.0]
                
                
                

                viewBase.dropShadow()

                
                // Do any additional setup after loading the view.
            }
    
    
    
    func start(){
        self.timerTiming = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
        
        
        if UserDefaults.standard.value(forKey: "Timer") as! String == "60"
        {
            
            self.stop()
            self.timerTiming = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)

        }
       else if  UserDefaults.standard.value(forKey: "Timer") as! String == "600"
        {
        self.stop()

//        var timer = Timer.scheduledTimer(withTimeInterval: 600, repeats: true) {
//            (_) in
//            print("Hello world 600")
//            self.GetDeviceAPIDetails()
//            self.GetLuxChartValueAPI()
//            self.GetHumidityChartValueAPI()
//            self.GetPM1ChartValueAPI()
//            self.GetPM10ChartValueAPI()
//            self.Getvoc1ChartValueAPI()
//        }
        
        self.timerTiming = Timer.scheduledTimer(timeInterval: 600, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)

        }
        else if UserDefaults.standard.value(forKey: "Timer") as! String == "1200"
        {
            self.stop()

//            var timer = Timer.scheduledTimer(withTimeInterval: 1200, repeats: true) {
//                (_) in
//                print("Hello world 1200")
//                self.GetDeviceAPIDetails()
//                self.GetLuxChartValueAPI()
//                self.GetHumidityChartValueAPI()
//                self.GetPM1ChartValueAPI()
//                self.GetPM10ChartValueAPI()
//                self.Getvoc1ChartValueAPI()
//            }
            
            
            self.timerTiming = Timer.scheduledTimer(timeInterval: 1200, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)

        }
        else if UserDefaults.standard.value(forKey: "Timer") as! String == "2400"
        {
            self.stop()

//            var timer = Timer.scheduledTimer(withTimeInterval: 2400, repeats: true) {
//                (_) in
//                print("Hello world 2400")
//                self.GetDeviceAPIDetails()
//                self.GetLuxChartValueAPI()
//                self.GetHumidityChartValueAPI()
//                self.GetPM1ChartValueAPI()
//                self.GetPM10ChartValueAPI()
//                self.Getvoc1ChartValueAPI()
//            }
            
            self.timerTiming = Timer.scheduledTimer(timeInterval: 2400, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)

        }
        
        else if UserDefaults.standard.value(forKey: "Timer") as! String == "3600"
        {
            self.stop()

//            var timer = Timer.scheduledTimer(withTimeInterval: 3600, repeats: true) {
//                (_) in
//                print("Hello world 3600")
//                self.GetDeviceAPIDetails()
//                self.GetLuxChartValueAPI()
//                self.GetHumidityChartValueAPI()
//                self.GetPM1ChartValueAPI()
//                self.GetPM10ChartValueAPI()
//                self.Getvoc1ChartValueAPI()
//            }
            
            
            self.timerTiming = Timer.scheduledTimer(timeInterval: 3600, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)

        }
        
        
        
        
       }
    
    
    
    func stop(){
            if let timerTiming = timerTiming {
                timerTiming.invalidate()
            }
        }
    
    
    @objc func timerUpdate() {
           count += 1;
        print("Counttt Timing ", count)
        self.GetDeviceAPIDetails()
        if self.sharedData.getGraphGraphStatus() == "1"
        {
            

            
            
            
            self.viewWeek.isHidden = true
            self.viewMonth.isHidden = true
            if self.sharedData.getGraphGetTimingData() == "1"
            {
                
                self.GetTempChartLast1MinuteDayData()
                self.GetHumidityChartLast1MinuteDayData()
                self.GetCOChartLast1MinuteDayData()
                self.GetOzoneChartLast1MinuteDayData()
                self.GetPM1ChartLast1MinuteDayData()
                self.GetPM2_5ChartLast1MinuteDayData()
                self.GetPM10ChartLast1MinuteDayData()
                self.GetVOCChartLast1MinuteDayData()
                self.GetCH2OChartLast1MinuteDayData()
                self.GetCO2ChartLast1MinuteDayData()
                self.GetLuxChartLast1MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "2"
            {
                self.GetTempChartLast2MinuteDayData()
                self.GetHumidityChartLast2MinuteDayData()
                self.GetCOChartLast2MinuteDayData()
                self.GetOzoneChartLast2MinuteDayData()
                self.GetPM1ChartLast2MinuteDayData()
                self.GetPM2_5ChartLast2MinuteDayData()
                self.GetPM10ChartLast2MinuteDayData()
                self.GetVOCChartLast2MinuteDayData()
                self.GetCH2OChartLast2MinuteDayData()
                self.GetCO2ChartLast2MinuteDayData()
                self.GetLuxChartLast2MinuteDayData()
            }
            
            else  if self.sharedData.getGraphGetTimingData() == "5"
            {
                self.GetTempChartLast5MinuteDayData()
                self.GetHumidityChartLast5MinuteDayData()
                self.GetCOChartLast5MinuteDayData()
                self.GetOzoneChartLast5MinuteDayData()
                self.GetPM1ChartLast5MinuteDayData()
                self.GetPM2_5ChartLast5MinuteDayData()
                self.GetPM10ChartLast5MinuteDayData()
                self.GetVOCChartLast5MinuteDayData()
                self.GetCH2OChartLast5MinuteDayData()
                self.GetCO2ChartLast5MinuteDayData()
                self.GetLuxChartLast5MinuteDayData()
            
            }
            else  if self.sharedData.getGraphGetTimingData() == "10"
            {
                self.GetTempChartLast10MinuteDayData()
                self.GetHumidityChartLast10MinuteDayData()
                self.GetCOChartLast10MinuteDayData()
                self.GetOzoneChartLast10MinuteDayData()
                self.GetPM10ChartLast10MinuteDayData()
                self.GetPM2_5ChartLast10MinuteDayData()
                self.GetPM10ChartLast10MinuteDayData()
                self.GetVOCChartLast10MinuteDayData()
                self.GetCH2OChartLast10MinuteDayData()
                self.GetCO2ChartLast10MinuteDayData()
                self.GetLuxChartLast10MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "30"
            {
                self.GetTempChartLast30MinuteDayData()
                self.GetHumidityChartLast30MinuteDayData()
                self.GetCOChartLast30MinuteDayData()
                self.GetOzoneChartLast30MinuteDayData()
                self.GetPM1ChartLast30MinuteDayData()
                self.GetPM2_5ChartLast30MinuteDayData()
                self.GetPM10ChartLast30MinuteDayData()
                self.GetVOCChartLast30MinuteDayData()
                self.GetCH2OChartLast30MinuteDayData()
                self.GetCO2ChartLast30MinuteDayData()
                self.GetLuxChartLast30MinuteDayData()
            }
            else  if self.sharedData.getGraphGetTimingData() == "60"
            {
                self.GetTempChartLast60MinuteDayData()
                self.GetHumidityChartLast60MinuteDayData()
                self.GetCOChartLast60MinuteDayData()
                self.GetOzoneChartLast60MinuteDayData()
                self.GetPM1ChartLast60MinuteDayData()
                self.GetPM2_5ChartLast60MinuteDayData()
                self.GetPM10ChartLast60MinuteDayData()
                self.GetVOCChartLast60MinuteDayData()
                self.GetCH2OChartLast60MinuteDayData()
                self.GetCO2ChartLast60MinuteDayData()
                self.GetLuxChartLast60MinuteDayData()
            
            }
            else  if self.sharedData.getGraphGetTimingData() == "120"
            {
                self.GetTempChartLast2HoursDayData()
                self.GetHumidityChartLast2HoursDayData()
                self.GetCOChartLast2HoursDayData()
                self.GetOzoneChartLast2HoursDayData()
                self.GetPM1ChartLast2HoursDayData()
                self.GetPM2_5ChartLast2HoursDayData()
                self.GetPM10ChartLast2HoursDayData()
                self.GetVOCChartLast2HoursDayData()
                self.GetCH2OChartLast2HoursDayData()
                self.GetCO2ChartLast2HoursDayData()
                self.GetLuxChartLast2HoursDayData()
            
                
            } else  if self.sharedData.getGraphGetTimingData() == "480"
            {
                self.GetTempChartLast8HoursDayData()
                self.GetHumidityChartLast8HoursDayData()
                self.GetCOChartLast8HoursDayData()
                self.GetOzoneChartLast8HoursDayData()
                self.GetPM1ChartLast8HoursDayData()
                self.GetPM2_5ChartLast8HoursDayData()
                self.GetPM10ChartLast8HoursDayData()
                self.GetVOCChartLast8HoursDayData()
                self.GetCH2OChartLast8HoursDayData()
                self.GetCO2ChartLast8HoursDayData()
                self.GetLuxChartLast8HoursDayData()
            
            }
            else
            {
                
            self.GetTemperatureChartLastDayData()
            self.GetHumidityChartLastDayData()
            self.GetCOChartLastDayData()
            self.GetOzoneChartLastDayData()
            self.GetPM1ChartLastDayData()
            self.GetPM2_5ChartLastDayData()
            self.GetPM10ChartLastDayData()
            self.GetVOCChartLastDayData()
            self.GetCH2OChartLastDayData()
            self.GetCO2ChartLastDayData()
            self.GetLuxChartLastDayData()
            }
        }
        else if self.sharedData.getGraphGraphStatus() == "2"
        {
            self.viewWeek.isHidden = false
            self.viewMonth.isHidden = true
            
            self.GetTemperatureChartLastWeekData()
            self.GetHumidityChartLastWeekData()
            self.GetCOChartLastWeekData()
            self.GetOzoneChartLastWeekData()
            self.GetPM1ChartLastWeekData()
            self.GetPM2_5ChartLastWeekData()
            self.GetPM10ChartLastWeekData()
            self.GetVOCChartLastWeekData()
            self.GetCH2OChartLastWeekData()
            self.GetCO2ChartLastWeekData()
            self.GetLuxChartLastWeekData()
        }
        else if self.sharedData.getGraphGraphStatus() == "3"
        {
            self.viewWeek.isHidden = true
            self.viewMonth.isHidden = false
            
            self.GetTempChartLastMonthData()
            self.GetHumidityChartLastMonthData()
            self.GetCOChartLastMonthData()
            self.GetOzoneChartLastMonthData()
            self.GetPM1ChartLastMonthData()
            self.GetPM2_5ChartLastMonthData()
            self.GetPM10ChartLastMonthData()
            self.GetVOCChartLastMonthData()
            self.GetCH2OChartLastMonthData()
            self.GetCO2ChartLastMonthData()
            self.GetLuxChartLastMonthData()
        }
       
        
       }
    
    
    
    
    func SetAllCharts()
    {
       
        
        
        // Humidity Chart
        humidityLineChartView.delegate = self
        humidityLineChartView.backgroundColor =  UIColor.white
        humidityLineChartView.rightAxis.enabled = false
        humidityLineChartView.xAxis.enabled = true
        let yAxis1 = humidityLineChartView.leftAxis
        yAxis1.labelFont = .boldSystemFont(ofSize: 12)
        
        yAxis1.setLabelCount(10, force: false)
        yAxis1.labelTextColor = .systemGreen
        yAxis1.axisLineColor = .orange
        yAxis1.labelPosition = .outsideChart
        humidityLineChartView.xAxis.labelPosition = .bottom
        humidityLineChartView.xAxis.setLabelCount(10, force: false)
        humidityLineChartView.xAxis.gridColor = UIColor.orange
        humidityLineChartView.leftAxis.gridColor = UIColor.orange
        humidityLineChartView.animate(xAxisDuration: 3)
        humidityLineChartView.backgroundColor = UIColor.white
        
        // PM10 Chart
        PM1oLineChartView.delegate = self
        PM1oLineChartView.backgroundColor = UIColor.white
        
        PM1oLineChartView.rightAxis.enabled = false
        PM1oLineChartView.xAxis.enabled = true
        let yAxis2 = PM1oLineChartView.leftAxis
        yAxis2.labelFont = .boldSystemFont(ofSize: 12)
        
        yAxis2.setLabelCount(10, force: false)
        yAxis2.labelTextColor = .systemYellow
        yAxis2.axisLineColor = .orange
        yAxis2.labelPosition = .outsideChart
        PM1oLineChartView.xAxis.labelPosition = .bottom
        PM1oLineChartView.xAxis.setLabelCount(10, force: false)
        PM1oLineChartView.xAxis.gridColor = UIColor.orange
        PM1oLineChartView.leftAxis.gridColor = UIColor.orange
        PM1oLineChartView.animate(xAxisDuration: 3)
        
        // PM1 Chart
        PM1LineChartView.delegate = self
        PM1LineChartView.backgroundColor = UIColor.white

        PM1LineChartView.rightAxis.enabled = false
        PM1LineChartView.xAxis.enabled = true
        let yAxis3 = PM1LineChartView.leftAxis
        yAxis3.labelFont = .boldSystemFont(ofSize: 12)
        
        yAxis3.setLabelCount(10, force: false)
        yAxis3.labelTextColor = .systemYellow
        yAxis3.axisLineColor = .orange
        yAxis3.labelPosition = .outsideChart
        PM1LineChartView.xAxis.labelPosition = .bottom
        PM1LineChartView.xAxis.setLabelCount(10, force: false)
        PM1LineChartView.xAxis.gridColor = UIColor.orange
        PM1LineChartView.leftAxis.gridColor = UIColor.orange
        PM1LineChartView.animate(xAxisDuration: 3)
        
        // VOC Chart
        VOCLineChartView.delegate = self
        VOCLineChartView.backgroundColor = UIColor.white
        
        VOCLineChartView.rightAxis.enabled = false
        VOCLineChartView.xAxis.enabled = true
        let yAxis4 = VOCLineChartView.leftAxis
        yAxis4.labelFont = .boldSystemFont(ofSize: 12)
        
        yAxis4.setLabelCount(10, force: false)
        yAxis4.labelTextColor = .systemRed
        yAxis4.axisLineColor = .orange
        yAxis4.labelPosition = .outsideChart
        VOCLineChartView.xAxis.labelPosition = .bottom
        VOCLineChartView.xAxis.setLabelCount(10, force: false)
        VOCLineChartView.xAxis.gridColor = UIColor.orange
        VOCLineChartView.leftAxis.gridColor = UIColor.orange
        VOCLineChartView.animate(xAxisDuration: 3)
        
        // LuxChart
        luxLineChartView.delegate = self
        luxLineChartView.backgroundColor = UIColor.white
        
        luxLineChartView.rightAxis.enabled = false
        luxLineChartView.xAxis.enabled = true
        let yAxis = luxLineChartView.leftAxis
        yAxis.labelFont = .boldSystemFont(ofSize: 12)
        
        yAxis.setLabelCount(10, force: false)
        yAxis.labelTextColor = .systemGreen
        yAxis.axisLineColor = .orange
        yAxis.labelPosition = .outsideChart
        luxLineChartView.xAxis.labelPosition = .bottom
        luxLineChartView.xAxis.setLabelCount(10, force: false)
        luxLineChartView.xAxis.gridColor = UIColor.orange
        luxLineChartView.leftAxis.gridColor = UIColor.orange
        luxLineChartView.animate(xAxisDuration: 3)
        luxLineChartView.backgroundColor = UIColor.white
        
        
    }
    
    
    
    
    
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print("Chart selected",entry)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
        viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)

        months = ["06", "09", "12", "15", "12", "21", "00", "03", "01", "02", "00", "03"]
        unitsSold = [60.0, 70.0, 90.0, 85.0, 120.0, 140.0, 90.0, 85.0, 75.0, 60.0, 55.0, 65.0]
        
     
        viewBase.dropShadow()
//        viewBase3.dropShadow()
//        viewBase2.dropShadow()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func setPM10Chart()
    {
        
        // PM10
        
            PM1oLineChartView.noDataText = "You need to provide data for the chart."
            var dataEntries2: [ChartDataEntry] = []

            for i in 0..<self.sPM10MeasreValue.count {

//                let dataEntry = ChartDataEntry(x: Double(i) , y: self.sPM10MeasreValue[i])
                
                let dataentry = ChartDataEntry(x: Double(i), y: self.sPM10MeasreValue[i], data: self.sPM10Dates)

                dataEntries2.append(dataentry)


            }

        let chartDataSet2 = LineChartDataSet(entries: dataEntries2, label: "PM10")

        chartDataSet2.drawCirclesEnabled = false
        chartDataSet2.mode = .horizontalBezier
        
        chartDataSet2.colors = [UIColor.systemYellow]

        chartDataSet2.lineWidth = 3
        chartDataSet2.drawVerticalHighlightIndicatorEnabled = false
        chartDataSet2.highlightColor = .systemRed
        let data2 = LineChartData(dataSet: chartDataSet2)
        data2.setDrawValues(false)
        PM1oLineChartView.data = data2
        let xAxis = PM1oLineChartView.xAxis
        xAxis.labelPosition = .bottom
        xAxis.axisMinimum = 0
        xAxis.granularity = 1
        xAxis.valueFormatter = IndexAxisValueFormatter(values: self.sPM10Dates)
        
    }
    
    func setPM1Chart()
    {
        // PM1
        
            PM1LineChartView.noDataText = "You need to provide data for the chart."
            var dataEntries3: [ChartDataEntry] = []

            for i in 0..<self.sPM1MeasreValue.count {

//                let dataEntry = ChartDataEntry(x: Double(i) , y: self.sPM1MeasreValue[i])
                
                let dataentry = ChartDataEntry(x: Double(i), y: self.sPM1MeasreValue[i], data: self.sPM1Dates)

                dataEntries3.append(dataentry)


            }

        let chartDataSet3 = LineChartDataSet(entries: dataEntries3, label: "PM1")

        chartDataSet3.drawCirclesEnabled = false
        chartDataSet3.mode = .cubicBezier
        
        chartDataSet3.colors = [UIColor.systemYellow]

        chartDataSet3.lineWidth = 3
        chartDataSet3.drawVerticalHighlightIndicatorEnabled = false
        chartDataSet3.highlightColor = .systemRed
        let data3 = LineChartData(dataSet: chartDataSet3)
        data3.setDrawValues(false)
        PM1LineChartView.data = data3
        let xAxis = PM1LineChartView.xAxis
        xAxis.labelPosition = .bottom
        xAxis.axisMinimum = 0
        xAxis.granularity = 1
        xAxis.valueFormatter = IndexAxisValueFormatter(values: self.sPM1Dates)
        
}
    func setVOCChart() {
        
        
        // VOC
        
            VOCLineChartView.noDataText = "You need to provide data for the chart."
            var dataEntries4: [ChartDataEntry] = []

            for i in 0..<self.sVOCMeasreValue.count {

//                let dataEntry = ChartDataEntry(x: Double(i) , y: self.sVOCMeasreValue[i])
//                dataEntries4.append(dataEntry)
                
                let dataEntries = ChartDataEntry(x: Double(i), y: self.sVOCMeasreValue[i], data: self.sVOCDates)

                dataEntries4.append(dataEntries)


            }

        let chartDataSet4 = LineChartDataSet(entries: dataEntries4, label: "TVOC")

        chartDataSet4.drawCirclesEnabled = false
        chartDataSet4.mode = .cubicBezier
        
        chartDataSet4.colors = [UIColor.systemRed]

        chartDataSet4.lineWidth = 3
        chartDataSet4.drawVerticalHighlightIndicatorEnabled = false
        chartDataSet4.highlightColor = .systemRed
        let data4 = LineChartData(dataSet: chartDataSet4)
        data4.setDrawValues(false)
        VOCLineChartView.data = data4
        
        let xAxis = VOCLineChartView.xAxis
        xAxis.labelPosition = .bottom
        xAxis.axisMinimum = 0
        xAxis.granularity = 1
        xAxis.valueFormatter = IndexAxisValueFormatter(values: self.sVOCDates)
        
        
        
    }
    
    
    func SetLuxChart() {
        
        // lux
        luxLineChartView.noDataText = "You need to provide data for the chart."
        var dataEntries5: [ChartDataEntry] = []

        for i in 0..<self.sluxMeasreValue.count {

//            let dataEntry = ChartDataEntry(x: Double(i) , y: self.sluxMeasreValue[i])
            
            let dataentry = ChartDataEntry(x: Double(i), y: self.sluxMeasreValue[i], data: self.sLuxDates)

            dataEntries5.append(dataentry)


        }

    let chartDataSet5 = LineChartDataSet(entries: dataEntries5, label: "LUX")

        chartDataSet5.drawCirclesEnabled = false
        chartDataSet5.mode = .cubicBezier
        chartDataSet5.colors = [UIColor.systemGreen]

    
        chartDataSet5.lineWidth = 3
        chartDataSet5.drawVerticalHighlightIndicatorEnabled = false
        chartDataSet5.highlightColor = .systemRed
    let data5 = LineChartData(dataSet: chartDataSet5)
    data5.setDrawValues(false)
    luxLineChartView.data = data5
        let xAxis = luxLineChartView.xAxis
        xAxis.labelPosition = .bottom
        xAxis.axisMinimum = 0
        xAxis.granularity = 1
        xAxis.valueFormatter = IndexAxisValueFormatter(values: self.sLuxDates)
        
    }
    
    func setHumidityChart(dataEntryX forX:[String],dataEntryY forY: [Double]) {
        
        
        // Humidity
        
            humidityLineChartView.noDataText = "You need to provide data for the chart."
            var dataEntries1: [ChartDataEntry] = []

            for i in 0..<self.sHumMeasreValue.count {

//                let dataEntry = ChartDataEntry(x: Double(i) , y: self.sHumMeasreValue[i])
                
                let dataentry = ChartDataEntry(x: Double(i), y: self.sHumMeasreValue[i], data: self.sHumDates)
                
                dataEntries1.append(dataentry)


            }

        let chartDataSet1 = LineChartDataSet(entries: dataEntries1, label: "Humidity")

        chartDataSet1.drawCirclesEnabled = false
        chartDataSet1.mode = .cubicBezier
        
        chartDataSet1.colors = [UIColor.systemGreen]
        chartDataSet1.lineWidth = 3
        chartDataSet1.drawVerticalHighlightIndicatorEnabled = false
        chartDataSet1.highlightColor = .systemRed
        let data1 = LineChartData(dataSet: chartDataSet1)
        data1.setDrawValues(false)
        humidityLineChartView.data = data1
        
        let xAxis = humidityLineChartView.xAxis
        xAxis.labelPosition = .bottom
        xAxis.axisMinimum = 0
        xAxis.granularity = 1
        xAxis.valueFormatter = IndexAxisValueFormatter(values: self.sHumDates)

    }
    
    
   
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var countVar:Int = 0
        if collectionView == collectionViewHome
        {
            countVar = self.dashboardata.count
        }
        else if collectionView == collectionView2
        {
            countVar = 11
        }
        
        return countVar
    }
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if collectionView == collectionViewHome
        {

            let homeTypeCollectionViewCell1 = collectionViewHome.dequeueReusableCell(withReuseIdentifier: "Home1CollectionViewCell", for: indexPath as IndexPath) as! Home1CollectionViewCell
            
            
            homeTypeCollectionViewCell1.btnEye.tag = Int(self.dashboardata[indexPath.row].room_id!)
            
            homeTypeCollectionViewCell1.imgRoom.sd_setImage(with: URL(string: (self.dashboardata[indexPath.row].room_image!)), placeholderImage: UIImage(named: "Transparent"))
            homeTypeCollectionViewCell1.lblHeading.setTitle(self.dashboardata[indexPath.row].room_name, for: .normal)
            homeTypeCollectionViewCell1.lblCount.text = String(self.dashboardata[indexPath.row].deviceListData!.count)
            homeTypeCollectionViewCell1.lblCount.layer.cornerRadius = 7.5
            homeTypeCollectionViewCell1.lblCount.layer.masksToBounds = true
            cell = homeTypeCollectionViewCell1

           
            }
else  if collectionView == collectionView2
{
    
    
    
//    self.purplecolorSensor.removeAll()
//    self.purplecolorsensorData.removeAll()
//
//    self.redcolorSensor.removeAll()
//    self.redcolorsensorData.removeAll()
//
//
//    self.orangecolorSensor.removeAll()
//    self.orangecolorsensorData.removeAll()
//
//    self.yellowcolorSensor.removeAll()
//    self.yellowcolorsensorData.removeAll()
//
//    self.greencolorSensor.removeAll()
//    self.greebcolorsensorData.removeAll()
//
    
    
    var iValue = Int()
    
    var dValue = Double()
    
    var sPgs = String()

    let homeTypeCollectionViewCell1 = collectionView2.dequeueReusableCell(withReuseIdentifier: "Home3CollectionViewCell", for: indexPath as IndexPath) as! Home3CollectionViewCell
    var tempColorCode = String()
    var tempProgressData = Double()

    cell = homeTypeCollectionViewCell1
    if indexPath.row == 0
    {
        homeTypeCollectionViewCell1.lblBase.text = "Temperature"
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemGreen
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemGreen
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sTemperarture!)!)

        homeTypeCollectionViewCell1.circularProgressView.value =  yourFloatvalueFromString
        homeTypeCollectionViewCell1.circularProgressView.unitString = " °C"
        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "Temperature"
            {
                
                
               

                
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Int(item2.min_val!)
                    let iMaxVal = Int(item2.max_val!)
                      let progress  = Int(yourFloatvalueFromString)
                    
//
                     if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        if item2.color == "Red"
                        {
                            print(item2.color)
                        }
                       
                        print("Given temperature color inside the range:",item2.color!)
                        print("Given teperature remark inside the range::", item2.remark!)
                        
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue

                    }
                     else if progress > iMaxVal!
                     {
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        
                        print("Given temperature color out the range:",item2.color!)
                        print("Given teperature remark out the range::", item2.remark!)
                        
                        
                        tempColorCode = item2.color!
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                        
                     }
                }
                
                
                if tempColorCode == "Purple"
                {
                    
                    if !purplecolorSensor.contains("Temperature") {
                        purplecolorSensor.append("Temperature")
                        purplecolorsensorName.append(sPgs)

                        purplecolorsensorData.append(Float(tempProgressData))
                    }
                    
                    
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("Temperature") {
                        redcolorSensor.append("Temperature")
                        redcolorsensorName.append(sPgs)

                        redcolorsensorData.append(Float(tempProgressData))
                    }
                    
                }
                else if tempColorCode == "Orange"
                {
                    
                    if !orangecolorSensor.contains("Temperature") {
                        orangecolorSensor.append("Temperature")
                        orangecolorsensorName.append(sPgs)

                        orangecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("Temperature") {
                    yellowcolorSensor.append("Temperature")
                    yellowcolorsensorData.append(Float(tempProgressData))
                        yellowcolorsensorName.append(sPgs)

                    }
                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("Temperature") {
                    greencolorSensor.append("Temperature")
                    greebcolorsensorData.append(Float(tempProgressData))
                        greencolorsensorName.append(sPgs)

                    }
                }
                
            }

        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

        }
        }
    }
    else if indexPath.row == 1
    {
        homeTypeCollectionViewCell1.lblBase.text = "Realtive Humidity"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.hum1?.measureValue6
        
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemYellow
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemYellow
//
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sHumidity!)!)

        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString
        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.unitString = "%RH"
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemYellow
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "Realtive Humidity"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Int(item2.min_val!)
                    let iMaxVal = Int(item2.max_val!)
                      let progress  = Int(yourFloatvalueFromString)
                    
                     if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        
                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        print("Given Humidity color inside the range:",item2.color!)
                        print("Given Humidity remark inside the range::", item2.remark!)
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue

                    }
                     else if progress > iMaxVal!
                     {
                        
                        
                        
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                     }
                }
                if tempColorCode == "Purple"
                {
                    if !purplecolorSensor.contains("Realtive Humidity") {
                    purplecolorSensor.append("Realtive Humidity")
                        purplecolorsensorName.append(sPgs)

                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("Realtive Humidity") {
                    redcolorSensor.append("Realtive Humidity")
                    redcolorsensorData.append(Float(tempProgressData))
                        redcolorsensorName.append(sPgs)

                    }
                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("Realtive Humidity") {
                    orangecolorSensor.append("Realtive Humidity")
                    orangecolorsensorData.append(Float(tempProgressData))
                        orangecolorsensorName.append(sPgs)

                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("Realtive Humidity") {
                    yellowcolorSensor.append("Realtive Humidity")
                    yellowcolorsensorData.append(Float(tempProgressData))
                        yellowcolorsensorName.append(sPgs)

                    }
                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("Realtive Humidity") {

                    greencolorSensor.append("Realtive Humidity")
                    greebcolorsensorData.append(Float(tempProgressData))
                        greencolorsensorName.append(sPgs)

                    }
                }
                
            }
        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

        }
        }
        
    }
    else if indexPath.row == 2
    {
        homeTypeCollectionViewCell1.lblBase.text = "CO"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.con?.measureValueString10
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemYellow
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemYellow
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sCOValue!)!)

        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString

        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemYellow
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "ppm"
        
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "Carbon Monoxide"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Int(item2.min_val!)
                    let iMaxVal = Int(item2.max_val!)
                      let progress  = Int(yourFloatvalueFromString)
                    
                     if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarTemperature.progress =    Float(dValue)
//                        self.lblTemperature.text = String(progress)  + " ppm"
//
//                        self.progressBarTemperature.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarTemperature.tintColor = UIColor.red
//
//                        }
//                        }
//
                        
                        print("Given CO color inside the range:",item2.color!)
                        print("Given CO remark inside the range::", item2.remark!)
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                    }
                     else if progress > iMaxVal!
                     {
                        
                        self.lblProgressBar1Heading.text = "Carbon Monoxide"
                        
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        
                        
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                        
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarTemperature.progress =    Float(dValue)
//                        self.lblTemperature.text = String(progress)  + " ppm"
//
//                        self.progressBarTemperature.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarTemperature.tintColor = UIColor.red
//
//                        }
//
//                            print("Given CO color out the range:",item2.color!)
//                            print("Given CO remark out the range::", item2.remark!)
//
//                        }
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                     }
                }
                if tempColorCode == "Purple"
                {
                    
                    if !purplecolorSensor.contains("Carbon Monoxide") {
                    purplecolorSensor.append("Carbon Monoxide")
                        purplecolorsensorName.append(sPgs)

                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("Carbon Monoxide") {
                    redcolorSensor.append("Carbon Monoxide")
                    redcolorsensorData.append(Float(tempProgressData))
                        redcolorsensorName.append(sPgs)

                    }
                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("Carbon Monoxide") {
                        orangecolorsensorName.append(sPgs)

                    orangecolorSensor.append("Carbon Monoxide")
                    orangecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("Carbon Monoxide") {
                    yellowcolorSensor.append("Carbon Monoxide")
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("Carbon Monoxide") {
                    greencolorSensor.append("Carbon Monoxide")
                        greencolorsensorName.append(sPgs)

                    greebcolorsensorData.append(Float(tempProgressData))
                    }
                }
             
            }
        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

        }
        
        }
    }
    else if indexPath.row == 3
    {
        homeTypeCollectionViewCell1.lblBase.text = "Ozone"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.o3n?.measureValueString12
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemRed
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemRed
        
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sOzone!)!)

        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString


        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemRed
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "ppm"
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "Ozone"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Int(item2.min_val!)
                    let iMaxVal = Int(item2.max_val!)
                      let progress  = Int(yourFloatvalueFromString) / 10
                    if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
                        {
                        
//                        self.progressBarcarbonDioxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarcarbonDioxide.progress =    Float(dValue)
//                        self.lblCO2.text = String(Int(yourFloatvalueFromString))  + " ppm"
//                        self.lblProgressBar2Heading.text = "Ozone"
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarcarbonDioxide.tintColor = UIColor.red
//
//                        }
                            
                            print("Given Ozone color inside the range:",item2.color!)
                            print("Given Ozone remark inside the range::", item2.remark!)
                            
                            sPgs = String(progress)
                            
                            if sPgs.count == 2
                            {
                                dValue = Double(progress) / Double(100)

                            }
                            else if sPgs.count == 1
                                {
                                    dValue = Double(progress) / 10

                                }
                            else if sPgs.count == 3
                           {
                                dValue = Double(progress) / Double(1000)

                            }
                            else if sPgs.count == 4
                            {
                                dValue = Double(progress) / Double(10000)

                            }
                            
                            tempColorCode = item2.color!
                            tempProgressData = dValue
                        }
                    }
                    else if progress > iMaxVal!
                    {
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                        
                        
                        
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//
//                        self.progressBarcarbonDioxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarcarbonDioxide.progress =    Float(dValue)
//                        self.lblCO2.text = String(Int(yourFloatvalueFromString))  + " ppm"
//                        self.lblProgressBar2Heading.text = "Ozone"
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarcarbonDioxide.tintColor = UIColor.red
//
//                        }
//
//
//                            print("Given Ozone color out the range:",item2.color!)
//                            print("Given Ozone remark out the range::", item2.remark!)
//
//                        }
                       homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                       homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                    }
                }
                if tempColorCode == "Purple"
                {
                    
                    if !purplecolorSensor.contains("Ozone") {

                    purplecolorSensor.append("Ozone")
                        purplecolorsensorName.append(sPgs)

                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("Ozone") {
                        redcolorsensorName.append(sPgs)
                    redcolorSensor.append("Ozone")
                    redcolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("Ozone") {
                        orangecolorsensorName.append(sPgs)

                    orangecolorSensor.append("Ozone")
                    orangecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("Ozone") {
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorSensor.append("Ozone")
                    yellowcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("Ozone") {
                        greencolorsensorName.append(sPgs)

                    greencolorSensor.append("Ozone")
                    greebcolorsensorData.append(Float(tempProgressData))
                    }
                }
            }

        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

        }
        }
        
    }
    
    else if indexPath.row == 4
    {
        homeTypeCollectionViewCell1.lblBase.text = "PM 1"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.pm1n?.measureValueString4
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemGreen
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemGreen
        
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sPM1!)!)
        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString

        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemGreen
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "µg/m3"
        
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "PM 1"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Int(item2.min_val!)
                    let iMaxVal = Int(item2.max_val!)
                      let progress  = Int(yourFloatvalueFromString)
                    
                     if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.lblProgressBar3Heading.text = "PM 1"
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarFormaldyhyde.tintColor = UIColor.red
//
//                        }
//
//
//                        }
                        
                        print("Given PM1 color in the range:",item2.color!)
                        print("Given PM1 remark in the range::", item2.remark!)
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue

                    }
                     else if progress > iMaxVal!
                     {
                        
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                        
                        
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.lblProgressBar3Heading.text = "PM 1"
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarFormaldyhyde.tintColor = UIColor.red
//
//                        }
//                        }
//
                        
                        print("Given PM1 color out the range:",item2.color!)
                        print("Given PM1 remark out the range::", item2.remark!)
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        
                       
                     }
                }
                if tempColorCode == "Purple"
                {
                    if !purplecolorSensor.contains("PM 1") {

                    purplecolorSensor.append("PM 1")
                        purplecolorsensorName.append(sPgs)

                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("PM 1") {
                    redcolorSensor.append("PM 1")
                        redcolorsensorName.append(sPgs)

                    redcolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("PM 1") {
                    orangecolorSensor.append("PM 1")
                        orangecolorsensorName.append(sPgs)

                    orangecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("PM 1") {
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorSensor.append("Temperature")
                    yellowcolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("PM 1") {
                        greencolorsensorName.append(sPgs)

                    greencolorSensor.append("PM 1")
                    greebcolorsensorData.append(Float(tempProgressData))
                    }
                }
            }

        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white
                    
        }
        }
    }
    else if indexPath.row == 5
    {
        homeTypeCollectionViewCell1.lblBase.text = "PM 2.5"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.pm2_5n?.measureValueString9
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemGreen
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemGreen
        
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sPM2_5!)!)
        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString

        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemGreen
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "µg/m3"
       
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        
        
        if sensors!.count > 0
        {
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "PM 2.5"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Int(item2.min_val!)
                    let iMaxVal = Int(item2.max_val!)
                      let progress  = Int(yourFloatvalueFromString)
                      if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarFormaldyhyde.tintColor = UIColor.red
//
//                        }
//                        }
                        print("Given PM 2.5 color in the range:",item2.color!)
                        print("Given PM 2.5 remark in the range::", item2.remark!)
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                        
                    }
                      else if progress > iMaxVal!
                      {
                         homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                         homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                         homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                         homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        self.lblProgressBar3Heading.text = "PM 2.5"
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                        
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarFormaldyhyde.tintColor = UIColor.red
//
//                        }
//                        }
                        
                        print("Given PM 2.5 color out the range:",item2.color!)
                        print("Given PM 2.5 remark out the range::", item2.remark!)
                        
                       
                      }
                }
                if tempColorCode == "Purple"
                {
                    if !purplecolorSensor.contains("PM 2.5") {
                        purplecolorsensorName.append(sPgs)

                    purplecolorSensor.append("PM 2.5")
                    
                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("PM 2.5") {
                        redcolorsensorName.append(sPgs)

                    redcolorSensor.append("PM 2.5")
                    redcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("PM 2.5") {
                        orangecolorsensorName.append(sPgs)

                    orangecolorSensor.append("PM 2.5")
                    orangecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("PM 2.5") {
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorSensor.append("PM 2.5")
                    yellowcolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("PM 2.5") {
                        greencolorsensorName.append(sPgs)

                    greencolorSensor.append("PM 2.5")
                    greebcolorsensorData.append(Float(tempProgressData))
                    }

                }
            }
        
        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

                    
        }
        }
        
    }
    else if indexPath.row == 6
    {
        homeTypeCollectionViewCell1.lblBase.text = "PM 10"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.pm10n?.measureValueString7
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemGreen
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemGreen
        
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sPM10!)!)
        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString

        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemGreen
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "µg/m3"
        
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        
        if sensors!.count > 0
        {
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "PM 10"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Int(item2.min_val!)
                    let iMaxVal = Int(item2.max_val!)
                      let progress  = Int(yourFloatvalueFromString)
                    
                     if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarFormaldyhyde.tintColor = UIColor.red
//
//                        }
//                        }
                        print("Given PM 10 color in the range:",item2.color!)
                        print("Given PM 10 remark in the range::", item2.remark!)
                        
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                    }
                     else if progress > iMaxVal!
                     {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        self.lblProgressBar3Heading.text = "PM 10"
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarFormaldyhyde.tintColor = UIColor.red
//
//                        }
//                        }
//
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                        
                        
                        print("Given PM 2.5 color out the range:",item2.color!)
                        print("Given PM 2.5 remark out the range::", item2.remark!)
                        
                       
                     }
                        
                }
                if tempColorCode == "Purple"
                {
                    if !purplecolorSensor.contains("PM 10") {

                    purplecolorSensor.append("PM 10")
                        purplecolorsensorName.append(sPgs)

                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("PM 10") {
                        redcolorsensorName.append(sPgs)

                    redcolorSensor.append("PM 10")
                    redcolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("PM 10") {
                        orangecolorsensorName.append(sPgs)

                    orangecolorSensor.append("PM 10")
                    orangecolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("PM 10") {
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorSensor.append("PM 10")
                    yellowcolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("PM 10") {
                        greencolorsensorName.append(sPgs)

                    greencolorSensor.append("PM 10")
                    greebcolorsensorData.append(Float(tempProgressData))
                    }

                }
                
            }

        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

                    
        }
        }
    }
    else if indexPath.row == 7
    {
        homeTypeCollectionViewCell1.lblBase.text = "TVOC"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.voc1?.measureValueString1
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemGreen
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemGreen
        
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sVOC!)!)
        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString

        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemGreen
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "µg/m3"
        
        
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "TVOC"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Double(item2.min_val!)
                    let iMaxVal = Double(item2.max_val!)
                      let progress  = Double(yourFloatvalueFromString)
                    
                    if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        if progress == 0
                        {
                            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
                            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
                            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white
                        }
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarCarbonMonoxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarCarbonMonoxide.progress =    Float(dValue)
//                        self.lblCO3.text = String(progress)  + " µg/m3"
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarCarbonMonoxide.tintColor = UIColor.red
//
//                        }
//                        }
                        print("Given TVOC color in the range:",item2.color!)
                        print("Given TVOC remark in the range::", item2.remark!)
                    }
                    else if progress > iMaxVal!
                    {
                        self.lblProgressBar4Heading.text = "TVOC"
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else
                            if sPgs.count == 1
                            {
                                dValue = Double(progress) / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarCarbonMonoxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarCarbonMonoxide.progress =    Float(dValue)
//                        self.lblCO3.text = String(progress)  + " µg/m3"
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarCarbonMonoxide.tintColor = UIColor.red
//
//                        }
//
//                            print("Given TVOC color out the range:",item2.color!)
//                            print("Given TVOC remark out the range::", item2.remark!)
//                        }
                       homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                       homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                    }
                    
                    
                }
                
                if tempColorCode == "Purple"
                {
                    if !purplecolorSensor.contains("TVOC") {
                        purplecolorsensorName.append(sPgs)

                    purplecolorSensor.append("TVOC")
                    
                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("TVOC") {
                        redcolorsensorName.append(sPgs)

                    redcolorSensor.append("TVOC")
                    redcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("TVOC") {
                        orangecolorsensorName.append(sPgs)

                    orangecolorSensor.append("TVOC")
                    orangecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("TVOC") {
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorSensor.append("TVOC")
                    yellowcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("TVOC") {
                        greencolorsensorName.append(sPgs)

                    greencolorSensor.append("TVOC")
                    greebcolorsensorData.append(Float(tempProgressData))
                    }
                }
            }

        }
           
            
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

                    
        }
            
        }
    }
    
    
    else if indexPath.row == 8
    {
        homeTypeCollectionViewCell1.lblBase.text = "CH2O"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.ch2on?.measureValueString31
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemGreen
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemGreen
        
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sCh2_o!)!)
        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString

        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemGreen
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "ppm"
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
           
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "Formaldehyde"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Double(item2.min_val!)
                    let iMaxVal = Double(item2.max_val!)
                      let progress  = Double(yourFloatvalueFromString)
                    
                     if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarCarbonMonoxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarCarbonMonoxide.progress =    Float(dValue)
//                        self.lblCO3.text = String(Int(progress))  + " ppm"
//                        self.lblProgressBar4Heading.text = "Formaldehyde"
////                        self.progressBarFormaldyhyde.progress =    Float(dValue)
////                        self.lblFormaldyhyde.text = String(progress)  + " ppm"
////                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
////
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarCarbonMonoxide.tintColor = UIColor.red
//
//                        }
//                        }
                        print("Given Formaldehyde color in the range:",item2.color!)
                        print("Given Formaldehyde remark in the range::", item2.remark!)
                        sPgs = String(Int(progress))
                        
                        if sPgs.count == 2
                        {
                            dValue = progress / 100

                        }
                        else
                            if sPgs.count == 1
                            {
                                dValue = progress / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = progress / 1000

                        }
                        else if sPgs.count == 4
                        {
                            dValue = progress / 10000

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                    }
                     else if progress > iMaxVal!
                     {
                        
                        sPgs = String(Int(progress))
                        
                        if sPgs.count == 2
                        {
                            dValue = progress / 100

                        }
                        else
                            if sPgs.count == 1
                            {
                                dValue = progress / 10

                            }
                        else if sPgs.count == 3
                       {
                            dValue = progress / 1000

                        }
                        else if sPgs.count == 4
                        {
                            dValue = progress / 10000

                        }
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarCarbonMonoxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarCarbonMonoxide.progress =    Float(dValue)
//                        self.lblCO3.text = String(Int(progress))  + " ppm"
//                        self.lblProgressBar4Heading.text = "Formaldehyde"
////                        self.progressBarFormaldyhyde.progress =    Float(dValue)
////                        self.lblFormaldyhyde.text = String(progress)  + " ppm"
////                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
////
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarCarbonMonoxide.tintColor = UIColor.red
//
//                        }
//
//                            print("Given Formaldehyde color out the range:",item2.color!)
//                            print("Given Formaldehyde remark out the range::", item2.remark!)
//                        }
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                     }
                }
                
                if tempColorCode == "Purple"
                {
                    if !purplecolorSensor.contains("Formaldehyde") {

                    purplecolorSensor.append("Formaldehyde")
                        purplecolorsensorName.append(sPgs)

                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("Formaldehyde") {
                        redcolorsensorName.append(sPgs)

                    redcolorSensor.append("Formaldehyde")
                    redcolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("Formaldehyde") {
                        orangecolorsensorName.append(sPgs)

                    orangecolorSensor.append("Formaldehyde")
                    orangecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("Formaldehyde") {
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorSensor.append("Formaldehyde")
                    yellowcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("Formaldehyde") {
                        greencolorsensorName.append(sPgs)

                    greencolorSensor.append("Formaldehyde")
                    greebcolorsensorData.append(Float(tempProgressData))
                    }
                }
            }
        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

                    
        }
        
        }
    }
    
    
    else if indexPath.row == 9
    {
        homeTypeCollectionViewCell1.lblBase.text = "CO2"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.co2n?.measureValueString3
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemGreen
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemGreen
        
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sCO2!)!)
        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString

        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemGreen
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "ppm"
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
           
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "Carbon Dioxide"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Int(item2.min_val!)
                    let iMaxVal = Int(item2.max_val!)
                      let progress  = Int(yourFloatvalueFromString)
                    
                     if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.lblProgressBar3Heading.text = "Carbon Dioxide"
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " ppm"
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarFormaldyhyde.tintColor = UIColor.red
//
//                        }
//                        }
                        print("Given CO2 color in the range:",item2.color!)
                        print("Given CO2 remark in the range::", item2.remark!)
                        
                        
                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                    }
                     else if progress > iMaxVal!
                     {
                        
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
//                        self.progressBarcarbonDioxide.tintColor = UIColor.systemRed
//
//                        self.progressBarcarbonDioxide.progress =    Float(dValue)
//                        self.lblCO2.text = String(progress)  + " ppm"
//                        self.lblProgressBar2Heading.text = "Carbon Dioxide"
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.lblProgressBar3Heading.text = "Carbon Dioxide"
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " ppm"
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarFormaldyhyde.tintColor = UIColor.red
//
//                        }
//                        }
                        print("Given CO2 color out the range:",item2.color!)
                        print("Given CO2 remark out the range::", item2.remark!)
                        
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                     }
                }
                
                
                
                if tempColorCode == "Purple"
                {
                    if !purplecolorSensor.contains("Carbon Dioxide") {

                    purplecolorSensor.append("Carbon Dioxide")
                        purplecolorsensorName.append(sPgs)

                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("Carbon Dioxide") {
                        redcolorsensorName.append(sPgs)

                    redcolorSensor.append("Carbon Dioxide")
                    redcolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("Carbon Dioxide") {
                        orangecolorsensorName.append(sPgs)

                    orangecolorSensor.append("Carbon Dioxide")
                    orangecolorsensorData.append(Float(tempProgressData))
                    }

                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("Carbon Dioxide") {
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorSensor.append("Carbon Dioxide")
                    yellowcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("Carbon Dioxide") {
                        greencolorsensorName.append(sPgs)

                    greencolorSensor.append("Carbon Dioxide")
                    greebcolorsensorData.append(Float(tempProgressData))
                    }
                }
            }
        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

                    
        }
        
        }
    }
    else if indexPath.row == 10
    {
        homeTypeCollectionViewCell1.lblBase.text = "Lux"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.lux1?.measureValueString8
//        homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.systemGreen
//        homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.systemGreen
        
        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: self.sLux!)!)
        
        homeTypeCollectionViewCell1.circularProgressView.value = yourFloatvalueFromString

        homeTypeCollectionViewCell1.circularProgressView.progressLineWidth = 2
        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.systemGreen
        homeTypeCollectionViewCell1.circularProgressView.emptyLineColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.emptyLineStrokeColor = UIColor.white
        homeTypeCollectionViewCell1.circularProgressView.unitString = "lux"
        
        if sensors == nil
        {
            homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressColor =  UIColor.white
            homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor =  UIColor.white
            homeTypeCollectionViewCell1.lblDescrptn.text = ""
        }
        else
        {
        if sensors!.count > 0
        {
           
        
        for item in self.sensors!
        {
            print(item.id)
            
            
            if item.sensor_name == "Lux"
            {
                self.color_ranges = item.color_ranges
                
                for item2 in self.color_ranges!
                {
                    
                    let iMinVal = Double(item2.min_val!)
                    let iMaxVal = Double(item2.max_val!)
                      let progress  = Double(yourFloatvalueFromString)
                    
                    
                    if progress > iMinVal! && progress < iMaxVal!
                    {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        
                        
                        
                        
                        
//                        if item2.remark == "Bad" || item2.remark == "UnHealthy"
//                        {
//                        self.progressBarCarbonMonoxide.progress =    Float(dValue)
//                        self.lblCO3.text = String(progress)  + " lux"
//                        self.progressBarCarbonMonoxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarCarbonMonoxide.tintColor = UIColor.red
//
//                        }
//                        }
                        print("Given LUX color in the range:",item2.color!)
                        print("Given LUX remark in the range::", item2.remark!)
                        
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                    }
                    else if progress > iMaxVal!
                    {
                        
                        sPgs = String(progress)
                        
                        if sPgs.count == 2
                        {
                            dValue = Double(progress) / Double(100)

                        }
                        else if sPgs.count == 3
                       {
                            dValue = Double(progress) / Double(1000)

                        }
                        else if sPgs.count == 4
                        {
                            dValue = Double(progress) / Double(10000)

                        }
//                        self.lblProgressBar4Heading.text = "Lux"
//
//                        self.progressBarCarbonMonoxide.progress =    Float(dValue)
//                        self.lblCO3.text = String(progress)  + " lux"
//                        self.progressBarCarbonMonoxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        if item2.remark == "Bad"
//                        {
//                            self.progressBarCarbonMonoxide.tintColor = UIColor.red
//
//                        }
                        print("Given LUX color out the range:",item2.color!)
                        print("Given LUX remark out the range::", item2.remark!)
                        
                        
                       homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                       homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
                        tempColorCode = item2.color!
                        tempProgressData = dValue
                        
                        
                    }
                }
                
                if tempColorCode == "Purple"
                {
                    if !purplecolorSensor.contains("Lux") {

                    purplecolorSensor.append("Lux")
                        purplecolorsensorName.append(sPgs)

                    purplecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Red"
                {
                    if !redcolorSensor.contains("Lux") {
                        redcolorsensorName.append(sPgs)

                    redcolorSensor.append("Lux")
                    redcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Orange"
                {
                    if !orangecolorSensor.contains("Lux") {
                        orangecolorsensorName.append(sPgs)

                    orangecolorSensor.append("Lux")
                    orangecolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Yellow"
                {
                    if !yellowcolorSensor.contains("Lux") {
                        yellowcolorsensorName.append(sPgs)

                    yellowcolorSensor.append("Lux")
                    yellowcolorsensorData.append(Float(tempProgressData))
                    }
                }
                else if tempColorCode == "Green"
                {
                    if !greencolorSensor.contains("Lux") {
                        greencolorsensorName.append(sPgs)

                    greencolorSensor.append("Lux")
                    greebcolorsensorData.append(Float(tempProgressData))
                    }
                }
            }

        }
        }
        else
        {
                    homeTypeCollectionViewCell1.viewBackGround.backgroundColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressColor = UIColor.white
                    homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = UIColor.white

        }
        
        
        }
        
        
    }
    
    print("Purple color",purplecolorSensor.count)
    print("Red color",redcolorSensor.count)
    print("Orange color",orangecolorSensor.count)
    print("Yellow color",yellowcolorSensor.count)
    print("Green color", greencolorSensor.count)
    
    
     if self.purplecolorSensor.count == 4
    {
        // First Data
        
        self.progressBarTemperature.progress =   self.purplecolorsensorData[0]
        self.progressBarTemperature.tintColor = UIColor.purple
        
        self.lblProgressBar1Heading.text = self.purplecolorSensor[0]

        if  self.purplecolorSensor[0] == "Temperature"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " °C"
            
        }
        else if  self.purplecolorSensor[0] == "Realtive Humidity"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " %RH"

        }
        else if  self.purplecolorSensor[0] == "Carbon Monoxide"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Ozone"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "PM 1"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "PM 2.5"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        } else if  self.purplecolorSensor[0] == "PM 10"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "TVOC"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "Formaldehyde"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Carbon Dioxide"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Lux"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " lux"

        }
        
        
        
        // Second Data
        
        self.progressBarcarbonDioxide.progress =   self.purplecolorsensorData[1]
        self.progressBarcarbonDioxide.tintColor = UIColor.purple
        self.lblProgressBar2Heading.text = self.purplecolorSensor[1]

        if  self.purplecolorSensor[1] == "Temperature"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " °C"
            
        }
        else if  self.purplecolorSensor[1] == "Realtive Humidity"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " %RH"

        }
        else if  self.purplecolorSensor[1] == "Carbon Monoxide"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Ozone"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "PM 1"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "PM 2.5"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        } else if  self.purplecolorSensor[1] == "PM 10"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "TVOC"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "Formaldehyde"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Carbon Dioxide"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Lux"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " lux"

        }
        
        
        // Third Data
        
        self.progressBarFormaldyhyde.progress =   self.purplecolorsensorData[2]
        self.progressBarFormaldyhyde.tintColor = UIColor.purple
        self.lblProgressBar3Heading.text = self.purplecolorSensor[2]

        if  self.purplecolorSensor[2] == "Temperature"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " °C"
            
        }
        else if  self.purplecolorSensor[2] == "Realtive Humidity"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " %RH"

        }
        else if  self.purplecolorSensor[2] == "Carbon Monoxide"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " ppm"

        }
        else if  self.purplecolorSensor[2] == "Ozone"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " ppm"

        }
        else if  self.purplecolorSensor[2] == "PM 1"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " µg/m3"

        }
        else if  self.purplecolorSensor[2] == "PM 2.5"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " µg/m3"

        } else if  self.purplecolorSensor[2] == "PM 10"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " µg/m3"

        }
        else if  self.purplecolorSensor[2] == "TVOC"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " µg/m3"

        }
        else if  self.purplecolorSensor[2] == "Formaldehyde"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " ppm"

        }
        else if  self.purplecolorSensor[2] == "Carbon Dioxide"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " ppm"

        }
        else if  self.purplecolorSensor[2] == "Lux"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " lux"

        }
        
        
        
        // Fourth Data
        
        self.progressBarCarbonMonoxide.progress =   self.purplecolorsensorData[3]
        self.progressBarCarbonMonoxide.tintColor = UIColor.purple
        self.lblProgressBar4Heading.text = self.purplecolorSensor[3]

        if  self.purplecolorSensor[3] == "Temperature"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " °C"
            
        }
        else if  self.purplecolorSensor[3] == "Realtive Humidity"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " %RH"

        }
        else if  self.purplecolorSensor[3] == "Carbon Monoxide"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " ppm"

        }
        else if  self.purplecolorSensor[3] == "Ozone"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " ppm"

        }
        else if  self.purplecolorSensor[3] == "PM 1"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " µg/m3"

        }
        else if  self.purplecolorSensor[3] == "PM 2.5"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " µg/m3"

        } else if  self.purplecolorSensor[3] == "PM 10"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " µg/m3"

        }
        else if  self.purplecolorSensor[3] == "TVOC"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " µg/m3"

        }
        else if  self.purplecolorSensor[3] == "Formaldehyde"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " ppm"

        }
        else if  self.purplecolorSensor[3] == "Carbon Dioxide"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " ppm"

        }
        else if  self.purplecolorSensor[3] == "Lux"
        {
            self.lblCO3.text = self.purplecolorsensorName[3]  + " lux"

        }
        
        
        
    }
    else  if self.purplecolorSensor.count == 3
    {
        // First Data
        
        self.progressBarTemperature.progress =   self.purplecolorsensorData[0]
        self.progressBarTemperature.tintColor = UIColor.purple
        
        self.lblProgressBar1Heading.text = self.purplecolorSensor[0]

        if  self.purplecolorSensor[0] == "Temperature"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " °C"
            
        }
        else if  self.purplecolorSensor[0] == "Realtive Humidity"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " %RH"

        }
        else if  self.purplecolorSensor[0] == "Carbon Monoxide"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Ozone"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "PM 1"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "PM 2.5"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        } else if  self.purplecolorSensor[0] == "PM 10"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "TVOC"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "Formaldehyde"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Carbon Dioxide"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Lux"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " lux"

        }
        
        
        
        // Second Data
        
        self.progressBarcarbonDioxide.progress =   self.purplecolorsensorData[1]
        self.progressBarcarbonDioxide.tintColor = UIColor.purple
        self.lblProgressBar2Heading.text = self.purplecolorSensor[1]

        if  self.purplecolorSensor[1] == "Temperature"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " °C"
            
        }
        else if  self.purplecolorSensor[1] == "Realtive Humidity"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " %RH"

        }
        else if  self.purplecolorSensor[1] == "Carbon Monoxide"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Ozone"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "PM 1"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "PM 2.5"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        } else if  self.purplecolorSensor[1] == "PM 10"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "TVOC"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "Formaldehyde"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Carbon Dioxide"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Lux"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " lux"

        }
        
        
        // Third Data
        
        self.progressBarFormaldyhyde.progress =   self.purplecolorsensorData[2]
        self.progressBarFormaldyhyde.tintColor = UIColor.purple
        self.lblProgressBar3Heading.text = self.purplecolorSensor[2]

        if  self.purplecolorSensor[2] == "Temperature"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " °C"
            
        }
        else if  self.purplecolorSensor[2] == "Realtive Humidity"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " %RH"

        }
        else if  self.purplecolorSensor[2] == "Carbon Monoxide"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " ppm"

        }
        else if  self.purplecolorSensor[2] == "Ozone"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " ppm"

        }
        else if  self.purplecolorSensor[2] == "PM 1"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " µg/m3"

        }
        else if  self.purplecolorSensor[2] == "PM 2.5"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " µg/m3"

        } else if  self.purplecolorSensor[2] == "PM 10"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " µg/m3"

        }
        else if  self.purplecolorSensor[2] == "TVOC"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " µg/m3"

        }
        else if  self.purplecolorSensor[2] == "Formaldehyde"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " ppm"

        }
        else if  self.purplecolorSensor[2] == "Carbon Dioxide"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " ppm"

        }
        else if  self.purplecolorSensor[2] == "Lux"
        {
            self.lblFormaldyhyde.text = self.purplecolorsensorName[2]  + " lux"

        }
        
        
        
        if self.redcolorsensorData.count >= 1
        {
          
        
        // Fourth Data
        
        self.progressBarCarbonMonoxide.progress =   self.redcolorsensorData[0]
        self.progressBarCarbonMonoxide.tintColor = UIColor.red
        self.lblProgressBar4Heading.text = self.redcolorSensor[0]

        if  self.redcolorSensor[0] == "Temperature"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " °C"
            
        }
        else if  self.redcolorSensor[0] == "Realtive Humidity"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " %RH"

        }
        else if  self.redcolorSensor[0] == "Carbon Monoxide"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " ppm"

        }
        else if  self.redcolorSensor[0] == "Ozone"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " ppm"

        }
        else if  self.redcolorSensor[0] == "PM 1"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " µg/m3"

        }
        else if  self.redcolorSensor[0] == "PM 2.5"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " µg/m3"

        } else if  self.redcolorSensor[0] == "PM 10"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " µg/m3"

        }
        else if  self.redcolorSensor[0] == "TVOC"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " µg/m3"

        }
        else if  self.redcolorSensor[0] == "Formaldehyde"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " ppm"

        }
        else if  self.redcolorSensor[0] == "Carbon Dioxide"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " ppm"

        }
        else if  self.redcolorSensor[0] == "Lux"
        {
            self.lblCO3.text = self.redcolorsensorName[0]  + " lux"

        }
        }
        
        else if self.orangecolorsensorData.count >= 1
        {
          
        
        // Fourth Data
        
        self.progressBarCarbonMonoxide.progress =   self.orangecolorsensorData[0]
        self.progressBarCarbonMonoxide.tintColor = UIColor.orange
        self.lblProgressBar4Heading.text = self.orangecolorSensor[0]

        if  self.orangecolorSensor[0] == "Temperature"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " °C"
            
        }
        else if  self.orangecolorSensor[0] == "Realtive Humidity"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " %RH"

        }
        else if  self.orangecolorSensor[0] == "Carbon Monoxide"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " ppm"

        }
        else if  self.orangecolorSensor[0] == "Ozone"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " ppm"

        }
        else if  self.orangecolorSensor[0] == "PM 1"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " µg/m3"

        }
        else if  self.orangecolorSensor[0] == "PM 2.5"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " µg/m3"

        } else if  self.orangecolorSensor[0] == "PM 10"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " µg/m3"

        }
        else if  self.orangecolorSensor[0] == "TVOC"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " µg/m3"

        }
        else if  self.orangecolorSensor[0] == "Formaldehyde"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " ppm"

        }
        else if  self.orangecolorSensor[0] == "Carbon Dioxide"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " ppm"

        }
        else if  self.orangecolorSensor[0] == "Lux"
        {
            self.lblCO3.text = self.orangecolorsensorName[0]  + " lux"

        }
        }
        else if self.yellowcolorsensorName.count >= 1
        {
          
        
        // Fourth Data
        
        self.progressBarCarbonMonoxide.progress =   self.yellowcolorsensorData[0]
        self.progressBarCarbonMonoxide.tintColor = UIColor.yellow
        self.lblProgressBar4Heading.text = self.yellowcolorSensor[0]

        if  self.yellowcolorSensor[0] == "Temperature"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " °C"
            
        }
        else if  self.yellowcolorSensor[0] == "Realtive Humidity"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " %RH"

        }
        else if  self.yellowcolorSensor[0] == "Carbon Monoxide"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " ppm"

        }
        else if  self.yellowcolorSensor[0] == "Ozone"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " ppm"

        }
        else if  self.yellowcolorSensor[0] == "PM 1"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " µg/m3"

        }
        else if  self.yellowcolorSensor[0] == "PM 2.5"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " µg/m3"

        } else if  self.yellowcolorSensor[0] == "PM 10"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " µg/m3"

        }
        else if  self.yellowcolorSensor[0] == "TVOC"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " µg/m3"

        }
        else if  self.yellowcolorSensor[0] == "Formaldehyde"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " ppm"

        }
        else if  self.yellowcolorSensor[0] == "Carbon Dioxide"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " ppm"

        }
        else if  self.yellowcolorSensor[0] == "Lux"
        {
            self.lblCO3.text = self.yellowcolorsensorName[0]  + " lux"

        }
        }
        
    }
    else if self.purplecolorSensor.count == 2
    {
        // First Data
        
        self.progressBarTemperature.progress =   self.purplecolorsensorData[0]
        self.progressBarTemperature.tintColor = UIColor.purple
        
        self.lblProgressBar1Heading.text = self.purplecolorSensor[0]

        if  self.purplecolorSensor[0] == "Temperature"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " °C"
            
        }
        else if  self.purplecolorSensor[0] == "Realtive Humidity"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " %RH"

        }
        else if  self.purplecolorSensor[0] == "Carbon Monoxide"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Ozone"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "PM 1"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "PM 2.5"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        } else if  self.purplecolorSensor[0] == "PM 10"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "TVOC"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "Formaldehyde"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Carbon Dioxide"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Lux"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " lux"

        }
        
        
        
        // Second Data
        
        self.progressBarcarbonDioxide.progress =   self.purplecolorsensorData[1]
        self.progressBarcarbonDioxide.tintColor = UIColor.purple
        self.lblProgressBar2Heading.text = self.purplecolorSensor[1]

        if  self.purplecolorSensor[1] == "Temperature"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " °C"
            
        }
        else if  self.purplecolorSensor[1] == "Realtive Humidity"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " %RH"

        }
        else if  self.purplecolorSensor[1] == "Carbon Monoxide"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Ozone"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "PM 1"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "PM 2.5"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        } else if  self.purplecolorSensor[1] == "PM 10"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "TVOC"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " µg/m3"

        }
        else if  self.purplecolorSensor[1] == "Formaldehyde"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Carbon Dioxide"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " ppm"

        }
        else if  self.purplecolorSensor[1] == "Lux"
        {
            self.lblCO2.text = self.purplecolorsensorName[1]  + " lux"

        }
        
        
        /////////////
        
        
        
        if self.redcolorsensorData.count >= 2
        {
            
            // Third Data
            
            self.progressBarFormaldyhyde.progress =   self.redcolorsensorData[0]
            self.progressBarFormaldyhyde.tintColor = UIColor.purple
            self.lblProgressBar3Heading.text = self.redcolorSensor[0]

            if  self.redcolorSensor[0] == "Temperature"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " °C"
                
            }
            else if  self.redcolorSensor[0] == "Realtive Humidity"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " %RH"

            }
            else if  self.redcolorSensor[0] == "Carbon Monoxide"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " ppm"

            }
            else if  self.redcolorSensor[0] == "Ozone"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " ppm"

            }
            else if  self.redcolorSensor[0] == "PM 1"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " µg/m3"

            }
            else if self.redcolorSensor[0] == "PM 2.5"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " µg/m3"

            } else if  self.redcolorSensor[0] == "PM 10"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " µg/m3"

            }
            else if  self.redcolorSensor[0] == "TVOC"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " µg/m3"

            }
            else if  self.redcolorSensor[0] == "Formaldehyde"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " ppm"

            }
            else if  self.redcolorSensor[0] == "Carbon Dioxide"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " ppm"

            }
            else if  self.redcolorSensor[0] == "Lux"
            {
                self.lblFormaldyhyde.text = self.redcolorsensorName[0]  + " lux"

            }
            
            
            
            // Fourth Data
            
            self.progressBarCarbonMonoxide.progress =   self.redcolorsensorData[1]
            self.progressBarCarbonMonoxide.tintColor = UIColor.red
            self.lblProgressBar4Heading.text = self.redcolorSensor[1]

            if  self.redcolorSensor[1] == "Temperature"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " °C"
                
            }
            else if  self.redcolorSensor[1] == "Realtive Humidity"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " %RH"

            }
            else if  self.redcolorSensor[1] == "Carbon Monoxide"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " ppm"

            }
            else if  self.redcolorSensor[1] == "Ozone"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " ppm"

            }
            else if  self.redcolorSensor[1] == "PM 1"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " µg/m3"

            }
            else if  self.redcolorSensor[1] == "PM 2.5"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " µg/m3"

            } else if  self.redcolorSensor[1] == "PM 10"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " µg/m3"

            }
            else if  self.redcolorSensor[1] == "TVOC"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " µg/m3"

            }
            else if  self.redcolorSensor[1] == "Formaldehyde"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " ppm"

            }
            else if  self.redcolorSensor[1] == "Carbon Dioxide"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " ppm"

            }
            else if  self.redcolorSensor[1] == "Lux"
            {
                self.lblCO3.text = self.redcolorsensorName[1]  + " lux"

            }
            
        }
        else if redcolorsensorData.count >= 1
        {
            
        }
        else if redcolorsensorData.count == 0
        {
            if yellowcolorSensor.count >= 2
            {
                
                // Third Data
                
                self.progressBarFormaldyhyde.progress =   self.yellowcolorsensorData[0]
                self.progressBarFormaldyhyde.tintColor = UIColor.yellow
                self.lblProgressBar3Heading.text = self.yellowcolorSensor[0]

                if  self.yellowcolorSensor[0] == "Temperature"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " °C"
                    
                }
                else if  self.yellowcolorSensor[0] == "Realtive Humidity"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " %RH"

                }
                else if  self.yellowcolorSensor[0] == "Carbon Monoxide"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " ppm"

                }
                else if  self.yellowcolorSensor[0] == "Ozone"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " ppm"

                }
                else if  self.yellowcolorSensor[0] == "PM 1"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " µg/m3"

                }
                else if self.yellowcolorSensor[0] == "PM 2.5"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " µg/m3"

                } else if  self.yellowcolorSensor[0] == "PM 10"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " µg/m3"

                }
                else if  self.yellowcolorSensor[0] == "TVOC"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " µg/m3"

                }
                else if  self.yellowcolorSensor[0] == "Formaldehyde"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " ppm"

                }
                else if  self.yellowcolorSensor[0] == "Carbon Dioxide"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " ppm"

                }
                else if  self.yellowcolorSensor[0] == "Lux"
                {
                    self.lblFormaldyhyde.text = self.yellowcolorsensorName[0]  + " lux"

                }
                
                
                
                // Fourth Data
                
                self.progressBarCarbonMonoxide.progress =   self.yellowcolorsensorData[1]
                self.progressBarCarbonMonoxide.tintColor = UIColor.yellow
                self.lblProgressBar4Heading.text = self.yellowcolorSensor[1]

                if  self.yellowcolorSensor[1] == "Temperature"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " °C"
                    
                }
                else if  self.yellowcolorSensor[1] == "Realtive Humidity"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " %RH"

                }
                else if  self.yellowcolorSensor[1] == "Carbon Monoxide"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " ppm"

                }
                else if  self.yellowcolorSensor[1] == "Ozone"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " ppm"

                }
                else if  self.yellowcolorSensor[1] == "PM 1"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " µg/m3"

                }
                else if  self.yellowcolorSensor[1] == "PM 2.5"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " µg/m3"

                } else if  self.yellowcolorSensor[1] == "PM 10"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " µg/m3"

                }
                else if  self.yellowcolorSensor[1] == "TVOC"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " µg/m3"

                }
                else if  self.yellowcolorSensor[1] == "Formaldehyde"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " ppm"

                }
                else if  self.yellowcolorSensor[1] == "Carbon Dioxide"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " ppm"

                }
                else if  self.yellowcolorSensor[1] == "Lux"
                {
                    self.lblCO3.text = self.yellowcolorsensorName[1]  + " lux"

                }
                
            }
        }
        
        
    }
    else if self.purplecolorSensor.count == 1
    {
        // First Data
        
        self.progressBarTemperature.progress =   self.purplecolorsensorData[0]
        self.progressBarTemperature.tintColor = UIColor.purple
        
        self.lblProgressBar1Heading.text = self.purplecolorSensor[0]

        if  self.purplecolorSensor[0] == "Temperature"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " °C"
            
        }
        else if  self.purplecolorSensor[0] == "Realtive Humidity"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " %RH"

        }
        else if  self.purplecolorSensor[0] == "Carbon Monoxide"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Ozone"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "PM 1"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "PM 2.5"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        } else if  self.purplecolorSensor[0] == "PM 10"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "TVOC"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " µg/m3"

        }
        else if  self.purplecolorSensor[0] == "Formaldehyde"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Carbon Dioxide"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " ppm"

        }
        else if  self.purplecolorSensor[0] == "Lux"
        {
            self.lblTemperature.text = self.purplecolorsensorName[0]  + " lux"

        }
        
        
        
        // Second Data
        
//        self.progressBarcarbonDioxide.progress =   self.redcolorsensorData[0]
//        self.progressBarcarbonDioxide.tintColor = UIColor.red
//        self.lblProgressBar2Heading.text = self.redcolorSensor[0]
//
//        if  self.redcolorSensor[0] == "Temperature"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]  + " °C"
//
//        }
//        else if  self.redcolorSensor[0] == "Realtive Humidity"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " %RH"
//
//        }
//        else if  self.redcolorSensor[0] == "Carbon Monoxide"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " ppm"
//
//        }
//        else if  self.redcolorSensor[0] == "Ozone"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " ppm"
//
//        }
//        else if  self.redcolorSensor[0] == "PM 1"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " µg/m3"
//
//        }
//        else if  self.redcolorSensor[0] == "PM 2.5"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " µg/m3"
//
//        } else if  self.redcolorSensor[0] == "PM 10"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " µg/m3"
//
//        }
//        else if  self.redcolorSensor[0] == "TVOC"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " µg/m3"
//
//        }
//        else if  self.redcolorSensor[0] == "Formaldehyde"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " ppm"
//
//        }
//        else if  self.redcolorSensor[0] == "Carbon Dioxide"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " ppm"
//
//        }
//        else if  self.redcolorSensor[0] == "Lux"
//        {
//            self.lblCO2.text = self.redcolorsensorName[0]   + " lux"
//
//        }
//
//
//        // Third Data
//
//        self.progressBarFormaldyhyde.progress =   self.redcolorsensorData[1]
//        self.progressBarFormaldyhyde.tintColor = UIColor.red
//        self.lblProgressBar3Heading.text = self.redcolorSensor[1]
//
//        if  self.redcolorSensor[1] == "Temperature"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " °C"
//
//        }
//        else if  self.redcolorSensor[1] == "Realtive Humidity"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " %RH"
//
//        }
//        else if  self.redcolorSensor[1] == "Carbon Monoxide"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " ppm"
//
//        }
//        else if  self.redcolorSensor[1] == "Ozone"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " ppm"
//
//        }
//        else if  self.redcolorSensor[1] == "PM 1"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " µg/m3"
//
//        }
//        else if self.redcolorSensor[1] == "PM 2.5"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " µg/m3"
//
//        } else if  self.redcolorSensor[1] == "PM 10"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " µg/m3"
//
//        }
//        else if  self.redcolorSensor[1] == "TVOC"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " µg/m3"
//
//        }
//        else if  self.redcolorSensor[1] == "Formaldehyde"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " ppm"
//
//        }
//        else if  self.redcolorSensor[1] == "Carbon Dioxide"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " ppm"
//
//        }
//        else if  self.redcolorSensor[1] == "Lux"
//        {
//            self.lblFormaldyhyde.text = self.redcolorsensorName[1]  + " lux"
//
//        }
//
//
//
//        // Fourth Data
//
//        self.progressBarCarbonMonoxide.progress =   self.redcolorsensorData[2]
//        self.progressBarCarbonMonoxide.tintColor = UIColor.red
//        self.lblProgressBar4Heading.text = self.redcolorSensor[2]
//
//        if  self.redcolorSensor[2] == "Temperature"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " °C"
//
//        }
//        else if  self.redcolorSensor[2] == "Realtive Humidity"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " %RH"
//
//        }
//        else if  self.redcolorSensor[2] == "Carbon Monoxide"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " ppm"
//
//        }
//        else if  self.redcolorSensor[2] == "Ozone"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " ppm"
//
//        }
//        else if  self.redcolorSensor[2] == "PM 1"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " µg/m3"
//
//        }
//        else if  self.redcolorSensor[2] == "PM 2.5"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " µg/m3"
//
//        } else if  self.redcolorSensor[2] == "PM 10"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " µg/m3"
//
//        }
//        else if  self.redcolorSensor[2] == "TVOC"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " µg/m3"
//
//        }
//        else if  self.redcolorSensor[2] == "Formaldehyde"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " ppm"
//
//        }
//        else if  self.redcolorSensor[2] == "Carbon Dioxide"
//        {
//            self.lblCO3.text = self.redcolorsensorName[12]  + " ppm"
//
//        }
//        else if  self.redcolorSensor[2] == "Lux"
//        {
//            self.lblCO3.text = self.redcolorsensorName[2]  + " lux"
//
//        }
//
//
        
    }
    else if self.purplecolorSensor.count == 0
    {
        
    }
    
    
    
    }

       

        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == collectionViewHome
        {
            
                return CGSize(width:125 , height:150)

          
        }
        else
        
        {
            return CGSize(width:80 , height:150)

        }
        
        

    }
    @IBAction func ActionDropDown(_ sender: UIButton)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomePopUpViewController") as! HomePopUpViewController
        next.sDeviceId = self.sharedData.getDefoultDeviceID()
        next.sRoomId = String(sender.tag)
        next.sTimeDropDown = false
        self.navigationController?.pushViewController(next, animated: false)
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
                    self.view.activityStopAnimating()

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
    
    
    
    @IBAction func ACtionPlus(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "AddDeviceViewController") as! AddDeviceViewController
        self.navigationController?.pushViewController(next, animated: false)
    }
    @IBAction func ActionHome(_ sender: Any) {
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    func GetColorDetails()
    {
     
        
      
        let loginURL = Constants.baseURL+Constants.colorURL

        print("loginURL",loginURL)
        
        AF.request(loginURL, method: .post, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (data) in
            print("Response:***:",data.description)
            
            switch (data.result) {
            case .failure(let error) :
               
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
                    self.colorResponseModel = ColorResponseModel(response)
                    
                    let statusCode = Int((self.colorResponseModel?.httpcode)!)
                    if statusCode == 200{
                        print("registerResponseModel ----- ",self.colorResponseModel)

                   
                        self.sensor_color_codeArray = (self.colorResponseModel?.sensors_color_codeData?.sensor_color_codes)!
                        
                        

                       
                        
                        
                        
                    }
                    if statusCode == 400{
                        
                     self.showToast(message: (self.colorResponseModel?.message)!)
                    }
                    
                    
                    
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }

    func GetDeviceAPIDetails()
    {
        var iValue = Int()
        
        var dValue = Double()
        
        self.view.activityStartAnimating()

        let loginURL = "http://54.212.67.110:3000/api/v1/measures/getMeasureOfaDevice"

        print("loginURL",loginURL)
        
//        let parameters: Parameters = ["deviceId": "2103010003"]
        
        //This will be your parameter
        
        let sDeviceID  = String()
        
        if self.sharedData.getDefoultDeviceID().count == 0 || self.sharedData.getDefoultDeviceID() == ""
        {
            self.sDeviceId = "2103010003"
        }
        else
        {
            self.sDeviceId = self.sharedData.getDefoultDeviceID()

        }
        let parameters: Parameters = ["deviceId": self.sDeviceId]      //This will be your parameter

//        let parameters: Parameters = ["deviceId": "2103010003"]      //This will be your parameter

        AF.request(loginURL, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { (data) in
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

                    
                    
                    
                    self.deviceDataResponseModel = DeviceDataResponseModel(response)
                    
                    self.result = self.deviceDataResponseModel?.result
                    self.co2n = self.result?.co2n
                    self.hum1 = self.result?.hum1
                    self.lux1 = self.result?.lux1
                    self.pm10n = self.result?.pm10n
                    self.pm1n = self.result?.pm1n
                    self.pm2_5n = self.result?.pm2_5n
                    self.temp1 = self.result?.temp1
                    self.timenew = self.result?.timenew
                    self.voc1 = self.result?.voc1
                    self.con = self.result?.con
                    self.errn = self.result?.errn
                    self.o3n = self.result?.o3n
                    self.rtcn = self.result?.rtcn
                    self.ch2on = self.result?.ch2on
                    let iVOCValue :Double?
                    let ico2nValue :Double?
                    let ipm2_5nValue :Double?
                    let ipm10nValue :Double?

                    if self.voc1?.measureValue1 == nil || self.voc1?.measureValue1 == ""
                    {
                        iVOCValue = 0.0
                    }
                    else
                    {
                        iVOCValue = Double((self.voc1?.measureValue1)!)

                    }
                    if self.co2n?.measureValue3 == nil || self.co2n?.measureValue3 == ""
                    {
                        ico2nValue = 0.0
                    }
                    else
                    {
                        ico2nValue = Double((self.co2n?.measureValue3)!)

                    }
                    
                    if self.pm2_5n?.measureValue9 == nil || self.pm2_5n?.measureValue9 == ""
                    {
                        ipm2_5nValue = 0.0
                    }
                    else
                    {
                        ipm2_5nValue = Double((self.pm2_5n?.measureValue9)!)

                    }
                    if self.pm10n?.measureValue7 == nil || self.pm10n?.measureValue7 == ""
                    {
                        ipm10nValue = 0.0
                    }
                    else
                    {
                        ipm10nValue = Double((self.pm10n?.measureValue7)!)

                    }
                    

                    if iVOCValue! <= 100.00 && ico2nValue! <= 800.00 && ipm2_5nValue! <= 40.00 && ipm10nValue! <= 40.00
                    {
                            self.lblLocation2Data.text = "95"

                    }
                    else  if iVOCValue! <= 120.00 && ico2nValue! <= 850.00 && ipm2_5nValue! <= 40.00 && ipm10nValue! <= 40.00
                    {
                            self.lblLocation2Data.text = "90"

                    }
                    else if iVOCValue! <= 150.00 && ico2nValue! <= 900.00 && ipm2_5nValue! <= 70.00 && ipm10nValue! <= 70.00
                    {
                            self.lblLocation2Data.text = "83"

                    }
                    else if iVOCValue! <= 200.00 && ico2nValue! <= 950.00 && ipm2_5nValue! <= 80.00 && ipm10nValue! <= 80.00
                    {
                            self.lblLocation2Data.text = "75"

                    }
                    else  if iVOCValue! <= 250.00 && ico2nValue! <= 1000.00 && ipm2_5nValue! <= 90.00 && ipm10nValue! <= 90.00
                    {
                            self.lblLocation2Data.text = "70"

                    }
                    
                    else if iVOCValue! <= 250.00 && ico2nValue! <= 1000.00 && ipm2_5nValue! <= 90.00 && ipm10nValue! <= 90.00
                    {
                            self.lblLocation2Data.text = "75"

                    }

                    else  if iVOCValue! <= 300.00 && ico2nValue! <= 1050.00 && ipm2_5nValue! <= 110.00 && ipm10nValue! <= 110.00
                    {
                            self.lblLocation2Data.text = "65"

                    }
                    
                    else if iVOCValue! <= 360.00 && ico2nValue! <= 1100.00 && ipm2_5nValue! <= 130.00 && ipm10nValue! <= 130.00
                    {
                            self.lblLocation2Data.text = "60"

                    }
                    else if iVOCValue! <= 430.00 && ico2nValue! <= 1150.00 && ipm2_5nValue! <= 140.00 && ipm10nValue! <= 140.00
                    {
                            self.lblLocation2Data.text = "55"

                    }
                    else if iVOCValue! <= 400.00 && ico2nValue! <= 1200.00 && ipm2_5nValue! <= 150.00 && ipm10nValue! <= 150.00
                    {
                            self.lblLocation2Data.text = "50"

                    }
                    else if iVOCValue! <= 600.00 && ico2nValue! <= 1250.00 && ipm2_5nValue! <= 170.00 && ipm10nValue! <= 170.00
                    {
                            self.lblLocation2Data.text = "45"

                    }
                    else if iVOCValue! <= 700.00 && ico2nValue! <= 1300.00 && ipm2_5nValue! <= 190.00 && ipm10nValue! <= 190.00
                    {
                            self.lblLocation2Data.text = "40"

                    }
                    else if iVOCValue! <= 800.00 && ico2nValue! <= 1400.00 && ipm2_5nValue! <= 200.00 && ipm10nValue! <= 200.00
                    {
                            self.lblLocation2Data.text = "35"

                    }
                    else  if iVOCValue! <= 1000.00 && ico2nValue! <= 1600.00 && ipm2_5nValue! <= 220.00 && ipm10nValue! <= 220.00
                    {
                            self.lblLocation2Data.text = "30"

                    }
                    else  if iVOCValue! <= 1100.00 && ico2nValue! <= 1700.00 && ipm2_5nValue! <= 240.00 && ipm10nValue! <= 240.00
                    {
                            self.lblLocation2Data.text = "25"

                    }
                    else if iVOCValue! <= 1200.00 && ico2nValue! <= 1800.00 && ipm2_5nValue! <= 250.00 && ipm10nValue! <= 250.00
                    {
                            self.lblLocation2Data.text = "25"

                    }
                    else
                    {
                        self.lblLocation2Data.text = "101"
                    }
                    

                    print("LocalData ::::", self.lblLocation2Data.text)
//
//                    if self.temp1?.measureValue2 == ""
//                    {
//
//
//                        self.lblTemperature.text = "0"  + " °C"
//
//
//                        self.progressBarTemperature.progress = Float(0)
//                    }
//                    else
//                    {
//
//                        self.lblTemperature.text = (self.temp1?.measureValue2)!  + " °C"
//
//
//
//                        iValue = Int((self.temp1?.measureValue2)!)!
//
//                        dValue = Double(iValue) / Double(1000)
//
//                        self.progressBarTemperature.progress =    Float(dValue)
//
//
//
//
//
//
//
//
//
//                    }
                    
                   
//                    if self.co2n?.measureValue3 == ""
//                    {
//                        self.progressBarcarbonDioxide.progress = Float(0)
//
//                    }
//                    else
//                    {
//                        var sPgs = String()
//                        sPgs = (self.co2n?.measureValue3)!
//
//                        if sPgs.count == 2
//                        {
////                            self.progressBarcarbonDioxide.progress = Float(Int((self.co2n?.measureValue3)!)!/10)
//                            iValue = Int((self.co2n?.measureValue3)!)!
//
//                            dValue = Double(iValue) / Double(100)
//
//                            self.progressBarcarbonDioxide.progress =    Float(dValue)
//                        }
//                         else if sPgs.count == 3
//                        {
//
//                            iValue = Int((self.co2n?.measureValue3)!)!
//
//                            dValue = Double(iValue) / Double(1000)
//
//                            self.progressBarcarbonDioxide.progress =    Float(dValue)
//
//
//                        }
//                        else if sPgs.count == 4
//                        {
//                            iValue = Int((self.co2n?.measureValue3)!)!
//
//                            dValue = Double(iValue) / Double(10000)
//
//                            self.progressBarcarbonDioxide.progress =    Float(dValue)
//                        }
//
//                    }
//                    if self.pm1n?.measureValue4 == ""
//                    {
//                        self.progressBarFormaldyhyde.progress = Float(0)
//
//                    }
//                    else
//                    {
//                        var sPgs = String()
//                        sPgs = (self.pm1n?.measureValue4)!
//
//                        if sPgs.count == 2
//                        {
////                            self.progressBarFormaldyhyde.progress =    Float(Int((self.pm1n?.measureValue4)!)!/10)
//                            iValue = Int((self.pm1n?.measureValue4)!)!
//
//                            dValue = Double(iValue) / Double(100)
//
//                            self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        }
//                         else if sPgs.count == 3
//                        {
//                            iValue = Int((self.pm1n?.measureValue4)!)!
//
//                            dValue = Double(iValue) / Double(1000)
//
//                            self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        }
//                        else if sPgs.count == 4
//                        {
//
//                            iValue = Int((self.pm1n?.measureValue4)!)!
//
//                            dValue = Double(iValue) / Double(10000)
//
//                            self.progressBarFormaldyhyde.progress =    Float(dValue)
//
//
//                        }
//
//
//                    }
//
//                    if self.ch2on?.measureValue31 == ""
//                    {
//                        self.progressBarCarbonMonoxide.progress = Float(0)
//
//                    }
//                    else
//                    {
//
//                        var sPgs = String()
//                        sPgs = (self.ch2on?.measureValue31)!
//
//                        if sPgs.count == 2
//                        {
//
//                            iValue = Int((self.ch2on?.measureValue31)!)!
//
//                            dValue = Double(iValue) / Double(100)
//
//                            self.progressBarCarbonMonoxide.progress =   Float(dValue)
//
//                        }
//                         else if sPgs.count == 3
//                        {
//
//
//                            iValue = Int((self.ch2on?.measureValue31)!)!
//
//                            dValue = Double(iValue) / Double(1000)
//
//                            self.progressBarCarbonMonoxide.progress =    Float(dValue)
//
//                        }
//                        else if sPgs.count == 4
//                        {
//
//                            iValue = Int((self.ch2on?.measureValue31)!)!
//
//                            dValue = Double(iValue) / Double(10000)
//
//                            self.progressBarCarbonMonoxide.progress =    Float(dValue)
//
//
////                            self.progressBarCarbonMonoxide.progress =   Float(Int((self.ch2on?.measureValue31)!)!/1000)
//
//                        }
//
//                    }
//
                    

//
                    if self.pm2_5n?.measureValue9 == ""
                    {
                       

                        self.circularProgressView.value =   0
                        
                        self.lblLocation2Data.text = "0"
                    }
                    else
                    {
                        let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: (self.pm2_5n?.measureValue9!)!)!)
                       
//                        self.lblLocation2Data.text = self.pm2_5n?.measureValue9

                        self.circularProgressView.value =   yourFloatvalueFromString
                        
                    }
//                    self.lblCO2.text = String((self.co2n?.measureValue3)!)
//                    self.lblCO3.text = String((self.ch2on?.measureValue31)!)
//                    self.lblFormaldyhyde.text = String((self.pm1n?.measureValue4)!)
                    
                    if self.con?.measureValue10 == nil || self.con?.measureValue10 == ""
                    {
                        self.sCOValue = "0"
                    }
                    else
                    {
                        self.sCOValue = self.con?.measureValue10

                    }
                    
                    if self.temp1?.measureValue2 == nil || self.temp1?.measureValue2 == ""
                    {
                        self.sTemperarture = "0"
                    }
                    else
                    {
                        self.sTemperarture = self.temp1?.measureValue2

                    }
                    if self.hum1?.measureValue6 == nil || self.hum1?.measureValue6 == ""
                    {
                        self.sHumidity =  "0"
                    }
                    else
                    {
                        self.sHumidity =  String((self.hum1?.measureValue6)!)

                    }
                    if self.pm10n?.measureValue7 == nil || self.pm10n?.measureValue7 == ""
                    {
                        self.sPM10 =  "0"
                    }
                    else
                    {
                        self.sPM10 =  String((self.pm10n?.measureValue7)!)

                    }
                    if self.pm1n?.measureValue4 == nil || self.pm1n?.measureValue4 == ""
                    {
                        self.sPM1 =  "0"
                    }
                    else
                    {
                        self.sPM1 =  String((self.pm1n?.measureValue4)!)

                    }
                    if self.voc1?.measureValue1 == nil || self.voc1?.measureValue1 == ""
                    {
                        self.sVOC =  "0"
                    }
                    else
                    {
                        self.sVOC =  String((self.voc1?.measureValue1)!)

                    }
                    
                    if self.o3n?.measureValue12 == nil || self.o3n?.measureValue12 == ""
                    {
                        self.sOzone =  "0"
                    }
                    else
                    {
                        self.sOzone = String((self.o3n?.measureValue12)!)

                    }
                    
                    if self.pm2_5n?.measureValue9 == nil || self.pm2_5n?.measureValue9 == ""
                    {
                        self.sPM2_5 =  "0"
                    }
                    else
                    {
                        self.sPM2_5 = self.pm2_5n?.measureValue9

                    }
                    
                    if self.ch2on?.measureValue31 == nil || self.ch2on?.measureValue31 == ""
                    {
                        self.sCh2_o =  "0"
                    }
                    else
                    {
                        self.sCh2_o = self.ch2on?.measureValue31

                    }
                    if self.co2n?.measureValue3 == nil || self.co2n?.measureValue3 == ""
                    {
                        self.sCO2 =  "0"
                    }
                    else
                    {
                        self.sCO2 = self.co2n?.measureValue3

                    }
                    if self.lux1?.measureValue8 == nil || self.lux1?.measureValue8 == ""
                    {
                        self.sLux =  "0"
                    }
                    else
                    {
                        self.sLux = self.lux1?.measureValue8

                    }
                    
                    
                    self.collectionView2.reloadData()
                    self.view.activityStopAnimating()

                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }
    
    
    func convertDate(_ date: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-ddHH:mm:ss"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")

  
        
        let date = dateFormatter.date(from: date.components(separatedBy: ".")[0])
        
//        let dates = dateFormatter.date(from: "2021-04-0513:01:52.673000000")
              dateFormatter.dateFormat = "dd/MM HH:mm a"
        dateFormatter.timeZone = TimeZone.current

              return  dateFormatter.string(from: date!)
        
        
        
        
        
        
        
        
        
        
        
    }


    func calculateCelsius(fahrenheit: Double) -> Double {
        var celsius: Double
        
        celsius = (fahrenheit - 32) * 5 / 9
        
        return celsius
    }
    
    
    /////////////////////////////////////      // Get All Lux Chart Data /////////////////////////////////
    func GetLuxChartLastDayData()
    {
        self.view.activityStopAnimating()

        ApiHandler.shared.postPlotLuxLastDateData(userdetails: PlotdataLuxLastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    
    
    
    func GetLuxChartLastWeekData()
    {
        self.view.activityStopAnimating()

        ApiHandler.shared.postPlotLuxLastWeekData(userdetails: PlotdataLuxLastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
//                        print(self.convertDateFormat(inputDate: item.time!))
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        self.setLuxWeekly(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    
    
    
    
    
    
    func GetLuxChartLastMonthData()
    {
        self.view.activityStopAnimating()

        ApiHandler.shared.postPlotLuxLastMonthData(userdetails: PlotdataLuxLastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
//                        print(self.convertDateFormat(inputDate: item.time!))
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        self.setLuxMonthly(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    func GetLuxChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotLuxLast1MinuteDayData(userdetails: PlotdataLuxDayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        timestring1 = timestring1.suffix(5)
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    
    func GetLuxChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotLuxLast2MinuteDayData(userdetails: PlotdataLuxDayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        timestring1 = timestring1.suffix(5)
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    func GetLuxChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotLuxLast5MinuteDayData(userdetails: PlotdataLuxDayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        timestring1 = timestring1.suffix(5)
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    
    func GetLuxChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotLuxLast10MinuteDayData(userdetails: PlotdataDayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        timestring1 = timestring1.suffix(5)
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    
    func GetLuxChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotLuxLast30MinuteDayData(userdetails: PlotdataDayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        timestring1 = timestring1.suffix(5)
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    
    func GetLuxChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotLuxLast60MinuteDayData(userdetails: PlotdataLuxDayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        timestring1 = timestring1.suffix(5)
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    func GetLuxChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotLuxLast2HoursDayData(userdetails: PlotdataLuxDayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        timestring1 = timestring1.suffix(5)
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    
    func GetLuxChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotLuxLast8HoursDayData(userdetails: PlotdataLuxDayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        timestring1 = timestring1.suffix(5)
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    

    
//    func GetLuxChartValueAPI()
//    {
//
//        ApiHandler.shared.postPlotData(userdetails: PlotdataReq(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//                    for item in self.data
//                    {
//                        if self.sluxMeasreValue.count <= 4
//                        {
//
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.sLuxDates.append(self.convertDate(item.time!))
//
//                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time)
//                        }
//                    }
//                    if self.sluxMeasreValue.count > 0
//                    {
//                       // self.SetLuxChart()
//
//                        var serieData: [Double] = []
//                        var k = 0
//                        var timestring1 = [String]()
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            //self.xaxisData.append(Double(k))
//                            timestring1.append(dx)
//                        }
//                        self.setLux(serieData, timeString: timestring1)
//
//
//
//                    }
//                   }
//
//               }))
//    }
    
    
    /////////////////////////////////////      // Get All Humidity Chart Data /////////////////////////////////
    func GetHumidityChartLastDayData()
    {
     
        ApiHandler.shared.postPlotHumidityLastDayData(userdetails: PlotdataHumidityLastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    
    
    
    func GetHumidityChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotHumidityLastWeeklyData(userdetails: PlotdataHumidityLastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
//                     self.setHumidity(serieData)
                    self.setHumidityWeekly(serieData)

                 }
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetHumidityChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotHumidityLastMonthlyData(userdetails: PlotdataHumidityLastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
//                     self.setHumidity(serieData)

                    self.setHumidityMonthly(serieData)
                 }
                }
                   
               }))
    }
    func GetHumidityChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotHumidityDaily1MinuteData(userdetails: PlotdataHumidityDayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                    self.timeString = self.timeString.suffix(5)
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    
    func GetHumidityChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotHumidityDaily2MinuteData(userdetails: PlotdataHumidityDayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                    self.timeString = self.timeString.suffix(5)
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    func GetHumidityChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotHumidityDaily5MinuteData(userdetails: PlotdataHumidityDayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                    self.timeString = self.timeString.suffix(5)
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    
    func GetHumidityChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotHumidityDaily10MinuteData(userdetails: PlotdataHumidityDayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                    self.timeString = self.timeString.suffix(5)
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    
    func GetHumidityChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotHumidityDaily30MinuteData(userdetails: PlotdataHumidityDayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                    self.timeString = self.timeString.suffix(5)
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    
    func GetHumidityChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotHumidityDaily60MinuteData(userdetails: PlotdataHumidityDayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                    self.timeString = self.timeString.suffix(5)
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    func GetHumidityChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotHumidityDaily2HoursData(userdetails: PlotdataHumidityDayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                    self.timeString = self.timeString.suffix(5)
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    
    func GetHumidityChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotHumidityDaily8HoursData(userdetails: PlotdataHumidityDayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sHumMeasreValue.count <= 4
                     {
                         
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sHumDates.append(self.convertDate(item.time!))

                     self.sHumMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 
                 if self.sHumMeasreValue.count > 0
                 {
                     self.xaxisData.removeAll()
                     self.timeString.removeAll()
                  //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
                     var serieData: [Double] = []
                     var k = 0
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         self.xaxisData.append(Double(k))
                         self.timeString.append(dx)
                     }
                    self.timeString = self.timeString.suffix(5)
                     self.setHumidity(serieData)

                 }
                }
                   
               }))
    }
    
    
    
//
//    func GetHumidityChartValueAPI()
//    {
//
//        ApiHandler.shared.postPlotHumidityData(userdetails: PlotdataReqHumidity(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//                    for item in self.data
//                    {
//
//                        if self.sHumMeasreValue.count <= 4
//                        {
//
//
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.sHumDates.append(self.convertDate(item.time!))
//
//                        self.sHumMeasreValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time)
//                        }
//                    }
//
//                    if self.sHumMeasreValue.count > 0
//                    {
//                        self.xaxisData.removeAll()
//                        self.timeString.removeAll()
//                     //   self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)
//                        var serieData: [Double] = []
//                        var k = 0
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            self.xaxisData.append(Double(k))
//                            self.timeString.append(dx)
//                        }
//                        self.setHumidity(serieData)
//
//                    }
//                   }
//
//               }))
//    }
//
//
    
    
    /////////////////////////////////////      // Get All VOC Chart Data /////////////////////////////////
    func GetVOCChartLastDayData()
    {
     
        ApiHandler.shared.postPlotVOCLAstDayData(userdetails: PlotdataVOCLastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    
    
    func GetVOCChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotVOCLastWeekData(userdetails: PlotdataVOCLastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setVOCWeekly(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetVOCChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotVOCLastMonthData(userdetails: PlotdataVOCLastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setVOCMonthly(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    func GetVOCChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotVOCLast1MinuteDayData(userdetails: PlotdataVOCDayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetVOCChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotVOCLast2MinuteDayData(userdetails: PlotdataVOCDayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    func GetVOCChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotVOCLast5MinuteDayData(userdetails: PlotdataVOCDayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetVOCChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotVOCLast10MinuteDayData(userdetails: PlotdataVOCDayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetVOCChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotVOCLast30MinuteDayData(userdetails: PlotdataVOCDayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetVOCChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotVOCLast60MinuteDayData(userdetails: PlotdataVOCDayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    func GetVOCChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotVOCLast2HoursDayData(userdetails: PlotdataVOCDayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetVOCChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotVOCLast8HoursDayData(userdetails: PlotdataVOCDayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sVOCMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sVOCDates.append(self.convertDate(item.time!))

                     self.sVOCMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time)
                     }
                 }
                 if self.sVOCMeasreValue.count > 0
                 {
                    // self.setVOCChart()
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setVOC(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
    
//
//    func Getvoc1ChartValueAPI()
//    {
//
//
//        ApiHandler.shared.postPlotVOCData(userdetails: PlotdataReqVOC(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//                    for item in self.data
//                    {
//
//                        if self.sVOCMeasreValue.count <= 4
//                        {
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.sVOCDates.append(self.convertDate(item.time!))
//
//                        self.sVOCMeasreValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time)
//                        }
//                    }
//                    if self.sVOCMeasreValue.count > 0
//                    {
//                       // self.setVOCChart()
//                        var serieData: [Double] = []
//                        var k = 0
//                        var timestring1 = [String]()
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            //self.xaxisData.append(Double(k))
//                            timestring1.append(dx)
//                        }
//                        self.setVOC(serieData, timeString: timestring1)
//
//
//                    }
//                   }
//
//               }))
//
//    }
//
//
    
    /////////////////////////////////////      // Get All PM1 Chart Data /////////////////////////////////
    func GetPM1ChartLastDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDayData(userdetails: PlotdataPM1LastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                        
//                        let dxdfdf = dt.time?.fromUTCToLocalDateTime()

                        
                        
                         timestring1.append(dx)
                     }
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    
    
    func GetPM1ChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotPM1LastWeekData(userdetails: PlotdataPM1LastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                     self.setPM1(serieData, timeString: timestring1)
                    self.setPM1Weekly(serieData, timeString: timestring1)

                 }
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetPM1ChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotPM1LastMonthData(userdetails: PlotdataPM1LastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                     self.setPM1(serieData, timeString: timestring1)
                    self.setPM1Monthly(serieData, timeString: timestring1)

                 }
                }
                   
               }))
    }
    func GetPM1ChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDay1MinuteData(userdetails: PlotdataPM1DayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetPM1ChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDay2MinuteData(userdetails: PlotdataPM1DayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    func GetPM1ChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDay5MinuteData(userdetails: PlotdataPM1DayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetPM1hartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDay10MinuteData(userdetails: PlotdataPM1DayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetPM1ChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDay30MinuteData(userdetails: PlotdataPM1DayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetPM1ChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDay60MinuteData(userdetails: PlotdataPM1DayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    func GetPM1ChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDay2HoursData(userdetails: PlotdataPM1DayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    func GetPM1ChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotPM1LastDay8HoursData(userdetails: PlotdataPM1DayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 
                 for item in self.data
                 {
                     if self.sPM1MeasreValue.count <= 4
                     {
                     
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM1Dates.append(self.convertDate(item.time!))

                     self.sPM1MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time!)
                     }
                     
                 }
                 if self.sPM1MeasreValue.count > 0
                 {
                   //  self.setPM1Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)

                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setPM1(serieData, timeString: timestring1)
                     

                 }
                }
                   
               }))
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
//
//
//    func GetPM1ChartValueAPI()
//    {
//
//
//        ApiHandler.shared.postPlotPM1Data(userdetails: PlotdataReqpm1n(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//
//                    for item in self.data
//                    {
//                        if self.sPM1MeasreValue.count <= 4
//                        {
//
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.sPM1Dates.append(self.convertDate(item.time!))
//
//                        self.sPM1MeasreValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time!)
//                        }
//
//                    }
//                    if self.sPM1MeasreValue.count > 0
//                    {
//                      //  self.setPM1Chart()
//
//                        var serieData: [Double] = []
//                        var k = 0
//                        var timestring1 = [String]()
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            //self.xaxisData.append(Double(k))
//                            timestring1.append(dx)
//                        }
//                        self.setPM1(serieData, timeString: timestring1)
//
//
//                    }
//                   }
//
//               }))
//
//    }
//
//
    
    
    
    
    
    /////////////////////////////////////      // Get All PM10 Chart Data /////////////////////////////////
    func GetPM10ChartLastDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDayData(userdetails: PlotdataPM1LastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    func GetPM10ChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotPM10LastWeekData(userdetails: PlotdataPM10LastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    
                    self.setPM10WeeklyGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetPM10ChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotPM10LastMonthData(userdetails: PlotdataPM10LastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    self.setPM10MonthlyGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetPM10ChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDay1MinuteData(userdetails: PlotdataPM10DayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM10ChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDay2MinuteData(userdetails: PlotdataPM10DayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetPM10ChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDay5MinuteData(userdetails: PlotdataPM10DayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM10ChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDay10MinuteData(userdetails: PlotdataPM10DayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM10ChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDay30MinuteData(userdetails: PlotdataPM10DayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM10ChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDay60MinuteData(userdetails: PlotdataPM10DayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetPM10ChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDay2HoursData(userdetails: PlotdataPM10DayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM10ChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotPM10LastDay8HoursData(userdetails: PlotdataPM10DayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sPM10MeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sPM10Dates.append(self.convertDate(item.time!))

                     self.sPM10MeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sPM10MeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.setPM10Graph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//
//    func GetPM10ChartValueAPI()
//    {
//
//
//        ApiHandler.shared.postPlotPM10Data(userdetails: PlotdataReqpm10n(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//                    for item in self.data
//                    {
//
//                        if self.sPM10MeasreValue.count <= 4
//                        {
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.sPM10Dates.append(self.convertDate(item.time!))
//
//                        self.sPM10MeasreValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time ?? "")
//                        }
//
//                    }
//                    if self.sPM10MeasreValue.count > 0
//                    {
//                       // self.setPM10Chart()
//
//                        var serieData: [Double] = []
//                        var k = 0
//                        var timestring1 = [String]()
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            //self.xaxisData.append(Double(k))
//                            timestring1.append(dx)
//                        }
//                        self.setPM01(serieData, timeString: timestring1)
//
//                    }
//
//                   }
//
//               }))
//
//    }
//
    
    /////////////////////////////////////      // Get All Temperature Chart Data /////////////////////////////////
    func GetTemperatureChartLastDayData()
    {
     
        ApiHandler.shared.postPlotTeperatureLastDayData(userdetails: PlotdataTempLastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                   
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    func GetTemperatureChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotTeperatureLastWeekData(userdetails: PlotdataTempLastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                     self.setTeperatureGraph(serieData, timeString: timestring1)
                    
                    
                    
                    self.setTeperatureGraphWeekly(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetTempChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotTemperatureLastMonthData(userdetails: PlotdataTempLastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                     self.setTeperatureGraph(serieData, timeString: timestring1)
                    self.setTeperatureGraphMonthly(serieData, timeString: timestring1)
                 }
                 
                }
                   
               }))
    }
    func GetTempChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotTemperatureLast1MinuteData(userdetails: PlotdataTempDayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    
                    timestring1 = timestring1.suffix(5)

                    
                    
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetTempChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotTemperatureLast2MinuteData(userdetails: PlotdataTempDayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    
                    timestring1 = timestring1.suffix(5)
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetTempChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotTemperatureLast5MinuteData(userdetails: PlotdataTempDayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    
                    
                    timestring1 = timestring1.suffix(5)
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetTempChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotTemperatureLast10MinuteData(userdetails: PlotdataTempDayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    
                    timestring1 = timestring1.suffix(5)
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetTempChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotTemperatureLast30MinuteData(userdetails: PlotdataTempDayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    
                    timestring1 = timestring1.suffix(5)
                    
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetTempChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotTemperatureLast60MinuteData(userdetails: PlotdataTempDayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetTempChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotTemperatureLast2HoursData(userdetails: PlotdataTempDayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetTempChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotTemperatureLast8HoursData(userdetails: PlotdataTempDayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sTepMeasureMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sTeperatureDates.append(self.convertDate(item.time!))

                     self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sTepMeasureMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setTeperatureGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
   
    
    
    
    
    
    
    
    
//
//    func GetTeperatureChartValueAPI()
//    {
//
//
//
//
//
//        ApiHandler.shared.postPlotTeperatureData(userdetails: PlotdataReqTeperature(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//                    for item in self.data
//                    {
//
//                        if self.sTepMeasureMeasreValue.count <= 4
//                        {
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.sTeperatureDates.append(self.convertDate(item.time!))
//
//                        self.sTepMeasureMeasreValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time ?? "")
//                        }
//
//                    }
//                    if self.sTepMeasureMeasreValue.count > 0
//                    {
//                       // self.setPM10Chart()
//
//                        var serieData: [Double] = []
//                        var k = 0
//                        var timestring1 = [String]()
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            //self.xaxisData.append(Double(k))
//                            timestring1.append(dx)
//                        }
//                        self.setTeperatureGraph(serieData, timeString: timestring1)
//
//                    }
//
//                   }
//
//               }))
//
//    }
//
//
//    func GetCo2nChartValueAPI()
//    {
//
//        ApiHandler.shared.postPlotCo2nData(userdetails: PlotdataReqCo2n(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//                    for item in self.data
//                    {
//
//                        if self.sCo2nMeasureValue.count <= 4
//                        {
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.sCo2nDates.append(self.convertDate(item.time!))
//
//                        self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time ?? "")
//                        }
//
//                    }
//                    if self.sCo2nMeasureValue.count > 0
//                    {
//                       // self.setPM10Chart()
//
//                        var serieData: [Double] = []
//                        var k = 0
//                        var timestring1 = [String]()
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            //self.xaxisData.append(Double(k))
//                            timestring1.append(dx)
//                        }
//                        self.SetCo2n(serieData, timeString: timestring1)
//
//                    }
//
//                   }
//
//               }))
//
//    }
    
    /////////////////////////////////////      // Get All CO2 Chart Data /////////////////////////////////
    func GetCO2ChartLastDayData()
    {
     
        ApiHandler.shared.postPlotCo2nLastDayData(userdetails: PlotdataCO2LastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    func GetCO2ChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotCo2nLastWeekData(userdetails: PlotdataCO2LastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                    self.SetCarbonDioxide(serieData, timeString: timestring1)
                    self.SetCarbonDioxideWeekly(serieData, timeString: timestring1)
                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetCO2ChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotCo2nLastMonthData(userdetails: PlotdataCO2LastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    self.SetCarbonDioxideMonthly(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetCO2ChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCo2n1MinuteDayData(userdetails: PlotdataCO2DayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCO2ChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCo2n2MinuteDayData(userdetails: PlotdataCO2DayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetCO2ChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCo2n5MinuteDayData(userdetails: PlotdataCO2DayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCO2ChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCo2n10MinuteDayData(userdetails: PlotdataCO2DayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCO2ChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCo2n30MinuteDayData(userdetails: PlotCO2DayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCO2ChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCo2n60MinuteDayData(userdetails: PlotdataCO2DayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetCO2ChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotCo2n2HoursDayData(userdetails: PlotdataCO2DayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    
    func GetCO2ChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotCo2n8HoursDayData(userdetails: PlotdataCO2DayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCo2nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCo2nDates.append(self.convertDate(item.time!))

                     self.sCo2nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCo2nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                    self.SetCarbonDioxide(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    
    
    
//    func GetPM2_5nChartValueAPI()
//    {
//
//        ApiHandler.shared.postPlotpm2_5nData(userdetails: PlotdataReqpm2_5n(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//                    for item in self.data
//                    {
//
//                        if self.spm2_5nMeasureValue.count <= 4
//                        {
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.spm2_5nDates.append(self.convertDate(item.time!))
//
//                        self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time ?? "")
//                        }
//
//                    }
//                    if self.spm2_5nMeasureValue.count > 0
//                    {
//                       // self.setPM10Chart()
//
//                        var serieData: [Double] = []
//                        var k = 0
//                        var timestring1 = [String]()
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            //self.xaxisData.append(Double(k))
//                            timestring1.append(dx)
//                        }
//                        self.SetPM2_5n(serieData, timeString: timestring1)
//
//                    }
//
//                   }
//
//               }))
//
//    }
    
    
    /////////////////////////////////////      // Get All PM2_5 Chart Data /////////////////////////////////
    func GetPM2_5ChartLastDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLastDayData(userdetails: PlotdataPM2_5LastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    func GetPM2_5ChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLastWeekData(userdetails: PlotdataPM2_5LastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                     self.SetPM2_5n(serieData, timeString: timestring1)
                    self.SetPM2_5nWeekly(serieData, timeString: timestring1)
                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetPM2_5ChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLastMOnthData(userdetails: PlotdataPM2_5LastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                     self.SetPM2_5n(serieData, timeString: timestring1)
                    self.SetPM2_5nMonthly(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetPM2_5ChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLast1MinuteDayData(userdetails: PlotdataPM2_5DayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM2_5ChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLast2MinuteDayData(userdetails: PlotdataPM2_5DayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetPM2_5ChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLast5MinuteDayData(userdetails: PlotdataPM2_5DayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM2_5ChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLast10MinuteDayData(userdetails: PlotdataPM2_5DayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM2_5ChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLast30MinuteDayData(userdetails: PlotPM2_5TempDayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetPM2_5ChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLast60MinuteDayData(userdetails: PlotdataPM2_5DayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetPM2_5ChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLast2HoursDayData(userdetails: PlotdataPM2_5DayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    
    func GetPM2_5ChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotpm2_5nLast8HoursDayData(userdetails: PlotdataPM2_5DayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.spm2_5nMeasureValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.spm2_5nDates.append(self.convertDate(item.time!))

                     self.spm2_5nMeasureValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.spm2_5nMeasureValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.SetPM2_5n(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    /////////////////////////////////////      // Get All OZONE Chart Data /////////////////////////////////
    func GetOzoneChartLastDayData()
    {
     
        ApiHandler.shared.postPlotOzoneLastDayData(userdetails: PlotdataOzoneLastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setOzoneGraph(serieData, timeString: timestring1)
                 }
                 
                }
                   
               }))
    }
    
    
    
    func GetOzoneChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotOzoneLastWeekData(userdetails: PlotdataOzoneLastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    self.setOzoneWeeklyGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetOzoneChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotOzoneLastMonthData(userdetails: PlotdataOzoneLastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                     self.setOzoneGraph(serieData, timeString: timestring1)
                    self.setOzoneMOnthlyGraph(serieData, timeString: timestring1)
                 }
                 
                }
                   
               }))
    }
    func GetOzoneChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotOzoneDay1MinuteData(userdetails: PlotdataOzoneDayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setOzoneGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetOzoneChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotOzoneDay2MinuteData(userdetails: PlotdataOzoneDayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setOzoneGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetOzoneChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotOzoneDay5MinuteData(userdetails: PlotdataOzoneDayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setOzoneGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetOzoneChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotOzoneDay10MinuteData(userdetails: PlotdataOzoneDayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setOzoneGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetOzoneChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotOzoneDay30MinuteData(userdetails: PlotOzoneDayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setOzoneGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetOzoneChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotOzoneDay60MinuteData(userdetails: PlotdataOzoneDayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setOzoneGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetOzoneChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotOzoneDay2HoursData(userdetails: PlotdataOzoneDayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setOzoneGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    
    func GetOzoneChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotOzoneDay8HoursData(userdetails: PlotdataOzoneDayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sOzoneMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sOzoneDates.append(self.convertDate(item.time!))

                     self.sOzoneMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sOzoneMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setOzoneGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    /////////////////////////////////////      // Get All CO Chart Data /////////////////////////////////
    func GetCOChartLastDayData()
    {
     
        ApiHandler.shared.postPlotCOLastDayData(userdetails: PlotdataCarbonMonoxideLastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))
                        
                        
                       

                     self.sCarbonMonoxideMeasreValue.append(Double(item.measureValue!)!)
                        
                        
                        
                        
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    
                    
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    func GetCOChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotCOLastWeekData(userdetails: PlotdataCarbonMonoxideLastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

//                        if Double(item.measureValue!)! > 2000.00
//                        {
//                            self.sCarbonMonoxideMeasreValue.append(0.0)
//
//                        }
//                        else
//                        {
//                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
//
//                            self.sCarbonMonoxideMeasreValue.append(iValue)
//
//                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
//                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)
                    
                    
                   
                    
                    
                    self.setCarbonMonoxideWeeklyGraph(serieData, timeString: timestring1)
                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetCOChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotCOLastMonthData(userdetails: PlotdataCarbonMonoxideLastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

//                        if Double(item.measureValue!)! > 2000.00
//                        {
//                            self.sCarbonMonoxideMeasreValue.append(0.0)
//
//                        }
//                        else
//                        {
//                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
//
//                            self.sCarbonMonoxideMeasreValue.append(iValue)
//
//                        }
//
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                        
                        
                        if Double(dt.measureValue!)! > 2000.00
                        {
                            serieData.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                            
                            serieData.append(iValue)

                        }
                        
                        
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
//                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)
                    self.setCarbonMonoxideMonthlyGraph(serieData, timeString: timestring1)
                 }
                 
                }
                   
               }))
    }
    func GetCOChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCOLast1MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

                        if Double(item.measureValue!)! > 2000.00
                        {
                            self.sCarbonMonoxideMeasreValue.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
                            
                            self.sCarbonMonoxideMeasreValue.append(iValue)

                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    timestring1 = timestring1.suffix(5)
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCOChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCOLast2MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

                        if Double(item.measureValue!)! > 2000.00
                        {
                            self.sCarbonMonoxideMeasreValue.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
                            
                            self.sCarbonMonoxideMeasreValue.append(iValue)

                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    timestring1 = timestring1.suffix(5)
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetCOChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCOLast5MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

                        if Double(item.measureValue!)! > 2000.00
                        {
                            self.sCarbonMonoxideMeasreValue.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
                            
                            self.sCarbonMonoxideMeasreValue.append(iValue)

                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    timestring1 = timestring1.suffix(5)
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCOChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCOLast10MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

                        if Double(item.measureValue!)! > 2000.00
                        {
                            self.sCarbonMonoxideMeasreValue.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
                            
                            self.sCarbonMonoxideMeasreValue.append(iValue)

                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    timestring1 = timestring1.suffix(5)
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCOChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCOLast30MinuteDayData(userdetails: PlotdataCarbonMonoxideWeekReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

                        if Double(item.measureValue!)! > 2000.00
                        {
                            self.sCarbonMonoxideMeasreValue.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
                            
                            self.sCarbonMonoxideMeasreValue.append(iValue)

                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    timestring1 = timestring1.suffix(5)
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCOChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCOLast60MinuteDayData(userdetails: PlotdataCarbonMonoxideDayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

                        if Double(item.measureValue!)! > 2000.00
                        {
                            self.sCarbonMonoxideMeasreValue.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
                            
                            self.sCarbonMonoxideMeasreValue.append(iValue)

                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    timestring1 = timestring1.suffix(5)
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetCOChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotCOLast2HoursDayData(userdetails: PlotdataCarbonMonoxideDayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

                        if Double(item.measureValue!)! > 2000.00
                        {
                            self.sCarbonMonoxideMeasreValue.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
                            
                            self.sCarbonMonoxideMeasreValue.append(iValue)

                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    timestring1 = timestring1.suffix(5)
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    
    func GetCOChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotCOLast8HoursDayData(userdetails: PlotdataCarbonMonoxideDayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sCarbonMonoxideMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sCarbonMonoxideDates.append(self.convertDate(item.time!))

                        if Double(item.measureValue!)! > 2000.00
                        {
                            self.sCarbonMonoxideMeasreValue.append(0.0)

                        }
                        else
                        {
                            let iValue = (Double(item.measureValue!)! - 2000)/0.5958
                            
                            self.sCarbonMonoxideMeasreValue.append(iValue)

                        }
                        
                        print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sCarbonMonoxideMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                        k = k + 1
                       
                       
                       if Double(dt.measureValue!)! > 2000.00
                       {
                           serieData.append(0.0)

                       }
                       else
                       {
                           let iValue = (Double(dt.measureValue!)! - 2000)/0.5958
                           
                           serieData.append(iValue)

                       }
                       
                       
                        let dx = self.convertDate(dt.time!)
                        //self.xaxisData.append(Double(k))
                        timestring1.append(dx)
                    }
                    timestring1 = timestring1.suffix(5)
                     self.setCarbonMonoxideGraph(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    /////////////////////////////////////      // Get All Formaldihide Chart Data /////////////////////////////////
    func GetCH2OChartLastDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLastDayData(userdetails: Plotdatach2onLastDayRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    func GetCH2OChartLastWeekData()
    {
     
        ApiHandler.shared.postPlotCH2OLastWeekData(userdetails: Plotdatach2onLastWeekRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setFormaldihydeWeekly(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    func GetCH2OChartLastMonthData()
    {
     
        ApiHandler.shared.postPlotCH2OLastMonthData(userdetails: Plotdatach2onLastMonthRequest(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                     self.setFormaldihydeMonthly(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetCH2OChartLast1MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLast1MinuteDayData(userdetails: Plotdatach2onDayReqFor1Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCH2OChartLast2MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLast2MinuteDayData(userdetails: Plotdatach2onDayReqFor2Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetCH2OChartLast5MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLast5MinuteDayData(userdetails: Plotdatach2onDayReqFor5Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCH2OChartLast10MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLast10MinuteDayData(userdetails: Plotdatach2onDayReqFor10Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCH2OChartLast30MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLast30MinuteDayData(userdetails: Plotch2onDayReqFor30Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    func GetCH2OChartLast60MinuteDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLast60MinuteDayData(userdetails: Plotdatach2onDayReqFor60Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    func GetCH2OChartLast2HoursDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLast2HOURSDayData(userdetails: Plotdatach2onDayReqFor120Minute(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
    
    func GetCH2OChartLast8HoursDayData()
    {
     
        ApiHandler.shared.postPlotCH2OLast8HOURSDayData(userdetails: Plotdatach2onDayReqFor8Hours(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                    self.data = resp as! [PlotData]
                 
                 for item in self.data
                 {
                     
                     if self.sFormaldihydeMeasreValue.count <= 4
                     {
//                        print(self.convertDateFormat(inputDate: item.time!))
                     
                     self.sFormaldihydeDates.append(self.convertDate(item.time!))

                     self.sFormaldihydeMeasreValue.append(Double(item.measureValue!)!)
                     print(item.measureValue ?? "")
                     print(item.time ?? "")
                     }
                     
                 }
                 if self.sFormaldihydeMeasreValue.count > 0
                 {
                    // self.setPM10Chart()
                     
                     var serieData: [Double] = []
                     var k = 0
                     var timestring1 = [String]()
                     for dt in self.data{
                         k = k + 1
                         serieData.append(Double(dt.measureValue!)!)
                         let dx = self.convertDate(dt.time!)
                         //self.xaxisData.append(Double(k))
                         timestring1.append(dx)
                     }
                    timestring1 = timestring1.suffix(5)
                     self.setFormaldihyde(serieData, timeString: timestring1)

                 }
                 
                }
                   
               }))
    }
    
    
    
    
    
    
//    func GeteCo2_nChartValueAPI()
//    {
//
//        ApiHandler.shared.postPloteCo2_nData(userdetails: PlotdataReqeCo2_n(), completion: ({(sucess,obj,alert,resp) in
//                   if sucess{
//                       self.data = resp as! [PlotData]
//
//                    for item in self.data
//                    {
//
//                        if self.seCo2_nMeasureValue.count <= 4
//                        {
////                        print(self.convertDateFormat(inputDate: item.time!))
//
//                        self.seCo2_nDates.append(self.convertDate(item.time!))
//
//                        self.seCo2_nMeasureValue.append(Double(item.measureValue!)!)
//                        print(item.measureValue ?? "")
//                        print(item.time ?? "")
//                        }
//
//                    }
//                    if self.seCo2_nMeasureValue.count > 0
//                    {
//                       // self.setPM10Chart()
//
//                        var serieData: [Double] = []
//                        var k = 0
//                        var timestring1 = [String]()
//                        for dt in self.data{
//                            k = k + 1
//                            serieData.append(Double(dt.measureValue!)!)
//                            let dx = self.convertDate(dt.time!)
//                            //self.xaxisData.append(Double(k))
//                            timestring1.append(dx)
//                        }
//                        self.SetECo2_n(serieData, timeString: timestring1)
//
//                    }
//
//                   }
//
//               }))
//
//    }
    
    func GetDashBoardRoomDetails()
    {
     
        self.view.activityStartAnimating()
        
        var postDict = Dictionary<String,String>()

        postDict = [
            "access_token":self.sharedData.getAccessToken()
            
        ]
        
        print("PostData: ",postDict)
        let loginURL = Constants.baseURL+Constants.dashboardURL

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
                    self.homeRoomResponseModel = HomeRoomResponseModel(response)
                    
                    let statusCode = Int((self.homeRoomResponseModel?.httpcode)!)
                    if statusCode == 200{
                        print("registerResponseModel ----- ",self.homeRoomResponseModel)
                        self.view.activityStopAnimating()

                        self.dashboardlistData = self.homeRoomResponseModel?.dashboardata
                        
                        self.dashboardata = (self.dashboardlistData?.dashboardata)!
                        
                        if self.dashboardata.count > 0
                        {
                            self.deviceListData = self.dashboardata[0].deviceListData!
                            self.sensors = self.deviceListData[0].sensors
                            
                        }
                        self.collectionViewHome.reloadData()
                        
                        
                        
                    }
                    if statusCode == 400{
                        
                     self.showToast(message: (self.homeRoomResponseModel?.message)!)
                    }
                    
                    
                    self.view.activityStopAnimating()
                    
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }

    @IBAction func ActionPopUpTimeSettings(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomePopUpViewController") as! HomePopUpViewController
        next.sDeviceId = self.sharedData.getDefoultDeviceID()
        next.sTimeDropDown = true
        self.navigationController?.pushViewController(next, animated: false)
    }
    
    @IBAction func StatusSelection(_ sender: UIButton) {
        
        if sender.tag == 1
        {
            self.viewWeek.isHidden = true
            self.viewMonth.isHidden = true
            
            
            self.setTeperatureGraph([0.0], timeString: [""])
            self.setHumidity([0.0])
            self.setOzoneGraph([0.0], timeString: [""])
            self.setCarbonMonoxideGraph([0.0], timeString: [""])
            self.setPM1([0.0], timeString: [""])
            self.SetPM2_5n([0.0], timeString: [""])
            self.setPM10Graph([0.0], timeString: [""])
            self.setVOC([0.0], timeString: [""])
            self.setFormaldihyde([0.0], timeString: [""])
            self.SetCarbonDioxide([0.0], timeString: [""])
            self.setLux([0.0], timeString: [""])



            self.view.activityStartAnimating()
            self.viewDailyStatus.backgroundColor = UIColor.systemGreen
            self.btnDailyStatus.setTitleColor(UIColor.systemGreen, for: .normal)
            self.viewWeeklyStatus.backgroundColor = UIColor.clear
            self.btnweeklyStatus.setTitleColor(UIColor.black, for: .normal)
            self.viewMonthlyStatus.backgroundColor = UIColor.clear
            self.btnMonthlyStatus.setTitleColor(UIColor.black, for: .normal)
//            self.sharedData.setGraphStatus(token: "1")

            
            self.GetTemperatureChartLastDayData()
            self.GetHumidityChartLastDayData()
            self.GetCOChartLastDayData()
            self.GetOzoneChartLastDayData()
            self.GetPM1ChartLastDayData()
            self.GetPM2_5ChartLastDayData()
            self.GetPM10ChartLastDayData()
            self.GetVOCChartLastDayData()
            self.GetCH2OChartLastDayData()
            self.GetCO2ChartLastDayData()
            self.GetLuxChartLastDayData()
        }
        else if sender.tag == 2
        {
            self.view.activityStartAnimating()

            
//
//            self.setTeperatureGraphWeekly([0.0], timeString: [""])
//            self.setHumidityWeekly([0.0])
//            self.setOzoneWeeklyGraph([0.0], timeString: [""])
//            self.setCarbonMonoxideWeeklyGraph([0.0], timeString: [""])
//            self.setPM1Weekly([0.0], timeString: [""])
//            self.SetPM2_5nWeekly([0.0], timeString: [""])
//            self.setPM10WeeklyGraph([0.0], timeString: [""])
//            self.setVOCWeekly([0.0], timeString: [""])
//            self.setFormaldihydeWeekly([0.0], timeString: [""])
//            self.SetCarbonDioxideWeekly([0.0], timeString: [""])
//            self.setLuxWeekly([0.0], timeString: [""])

            
            
            
            
            
            
            self.viewWeeklyStatus.backgroundColor = UIColor.systemGreen
            self.btnweeklyStatus.setTitleColor(UIColor.systemGreen, for: .normal)
            self.viewDailyStatus.backgroundColor = UIColor.clear
            self.btnDailyStatus.setTitleColor(UIColor.black, for: .normal)
            self.viewMonthlyStatus.backgroundColor = UIColor.clear
            self.btnMonthlyStatus.setTitleColor(UIColor.black, for: .normal)
//            self.sharedData.setGraphStatus(token: "2")

            
            
            self.viewWeek.isHidden = false
            self.viewMonth.isHidden = true
            
            self.GetTemperatureChartLastWeekData()
            self.GetHumidityChartLastWeekData()
            self.GetCOChartLastWeekData()
            self.GetOzoneChartLastWeekData()
            self.GetPM1ChartLastWeekData()
            self.GetPM2_5ChartLastWeekData()
            self.GetPM10ChartLastWeekData()
            self.GetVOCChartLastWeekData()
            self.GetCH2OChartLastWeekData()
            self.GetCO2ChartLastWeekData()
            self.GetLuxChartLastWeekData()
        }
        else if sender.tag == 3
        {
            self.viewWeek.isHidden = true
            self.viewMonth.isHidden = false
            self.view.activityStartAnimating()

            self.viewMonthlyStatus.backgroundColor = UIColor.systemGreen
            self.btnMonthlyStatus.setTitleColor(UIColor.systemGreen, for: .normal)
            self.viewWeeklyStatus.backgroundColor = UIColor.clear
            self.btnweeklyStatus.setTitleColor(UIColor.black, for: .normal)
            self.viewDailyStatus.backgroundColor = UIColor.clear
            self.btnDailyStatus.setTitleColor(UIColor.black, for: .normal)
            
//            self.sharedData.setGraphStatus(token: "3")

//            self.setTeperatureGraphMonthly([0.0], timeString: [""])
//            self.setHumidityMonthly([0.0])
//            self.setOzoneMOnthlyGraph([0.0], timeString: [""])
//            self.setCarbonMonoxideMonthlyGraph([0.0], timeString: [""])
//            self.setPM1Monthly([0.0], timeString: [""])
//            self.SetPM2_5nMonthly([0.0], timeString: [""])
//            self.setPM10MonthlyGraph([0.0], timeString: [""])
//            self.setVOCMonthly([0.0], timeString: [""])
//            self.setFormaldihydeMonthly([0.0], timeString: [""])
//            self.SetCarbonDioxideMonthly([0.0], timeString: [""])
//            self.setLuxMonthly([0.0], timeString: [""])

            
            
            
            
            
            
            
            self.GetTempChartLastMonthData()
            self.GetHumidityChartLastMonthData()
            self.GetCOChartLastMonthData()
            self.GetOzoneChartLastMonthData()
            self.GetPM1ChartLastMonthData()
            self.GetPM2_5ChartLastMonthData()
            self.GetPM10ChartLastMonthData()
            self.GetVOCChartLastMonthData()
            self.GetCH2OChartLastMonthData()
            self.GetCO2ChartLastMonthData()
            self.GetLuxChartLastMonthData()
        }
    }
    
    func setTeperatureGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        temperatureGraphView.lineWidth = 2.0
        temperatureGraphView.labelFont = UIFont.systemFont(ofSize: 12)
        temperatureGraphView.xLabelsTextAlignment = .right
        
        

        temperatureGraphView.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            temperatureGraphView.yLabels = [serieData.min()! ,serieData.min()! + 10, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 10, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            temperatureGraphView.yLabels = serieData
            temperatureGraphView.xLabels = stepDouble1
            temperatureGraphView.minY = serieData.min()
        }
        temperatureGraphView.backgroundColor = UIColor.black
        temperatureGraphView.axesColor = .red
        temperatureGraphView.gridColor = ChartColors.greenColor()
        temperatureGraphView.add(series)
        XaxisViewTeperature.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            XaxisViewTeperature.addSubview(label)
        }
        }
    }
    
    func setHumidity( _ series:[Double]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        humidityGraphView.lineWidth = 2.0

        humidityGraphView.labelFont = UIFont.systemFont(ofSize: 12)
        humidityGraphView.xLabelsTextAlignment = .center
        humidityGraphView.yLabelsOnRightSide = false
        
        if serieData.count > 0
        {
        humidityGraphView.yLabels = [serieData.min()! ,serieData.min()! + 10, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 10, serieData.max()!]
        let step = xaxisData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            humidityGraphView.yLabels = serieData

        humidityGraphView.xLabels = stepDouble1
        humidityGraphView.minY = serieData.min()!
        }
        humidityGraphView.backgroundColor =  UIColor.black
        humidityGraphView.axesColor = .red
        humidityGraphView.gridColor = ChartColors.greenColor()
        humidityGraphView.add(series)
        xAxisViewHumidity.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))

            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisViewHumidity.addSubview(label)
        }
        }
    }
    func setCarbonMonoxideGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        CarbonMonoxideChartView.lineWidth = 2.0
        CarbonMonoxideChartView.labelFont = UIFont.systemFont(ofSize: 12)
        CarbonMonoxideChartView.xLabelsTextAlignment = .center
        CarbonMonoxideChartView.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            CarbonMonoxideChartView.yLabels = [serieData.min()! ,serieData.min()! + 500, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 500, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            CarbonMonoxideChartView.yLabels = serieData

            CarbonMonoxideChartView.xLabels = stepDouble1
            CarbonMonoxideChartView.minY = serieData.min()!
        }
        CarbonMonoxideChartView.backgroundColor = UIColor.black
        CarbonMonoxideChartView.axesColor = .red
        CarbonMonoxideChartView.gridColor = ChartColors.greenColor()
        CarbonMonoxideChartView.add(series)
        xAxisViewCarbonMonoxide.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisViewCarbonMonoxide.addSubview(label)
        }
        }
    }
    
    func setOzoneGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        OzoneChartView.lineWidth = 2.0
        OzoneChartView.labelFont = UIFont.systemFont(ofSize: 12)
        OzoneChartView.xLabelsTextAlignment = .center
        OzoneChartView.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            OzoneChartView.yLabels = [serieData.min()! ,serieData.min()! + 500, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 500, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            OzoneChartView.yLabels = serieData
            OzoneChartView.xLabels = stepDouble1
            OzoneChartView.minY = serieData.min()!
        }
        OzoneChartView.backgroundColor = UIColor.black
        OzoneChartView.axesColor = .red
        OzoneChartView.gridColor = ChartColors.greenColor()
        OzoneChartView.add(series)
        xAxisOzoneChartView.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{

            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisOzoneChartView.addSubview(label)
        }
        }
    }
    func setPM1( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        pm1GraphView.lineWidth = 2.0
        pm1GraphView.labelFont = UIFont.systemFont(ofSize: 12)
        pm1GraphView.xLabelsTextAlignment = .center
        pm1GraphView.yLabelsOnRightSide = false
        if serieData.count > 0
        {
        pm1GraphView.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            pm1GraphView.yLabels = serieData

        pm1GraphView.xLabels = stepDouble1
        pm1GraphView.minY = serieData.min()
        pm1GraphView.maxY = serieData.max()
        }
        pm1GraphView.backgroundColor = UIColor.black
        pm1GraphView.axesColor = .red
        pm1GraphView.gridColor =  ChartColors.greenColor()
        pm1GraphView.add(series)
        xAxisViewPM1.backgroundColor = UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisViewPM1.addSubview(label)
        }
        }
    }
    
    func SetPM2_5n( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        PM2_5ChartView.lineWidth = 2.0
        PM2_5ChartView.labelFont = UIFont.systemFont(ofSize: 12)
        PM2_5ChartView.xLabelsTextAlignment = .center
        PM2_5ChartView.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            PM2_5ChartView.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            PM2_5ChartView.yLabels = serieData

            PM2_5ChartView.xLabels = stepDouble1
            PM2_5ChartView.minY = serieData.min()
            PM2_5ChartView.maxY = serieData.max()

        }
        PM2_5ChartView.backgroundColor = UIColor.black
        PM2_5ChartView.axesColor = .red
        PM2_5ChartView.gridColor = ChartColors.greenColor()
        PM2_5ChartView.add(series)
        xAxisPM2_5.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisPM2_5.addSubview(label)
        }
        }
    }
    
    func setPM10Graph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        PM10ChartView.lineWidth = 2.0
        PM10ChartView.labelFont = UIFont.systemFont(ofSize: 12)
        PM10ChartView.xLabelsTextAlignment = .center
        PM10ChartView.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            PM10ChartView.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            PM10ChartView.yLabels = serieData

            PM10ChartView.xLabels = stepDouble1
            PM10ChartView.minY = serieData.min()!
            PM10ChartView.maxY = serieData.max()

        }
        PM10ChartView.backgroundColor = UIColor.black
        PM10ChartView.axesColor = .red
        PM10ChartView.gridColor = ChartColors.greenColor()
        PM10ChartView.add(series)
        xAxisPM10View.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisPM10View.addSubview(label)
        }
        }
    }
   
    func setVOC( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        vocGraphView.lineWidth = 2.0
        vocGraphView.labelFont = UIFont.systemFont(ofSize: 12)
        vocGraphView.xLabelsTextAlignment = .center
        vocGraphView.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            vocGraphView.yLabels = [serieData.min()! ,serieData.min()! + 0.2, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 0.2, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            vocGraphView.yLabels = serieData

        vocGraphView.xLabels = stepDouble1
        vocGraphView.minY = serieData.min()!
        }
        vocGraphView.backgroundColor =  UIColor.black
        vocGraphView.axesColor = .red
        vocGraphView.gridColor = ChartColors.greenColor()
        vocGraphView.add(series)
        xAxisVOC.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisVOC.addSubview(label)
        }
        }
    }
    func setFormaldihyde( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        FormaldihydeChartView.lineWidth = 2.0
        FormaldihydeChartView.labelFont = UIFont.systemFont(ofSize: 12)
        FormaldihydeChartView.xLabelsTextAlignment = .center
        FormaldihydeChartView.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            FormaldihydeChartView.yLabels = [serieData.min()! ,serieData.min()! + 3, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 3, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            FormaldihydeChartView.yLabels = serieData

            FormaldihydeChartView.xLabels = stepDouble1
            FormaldihydeChartView.minY = serieData.min()!
        }
        FormaldihydeChartView.backgroundColor =  UIColor.black
        FormaldihydeChartView.axesColor = .red
        FormaldihydeChartView.gridColor = ChartColors.greenColor()
        FormaldihydeChartView.add(series)
        formaldihydeView.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            formaldihydeView.addSubview(label)
        }
        }
    }
    func SetCarbonDioxide( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        CarbonDioxideChart.lineWidth = 2.0
        CarbonDioxideChart.labelFont = UIFont.systemFont(ofSize: 12)
        CarbonDioxideChart.xLabelsTextAlignment = .center
        CarbonDioxideChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            CarbonDioxideChart.yLabels = [serieData.min()! ,serieData.min()! + 100, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 100, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            CarbonDioxideChart.yLabels = serieData

            CarbonDioxideChart.xLabels = stepDouble1
            CarbonDioxideChart.minY = serieData.min()!
        }
        CarbonDioxideChart.backgroundColor = UIColor.black
        CarbonDioxideChart.axesColor = .red
        CarbonDioxideChart.gridColor = ChartColors.greenColor()
        CarbonDioxideChart.add(series)
        xAxisCarbonDioxide.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisCarbonDioxide.addSubview(label)
        }
        }
    }
    func setLux( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        luxGraphView.lineWidth = 2.0
        luxGraphView.labelFont = UIFont.systemFont(ofSize: 12)
        luxGraphView.xLabelsTextAlignment = .center
        luxGraphView.yLabelsOnRightSide = false
        
        if serieData.count > 0
        {
            
            luxGraphView.yLabels = [serieData.min()! ,serieData.min()! + 0.2, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 0.2, serieData.max()!]
            let step = serieData.count / 5
            var stepDouble1 = [Double]()
            for j in 0...4{
                stepDouble1.append(Double(j * step))
            }
//            luxGraphView.yLabels = serieData
            luxGraphView.xLabels = stepDouble1
            luxGraphView.minY = serieData.min()!
        }
        
       
        luxGraphView.backgroundColor =  UIColor.black
        luxGraphView.axesColor = .red
        luxGraphView.gridColor = UIColor.clear
        luxGraphView.add(series)
        xAxisLux.backgroundColor =  UIColor.black
        
        
        
        if stepDouble.count > 0
        {
            
            for k in 0...4{
                var xFrame = Double()
                if k == 0
                {
                    xFrame = 5.0
                }
                else
                {
                    xFrame = (stepDouble[k] * 2.4) - 10
                }
                let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
                label.textColor = .white
                if timeString.count > k{
                    label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
                }
                label.font = UIFont.systemFont(ofSize: 6.0)
                label.textColor = .white
                label.textAlignment = .left
                xAxisLux.addSubview(label)
            }
        }
       
 
    }
    
    //////// Weekly Graph
    
    func setTeperatureGraphWeekly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        temperatureWeeklyChart.lineWidth = 2.0
        temperatureWeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        temperatureWeeklyChart.xLabelsTextAlignment = .right
        
        
        
        temperatureWeeklyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            temperatureWeeklyChart.yLabels = [serieData.min()! ,serieData.min()! + 10, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 10, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            temperatureWeeklyChart.yLabels = serieData
            temperatureWeeklyChart.xLabels = stepDouble1
            temperatureWeeklyChart.minY = serieData.min()!
        }
        temperatureWeeklyChart.backgroundColor = UIColor.black
        temperatureWeeklyChart.axesColor = .red
        temperatureWeeklyChart.gridColor = ChartColors.greenColor()
        temperatureWeeklyChart.add(series)
        xAXisTemperatureWeekly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisTemperatureWeekly.addSubview(label)
        }
        }
    }
    
    func setHumidityWeekly( _ series:[Double]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        HumidityWeeklyChart.lineWidth = 2.0

        HumidityWeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        HumidityWeeklyChart.xLabelsTextAlignment = .center
        HumidityWeeklyChart.yLabelsOnRightSide = false
        
        if serieData.count > 0
        {
            HumidityWeeklyChart.yLabels = [serieData.min()! ,serieData.min()! + 10, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 10, serieData.max()!]
        let step = xaxisData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            HumidityWeeklyChart.yLabels = serieData

            HumidityWeeklyChart.xLabels = stepDouble1
            HumidityWeeklyChart.minY = serieData.min()!
        }
        HumidityWeeklyChart.backgroundColor =  UIColor.black
        HumidityWeeklyChart.axesColor = .red
        HumidityWeeklyChart.gridColor = ChartColors.greenColor()
        HumidityWeeklyChart.add(series)
        xAxisHumidityWeeklyChart.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisHumidityWeeklyChart.addSubview(label)
        }
        }
    }
    func setCarbonMonoxideWeeklyGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        CarbonMonoxideWeeklyChart.lineWidth = 2.0
        CarbonMonoxideWeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        CarbonMonoxideWeeklyChart.xLabelsTextAlignment = .center
        CarbonMonoxideWeeklyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            CarbonMonoxideWeeklyChart.yLabels = [serieData.min()! ,serieData.min()! + 500, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 500, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            CarbonMonoxideWeeklyChart.yLabels = serieData

            CarbonMonoxideWeeklyChart.xLabels = stepDouble1
            CarbonMonoxideWeeklyChart.minY = serieData.min()!
        }
        CarbonMonoxideWeeklyChart.backgroundColor = UIColor.black
        CarbonMonoxideWeeklyChart.axesColor = .red
        CarbonMonoxideWeeklyChart.gridColor = ChartColors.greenColor()
        CarbonMonoxideWeeklyChart.add(series)
        xAxisCarbonMonoxideWeekly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisCarbonMonoxideWeekly.addSubview(label)
        }
        }
    }
    
    func setOzoneWeeklyGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        OzoneWeeklyChart.lineWidth = 2.0
        OzoneWeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        OzoneWeeklyChart.xLabelsTextAlignment = .center
        OzoneWeeklyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            OzoneWeeklyChart.yLabels = [serieData.min()! ,serieData.min()! + 500, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 500, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            OzoneWeeklyChart.yLabels = serieData
            OzoneWeeklyChart.xLabels = stepDouble1
            OzoneWeeklyChart.minY = serieData.min()!
        }
        OzoneWeeklyChart.backgroundColor = UIColor.black
        OzoneWeeklyChart.axesColor = .red
        OzoneWeeklyChart.gridColor = ChartColors.greenColor()
        OzoneWeeklyChart.add(series)
        xAXisOzoneWeekly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisOzoneWeekly.addSubview(label)
        }
        }
    }
    func setPM1Weekly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        PM1WeeklyChart.lineWidth = 2.0
        PM1WeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        PM1WeeklyChart.xLabelsTextAlignment = .center
        PM1WeeklyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            PM1WeeklyChart.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            PM1WeeklyChart.yLabels = serieData

            PM1WeeklyChart.xLabels = stepDouble1
            PM1WeeklyChart.minY = serieData.min()
            PM1WeeklyChart.maxY = serieData.max()

        }
        PM1WeeklyChart.backgroundColor = UIColor.black
        PM1WeeklyChart.axesColor = .red
        PM1WeeklyChart.gridColor =  ChartColors.greenColor()
        PM1WeeklyChart.add(series)
        xAXisPM1WeeklyChart.backgroundColor = UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisPM1WeeklyChart.addSubview(label)
        }
        }
    }
    
    func SetPM2_5nWeekly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        PM2_5WeeklyChart.lineWidth = 2.0
        PM2_5WeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        PM2_5WeeklyChart.xLabelsTextAlignment = .center
        PM2_5WeeklyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            PM2_5WeeklyChart.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            PM2_5WeeklyChart.yLabels = serieData

            PM2_5WeeklyChart.xLabels = stepDouble1
            PM2_5WeeklyChart.minY = serieData.min()
            PM2_5WeeklyChart.maxY = serieData.max()

        }
        PM2_5WeeklyChart.backgroundColor = UIColor.black
        PM2_5WeeklyChart.axesColor = .red
        PM2_5WeeklyChart.gridColor = ChartColors.greenColor()
        PM2_5WeeklyChart.add(series)
        xAxisViewPM2_5Weekly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisViewPM2_5Weekly.addSubview(label)
        }
        }
    }
    
    func setPM10WeeklyGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        PM10WeeklyChart.lineWidth = 2.0
        PM10WeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        PM10WeeklyChart.xLabelsTextAlignment = .center
        PM10WeeklyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            PM10WeeklyChart.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            PM10WeeklyChart.yLabels = serieData

            PM10WeeklyChart.xLabels = stepDouble1
            PM10WeeklyChart.minY = serieData.min()
            PM10WeeklyChart.maxY = serieData.max()

        }
        PM10WeeklyChart.backgroundColor = UIColor.black
        PM10WeeklyChart.axesColor = .red
        PM10WeeklyChart.gridColor = ChartColors.greenColor()
        PM10WeeklyChart.add(series)
        xAXisPM10Weekly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisPM10Weekly.addSubview(label)
        }
        }
    }
   
    func setVOCWeekly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        VOCWeeklyGraph.lineWidth = 2.0
        VOCWeeklyGraph.labelFont = UIFont.systemFont(ofSize: 12)
        VOCWeeklyGraph.xLabelsTextAlignment = .center
        VOCWeeklyGraph.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            VOCWeeklyGraph.yLabels = [serieData.min()! ,serieData.min()! + 0.2, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 0.2, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            VOCWeeklyGraph.yLabels = serieData

            VOCWeeklyGraph.xLabels = stepDouble1
            VOCWeeklyGraph.minY = serieData.min()!
        }
        VOCWeeklyGraph.backgroundColor =  UIColor.black
        VOCWeeklyGraph.axesColor = .red
        VOCWeeklyGraph.gridColor = ChartColors.greenColor()
        VOCWeeklyGraph.add(series)
        xAXisVOCWeekly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisVOCWeekly.addSubview(label)
        }
        }
    }
    func setFormaldihydeWeekly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        FormaldihydeWeeklyChart.lineWidth = 2.0
        FormaldihydeWeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        FormaldihydeWeeklyChart.xLabelsTextAlignment = .center
        FormaldihydeWeeklyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            FormaldihydeWeeklyChart.yLabels = [serieData.min()! ,serieData.min()! + 3, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 3, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            FormaldihydeWeeklyChart.yLabels = serieData

            FormaldihydeWeeklyChart.xLabels = stepDouble1
            FormaldihydeWeeklyChart.minY = serieData.min()!
        }
        FormaldihydeWeeklyChart.backgroundColor =  UIColor.black
        FormaldihydeWeeklyChart.axesColor = .red
        FormaldihydeWeeklyChart.gridColor = ChartColors.greenColor()
        FormaldihydeWeeklyChart.add(series)
        xAxisDormaldihydeWeek.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisDormaldihydeWeek.addSubview(label)
        }
        }
    }
    func SetCarbonDioxideWeekly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        CarbonDIoxideWeeklyChart.lineWidth = 2.0
        CarbonDIoxideWeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        CarbonDIoxideWeeklyChart.xLabelsTextAlignment = .center
        CarbonDIoxideWeeklyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            CarbonDIoxideWeeklyChart.yLabels = [serieData.min()! ,serieData.min()! + 100, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 100, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            CarbonDIoxideWeeklyChart.yLabels = serieData

            CarbonDIoxideWeeklyChart.xLabels = stepDouble1
            CarbonDIoxideWeeklyChart.minY = serieData.min()!
        }
        CarbonDIoxideWeeklyChart.backgroundColor = UIColor.black
        CarbonDIoxideWeeklyChart.axesColor = .red
        CarbonDIoxideWeeklyChart.gridColor = ChartColors.greenColor()
        CarbonDIoxideWeeklyChart.add(series)
        xAxisViewCarbonDioxideWeekly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisViewCarbonDioxideWeekly.addSubview(label)
        }
        }
    }
    func setLuxWeekly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        LuxWeeklyChart.lineWidth = 2.0
        LuxWeeklyChart.labelFont = UIFont.systemFont(ofSize: 12)
        LuxWeeklyChart.xLabelsTextAlignment = .center
        LuxWeeklyChart.yLabelsOnRightSide = false
        
        if serieData.count > 0
        {
            
            LuxWeeklyChart.yLabels = [serieData.min()! ,serieData.min()! + 0.2, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 0.2, serieData.max()!]
            let step = serieData.count / 5
            var stepDouble1 = [Double]()
            for j in 0...4{
                stepDouble1.append(Double(j * step))
            }
//            LuxWeeklyChart.yLabels = serieData
            LuxWeeklyChart.xLabels = stepDouble1
            LuxWeeklyChart.minY = serieData.min()!
        }
        
       
        LuxWeeklyChart.backgroundColor =  UIColor.black
        LuxWeeklyChart.axesColor = .red
        LuxWeeklyChart.gridColor = ChartColors.greenColor()
        LuxWeeklyChart.add(series)
        xAxisLuxWeeklly.backgroundColor =  UIColor.black
        
        
        
        if stepDouble.count > 0
        {
            
            for k in 0...4{
                var xFrame = Double()
                if k == 0
                {
                    xFrame = 5.0
                }
                else
                {
                    xFrame = (stepDouble[k] * 2.4) - 10
                }
                let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
                label.textColor = .white
                if timeString.count > k{
                    label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
                }
                label.font = UIFont.systemFont(ofSize: 6.0)
                label.textColor = .white
                label.textAlignment = .left
                xAxisLuxWeeklly.addSubview(label)
            }
        }
       
 
    }
    
  // Monthly Charts
    
    func setTeperatureGraphMonthly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        temperatureMonthlyChart.lineWidth = 2.0
        temperatureMonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        temperatureMonthlyChart.xLabelsTextAlignment = .right
        
        
        
        temperatureMonthlyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            temperatureMonthlyChart.yLabels = [serieData.min()! ,serieData.min()! + 10, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 10, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            temperatureMonthlyChart.yLabels = serieData
            temperatureMonthlyChart.xLabels = stepDouble1
            temperatureMonthlyChart.minY = serieData.min()!
        }
        temperatureMonthlyChart.backgroundColor = UIColor.black
        temperatureMonthlyChart.axesColor = .red
        temperatureMonthlyChart.gridColor = ChartColors.greenColor()
        temperatureMonthlyChart.add(series)
        xAXisTemperatureMonthly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisTemperatureMonthly.addSubview(label)
        }
        }
    }
    
    func setHumidityMonthly( _ series:[Double]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        HumidityMonthlyChart.lineWidth = 2.0

        HumidityMonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        HumidityMonthlyChart.xLabelsTextAlignment = .center
        HumidityMonthlyChart.yLabelsOnRightSide = false
        
        if serieData.count > 0
        {
            HumidityMonthlyChart.yLabels = [serieData.min()! ,serieData.min()! + 10, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 10, serieData.max()!]
        let step = xaxisData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            HumidityMonthlyChart.yLabels = serieData

            HumidityMonthlyChart.xLabels = stepDouble1
            HumidityMonthlyChart.minY = serieData.min()!
        }
        HumidityMonthlyChart.backgroundColor =  UIColor.black
        HumidityMonthlyChart.axesColor = .red
        HumidityMonthlyChart.gridColor = ChartColors.greenColor()
        HumidityMonthlyChart.add(series)
        xAxisHumidityMonthlyChart.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisHumidityMonthlyChart.addSubview(label)
        }
        }
    }
    func setCarbonMonoxideMonthlyGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        CarbonMonoxideMonthlyChart.lineWidth = 2.0
        CarbonMonoxideMonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        CarbonMonoxideMonthlyChart.xLabelsTextAlignment = .center
        CarbonMonoxideMonthlyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            CarbonMonoxideMonthlyChart.yLabels = [serieData.min()! ,serieData.min()! + 500, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 500, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            CarbonMonoxideMonthlyChart.yLabels = serieData

            CarbonMonoxideMonthlyChart.xLabels = stepDouble1
            CarbonMonoxideMonthlyChart.minY = serieData.min()!
        }
        CarbonMonoxideMonthlyChart.backgroundColor = UIColor.black
        CarbonMonoxideMonthlyChart.axesColor = .red
        CarbonMonoxideMonthlyChart.gridColor = ChartColors.greenColor()
        CarbonMonoxideMonthlyChart.add(series)
        xAxisViewCarbonMonoxideMOnthly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisViewCarbonMonoxideMOnthly.addSubview(label)
        }
        }
    }
    
    func setOzoneMOnthlyGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        OzoneMonthlyChart.lineWidth = 2.0
        OzoneMonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        OzoneMonthlyChart.xLabelsTextAlignment = .center
        OzoneMonthlyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            OzoneMonthlyChart.yLabels = [serieData.min()! ,serieData.min()! + 500, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 500, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            OzoneMonthlyChart.yLabels = serieData
            OzoneMonthlyChart.xLabels = stepDouble1
            OzoneMonthlyChart.minY = serieData.min()!
        }
        OzoneMonthlyChart.backgroundColor = UIColor.black
        OzoneMonthlyChart.axesColor = .red
        OzoneMonthlyChart.gridColor = ChartColors.greenColor()
        OzoneMonthlyChart.add(series)
        xAXisOzoneMonthly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisOzoneMonthly.addSubview(label)
        }
        }
    }
    func setPM1Monthly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        PM1MonthlyChart.lineWidth = 2.0
        PM1MonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        PM1MonthlyChart.xLabelsTextAlignment = .center
        PM1MonthlyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            PM1MonthlyChart.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            PM1MonthlyChart.yLabels = serieData

            PM1MonthlyChart.xLabels = stepDouble1
            PM1MonthlyChart.minY = serieData.min()
            PM1MonthlyChart.maxY = serieData.max()

        }
        PM1MonthlyChart.backgroundColor = UIColor.black
        PM1MonthlyChart.axesColor = .red
        PM1MonthlyChart.gridColor =  ChartColors.greenColor()
        PM1MonthlyChart.add(series)
        xAXisPM1MonthlyChart.backgroundColor = UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisPM1MonthlyChart.addSubview(label)
        }
        }
    }
    
    func SetPM2_5nMonthly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        PM2_5MonthlyChart.lineWidth = 2.0
        PM2_5MonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        PM2_5MonthlyChart.xLabelsTextAlignment = .center
        PM2_5MonthlyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            PM2_5MonthlyChart.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            PM2_5MonthlyChart.yLabels = serieData

            PM2_5MonthlyChart.xLabels = stepDouble1
            PM2_5MonthlyChart.minY = serieData.min()
            PM2_5MonthlyChart.maxY = serieData.max()

        }
        PM2_5MonthlyChart.backgroundColor = UIColor.black
        PM2_5MonthlyChart.axesColor = .red
        PM2_5MonthlyChart.gridColor = ChartColors.greenColor()
        PM2_5MonthlyChart.add(series)
        xAxisViewPM2_5Monthly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisViewPM2_5Monthly.addSubview(label)
        }
        }
    }
    
    func setPM10MonthlyGraph( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        PM10MonthlyChart.lineWidth = 2.0
        PM10MonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        PM10MonthlyChart.xLabelsTextAlignment = .center
        PM10MonthlyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            PM10MonthlyChart.yLabels = [serieData.min()! , ((serieData.max()! + serieData.min()!) / 2) , serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            PM10MonthlyChart.yLabels = serieData

            PM10MonthlyChart.xLabels = stepDouble1
            PM10MonthlyChart.minY = serieData.min()
            PM10MonthlyChart.maxY = serieData.max()

        }
        PM10MonthlyChart.backgroundColor = UIColor.black
        PM10MonthlyChart.axesColor = .red
        PM10MonthlyChart.gridColor = ChartColors.greenColor()
        PM10MonthlyChart.add(series)
        xAXisPM10MOnthly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisPM10MOnthly.addSubview(label)
        }
        }
    }
   
    func setVOCMonthly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        VOCMonthlyGraph.lineWidth = 2.0
        VOCMonthlyGraph.labelFont = UIFont.systemFont(ofSize: 12)
        VOCMonthlyGraph.xLabelsTextAlignment = .center
        VOCMonthlyGraph.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            VOCMonthlyGraph.yLabels = [serieData.min()! ,serieData.min()! + 0.2, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 0.2, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            VOCMonthlyGraph.yLabels = serieData

            VOCMonthlyGraph.xLabels = stepDouble1
            VOCMonthlyGraph.minY = serieData.min()!
        }
        VOCMonthlyGraph.backgroundColor =  UIColor.black
        VOCMonthlyGraph.axesColor = .red
        VOCMonthlyGraph.gridColor = ChartColors.greenColor()
        VOCMonthlyGraph.add(series)
        xAXisVOCMOnthly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAXisVOCMOnthly.addSubview(label)
        }
        }
    }
    func setFormaldihydeMonthly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        FormaldihydeMonthlyChart.lineWidth = 2.0
        FormaldihydeMonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        FormaldihydeMonthlyChart.xLabelsTextAlignment = .center
        FormaldihydeMonthlyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            FormaldihydeMonthlyChart.yLabels = [serieData.min()! ,serieData.min()! + 3, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 3, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            FormaldihydeMonthlyChart.yLabels = serieData

            FormaldihydeMonthlyChart.xLabels = stepDouble1
            FormaldihydeMonthlyChart.minY = serieData.min()!
        }
        FormaldihydeMonthlyChart.backgroundColor =  UIColor.black
        FormaldihydeMonthlyChart.axesColor = .red
        FormaldihydeMonthlyChart.gridColor = ChartColors.greenColor()
        FormaldihydeMonthlyChart.add(series)
        xAxisDormaldihyde.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisDormaldihyde.addSubview(label)
        }
        }
    }
    func SetCarbonDioxideMonthly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        CarbonDiooxideMonthlyChart.lineWidth = 2.0
        CarbonDiooxideMonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        CarbonDiooxideMonthlyChart.xLabelsTextAlignment = .center
        CarbonDiooxideMonthlyChart.yLabelsOnRightSide = false
        if serieData.count > 0
        {
            CarbonDiooxideMonthlyChart.yLabels = [serieData.min()! ,serieData.min()! + 100, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 100, serieData.max()!]
        let step = serieData.count / 5
        var stepDouble1 = [Double]()
        for j in 0...4{
            stepDouble1.append(Double(j * step))
        }
//            CarbonDiooxideMonthlyChart.yLabels = serieData

            CarbonDiooxideMonthlyChart.xLabels = stepDouble1
            CarbonDiooxideMonthlyChart.minY = serieData.min()!
        }
        CarbonDiooxideMonthlyChart.backgroundColor = UIColor.black
        CarbonDiooxideMonthlyChart.axesColor = .red
        CarbonDiooxideMonthlyChart.gridColor = ChartColors.greenColor()
        CarbonDiooxideMonthlyChart.add(series)
        xAxisCarbonDioxideMonthly.backgroundColor =  UIColor.black
        if stepDouble.count > 0
        {
        for k in 0...4{
            var xFrame = Double()
            if k == 0
            {
                xFrame = 5.0
            }
            else
            {
                xFrame = (stepDouble[k] * 2.4) - 10
            }
            let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
            label.textColor = .white
            if timeString.count > k{
                label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
            }
            label.font = UIFont.systemFont(ofSize: 6.0)
            label.textColor = .white
            label.textAlignment = .left
            xAxisCarbonDioxideMonthly.addSubview(label)
        }
        }
    }
    func setLuxMonthly( _ series:[Double] , timeString :[String]){
        let serieData = series
        let series = ChartSeries(serieData)
        series.area = true
        series.color =  ChartColors.greenColor()
        LuxMonthlyChart.lineWidth = 2.0
        LuxMonthlyChart.labelFont = UIFont.systemFont(ofSize: 12)
        LuxMonthlyChart.xLabelsTextAlignment = .center
        LuxMonthlyChart.yLabelsOnRightSide = false
        
        if serieData.count > 0
        {
            
            LuxMonthlyChart.yLabels = [serieData.min()! ,serieData.min()! + 0.2, ((serieData.max()! + serieData.min()!) / 2) ,serieData.max()! - 0.2, serieData.max()!]
            let step = serieData.count / 5
            var stepDouble1 = [Double]()
            for j in 0...4{
                stepDouble1.append(Double(j * step))
            }
//            LuxMonthlyChart.yLabels = serieData
            LuxMonthlyChart.xLabels = stepDouble1
            LuxMonthlyChart.minY = serieData.min()!
        }
        
       
        LuxMonthlyChart.backgroundColor =  UIColor.black
        LuxMonthlyChart.axesColor = .red
        LuxMonthlyChart.gridColor = ChartColors.greenColor()
        LuxMonthlyChart.add(series)
        xAxisLuxMonthly.backgroundColor =  UIColor.black
        
        
        
        if stepDouble.count > 0
        {
            
            for k in 0...4{
                var xFrame = Double()
                if k == 0
                {
                    xFrame = 5.0
                }
                else
                {
                    xFrame = (stepDouble[k] * 2.4) - 10
                }
                let label = UILabel(frame: CGRect(x: xFrame, y: 5, width: 60, height:20))
                label.textColor = .white
                if timeString.count > k{
                    label.text = "\((timeString[k]))".components(separatedBy: ".")[0]
                }
                label.font = UIFont.systemFont(ofSize: 6.0)
                label.textColor = .white
                label.textAlignment = .left
                xAxisLuxMonthly.addSubview(label)
            }
        }
       
 
    }
   
    
    func countryName(from countryCode: String) -> String {
        if let name = (Locale.current as NSLocale).displayName(forKey: .countryCode, value: countryCode) {
            // Country name was found
            return name
        } else {
            // Country name cannot be found
            return countryCode
        }
    }
    
    func GetAirQualityDetails()
    {
       
        
        var loginURL = String()

        print("loginURL",loginURL)
 
        if self.sCurrentCountryName == "India" || self.sCurrentCountryName == "india"
        {
            
            loginURL = "https://api.waqi.info/feed/india/?token=7773083a34f99b3ee09ea47cf596aad504206608"
        }
        else
        {
            loginURL = "https://api.waqi.info/feed/united arab emirates/?token=7773083a34f99b3ee09ea47cf596aad504206608"

        }
        
        
        
        
        let urlString = loginURL.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)

        
        AF.request(urlString!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (data) in
            print("Response:***:",data.description)
            
            switch (data.result) {
            case .failure(let error) :
               
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
                    self.aQIResponseModel = AQIResponseModel(response)

                    self.aQIData = self.aQIResponseModel?.data
                    
//                    self.lblLocation1.text = "Dubai"
                    
                    self.lblLocation1Data.text = String((self.aQIData?.aqi)!)
               
                    self.view.activityStopAnimating()
                    
                    
                }
                catch let err {
                    print("Error::",err.localizedDescription)
                }
            }
        }
    }
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    // Week Graph Ploting API
    func GetLuxChartWeekValueAPI()
    {
     
        ApiHandler.shared.postPlotData(userdetails: PlotdataReq(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 4
                        {
                        
//                        print(self.convertDateFormat(inputDate: item.time!))
                        
                        self.sLuxDates.append(self.convertDate(item.time!))

                        self.sluxMeasreValue.append(Double(item.measureValue!)!)
                        print(item.measureValue ?? "")
                        print(item.time)
                        }
                    }
                    if self.sluxMeasreValue.count > 0
                    {
                       // self.SetLuxChart()
                        
                        var serieData: [Double] = []
                        var k = 0
                        var timestring1 = [String]()
                        for dt in self.data{
                            k = k + 1
                            serieData.append(Double(dt.measureValue!)!)
                            let dx = self.convertDate(dt.time!)
                            //self.xaxisData.append(Double(k))
                            timestring1.append(dx)
                        }
                        self.setLux(serieData, timeString: timestring1)
                        
                        

                    }
                   }
                   
               }))
    }
    
    
    
    
    
}

extension String {
    func fromUTCToLocalDateTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        var formattedString = self.replacingOccurrences(of: "Z", with: "")
        if let lowerBound = formattedString.range(of: ".")?.lowerBound {
            formattedString = "\(formattedString[..<lowerBound])"
            dateFormatter.dateFormat = "dd/MM HH:mm a"
            dateFormatter.timeZone = TimeZone.current
        }

        guard let date = dateFormatter.date(from: formattedString) else {
            return self
        }

        
        return dateFormatter.string(from: date)
    }
}
