//
//  HomePopUpViewController.swift
//  VinnerAirSense
//
//  Created by MAC on 15/02/21.
//

import UIKit
import Charts
import MBCircularProgressBar
import iOSDropDown
import Alamofire
import SwiftyJSON

class HomePopUpViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource, ChartViewDelegate,UITableViewDelegate,UITableViewDataSource{
   
    @IBOutlet var lblHomeTiming: UILabel!

    @IBOutlet var imgHeading: UIImageView!
    @IBOutlet var lblHeading: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    weak var axisFormatDelegate: IAxisValueFormatter?
    @IBOutlet weak var barchartView: BarChartView!
    @IBOutlet weak var progressBarCarbonMonoxide: UIProgressView!
    @IBOutlet weak var progressBarFormaldyhyde: UIProgressView!
    @IBOutlet weak var progressBarcarbonDioxide: UIProgressView!
    @IBOutlet weak var progressBarTemperature: UIProgressView!
    
    @IBOutlet weak var viewDropDownHide: UIView!
    @IBOutlet weak var txtSelectedDevicePopUp: DropDown!
    
    @IBOutlet weak var viewDrpDown: UIView!
    @IBOutlet weak var imgdropdown: UIImageView!
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
    var data = [PlotData]()
    var sLuxDates: [String] = []
    var sluxMeasreValue: [Double] = []
    let sharedData = SharedDefault()
    var sHumidity: String?
    var sPM10: String?
    var sPM1: String?
    var sVOC: String?
    var sOzone: String?
    var sDeviceId : String?
    var sRoomId : String?

    var deviceDataResponseModel: DeviceDataResponseModel?
    var sTimeDropDown : Bool?
    var sTemperarture: String?
    var sCOValue: String?

    var sPM2_5: String?
    var sCh2_o: String?
    var sLux: String?
    var sCO2: String?
    var sHumDates: [String] = []
    var sHumMeasreValue: [Double] = []
    var sensors:[sensorsList]?
    var color_ranges:[color_rangesList]?

    var sDeviceName: [String] = []
    var iDeviceId:[String] = []

    var sPM10Dates: [String] = []
    var sPM10MeasreValue: [Double] = []
    
    var sPM1Dates: [String] = []
    var sPM1MeasreValue: [Double] = []
    
    var sVOCDates: [String] = []
    var sVOCMeasreValue: [Double] = []
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
    
    var deviceListResponseModel: DeviceListResponseModel?
    var device_list: Device_list?
    var device_listItems: [device_listData]?

    var sDeviceListArray = [String]()
    var sDeviceIDArray = [String]()

    var itemsNames = ["1 Minute","2 Minutes", "5 Minutes", "10 Minutes","30 Minutes","60 Minutes","2 Hours","4 Hours","8 Hours"]
     var itemsImages = ["radio_button_gray", "radio_button_gray", "radio_button_gray","radio_button_gray", "radio_button_gray","radio_button_gray","radio_button_gray"]
    var itemsTiming = ["Device Name 1", "Device Name 2", "Device Name 3"]
    var itemsTimingImages = ["radio_button_gray", "radio_button_gray", "radio_button_gray","radio_button_gray", "radio_button_gray","radio_button_gray","radio_button_gray","radio_button_gray","radio_button_gray"]

    @IBOutlet var homepopUpTableView: UITableView!
    @IBOutlet weak var viewBarchartBase: UIView!
    @IBOutlet weak var viewProfile: UIView!
    @IBOutlet weak var viewHome: UIView!
    var dataEntries: [BarChartDataEntry] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        barchartView.delegate = self
        self.GetDeviceAPIDetails()
        self.homepopUpTableView.delegate = self
        self.homepopUpTableView.dataSource = self
        homepopUpTableView.allowsSelection = true


        self.GetDashBoardRoomDetails()
//        if UserDefaults.standard.value(forKey: "Timer") as! String == "60"
//        {
//
//            self.lblHomeTiming.text = ""
//            txtSelectedDevicePopUp.text = ""
//
//        }
//       else if  UserDefaults.standard.value(forKey: "Timer") as! String == "600"
//        {
//        self.lblHomeTiming.text = "10 Minutes"
//        txtSelectedDevicePopUp.text = "10 Minutes"
//
//
//        }
//        else if UserDefaults.standard.value(forKey: "Timer") as! String == "1200"
//        {
//            self.lblHomeTiming.text = "20 Minutes"
//            txtSelectedDevicePopUp.text = "20 Minutes"
//
//
//        }
//        else if UserDefaults.standard.value(forKey: "Timer") as! String == "2400"
//        {
//            self.lblHomeTiming.text = "40 Minutes"
//            txtSelectedDevicePopUp.text = "40 Minutes"
//
//        }
//
//        else if UserDefaults.standard.value(forKey: "Timer") as! String == "3600"
//        {
//            self.lblHomeTiming.text = "1 Hour"
//            txtSelectedDevicePopUp.text = "1 Hour"
//
//
//        }
        
        self.homepopUpTableView.rowHeight = 45.0

        if sTimeDropDown!
        {
            self.lblHeading.text = "Choose Time Intervels"
            self.imgHeading.image = UIImage(named: "tim")
//            txtSelectedDevicePopUp.optionArray = self.itemsNames
//            imgdropdown.image = UIImage(named:"radio_button_Green")!
//            txtSelectedDevicePopUp.textAlignment = .left
//
//            txtSelectedDevicePopUp.optionImageArray = self.itemsTimingImages
//
            self.homepopUpTableView.reloadData()

            
            
            
        }
        else
        {
            
            self.GetDeviceListDetail()
            
            self.lblHeading.text = "Select your device"
            self.imgHeading.image = UIImage(named: "Image-1")
//            txtSelectedDevicePopUp.text = self.sharedData.getDefoultDeviceName()
//            imgdropdown.image = UIImage(named:"radio_button_Green")!
//            txtSelectedDevicePopUp.textAlignment = .left
//            txtSelectedDevicePopUp.optionImageArray = self.itemsImages
            
        }

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
        if UserDefaults.standard.value(forKey: "ScannedDeviceId") as! String != "nil"
        {
            self.GetDeviceAPIDetails()
            self.GetLuxChartValueAPI()
            self.GetHumidityChartValueAPI()
            self.GetPM1ChartValueAPI()
            self.GetPM10ChartValueAPI()
            self.Getvoc1ChartValueAPI()
        }
        
        
        
//         months = [ "01", "10", "11","06", "09", "12", "15", "Now","21","00","03","06", "09", "12", "15", "Now","21","00","03"]
//        unitsSold = [60.0, 70.0, 75.0, 90.0, 85.0,80.0,90.0,120.0,140.0,120.0,90.0,80.0,85.0,75.0,75.0,55.0,60.0,50.0,60.0]
//        unitsBought = [60.0, 70.0, 75.0, 90.0, 85.0,80.0,90.0,120.0,140.0,120.0,90.0,80.0,85.0,75.0,75.0,55.0,60.0,50.0,60.0]
        
//        stackView.dropStackShadow()
//        stackView.customize()
        viewHome.roundCorners([.bottomLeft, .topLeft], radius: 10)
        viewProfile.roundCorners([.bottomRight, .topRight], radius: 10)

        progressBarTemperature.progress = 0.4
        months = ["06", "09", "12", "15", "Now", "21", "00", "03", "01", "02", "00", "03"]
        unitsSold = [60.0, 70.0, 90.0, 85.0, 120.0, 140.0, 90.0, 85.0, 75.0, 60.0, 55.0, 65.0]
        
//        viewDrpDown.layer.borderWidth = 1.0
//        viewDrpDown.layer.borderColor = UIColor.lightGray.cgColor
//        viewDrpDown.dropShadow()
        barchartView.delegate = self
        barchartView.noDataText = "You need to provide data for the chart."
        
//        barchartView.leftAxis.drawAxisLineEnabled = false
//        barchartView.rightAxis.drawAxisLineEnabled = false
//        barchartView.leftAxis.drawGridLinesEnabled = false
//        barchartView.rightAxis.drawGridLinesEnabled = false
//        barchartView.leftAxis.gridColor = NSUIColor.clear
        barchartView.xAxis.drawGridLinesEnabled = false
//        barchartView.xAxis.axisLineColor = UIColor.clear
        barchartView.xAxis.gridColor = NSUIColor.clear
        barchartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        barchartView.translatesAutoresizingMaskIntoConstraints = false

//        barchartView.chartDescription?.text = "sales vs bought "
        //legend
                   let legend = barchartView.legend
                   legend.enabled = true
                   legend.horizontalAlignment = .right
                   legend.verticalAlignment = .top
                   legend.orientation = .vertical
                   legend.drawInside = false
        legend.yOffset = 2.0;
        legend.xOffset = 2.0;
                   legend.yEntrySpace = 0.0;


                   let xaxis = barchartView.xAxis
                   xaxis.valueFormatter = axisFormatDelegate
                   xaxis.drawGridLinesEnabled = true
                   xaxis.labelPosition = .bottom
                   xaxis.centerAxisLabelsEnabled = true
//        xaxis.valueFormatter = IndexAxisValueFormatter(values:self.months) as! IAxisValueFormatter
                   xaxis.granularity = 1

        barchartView.xAxis.axisMinimum = -1;
        barchartView.xAxis.axisMaximum = Double(self.months.count) - 0.5;
                   let leftAxisFormatter = NumberFormatter()
                   leftAxisFormatter.maximumFractionDigits = 1

                   let yaxis = barchartView.leftAxis
        yaxis.spaceTop = 0.01
        yaxis.axisMinimum = 5
                   yaxis.drawGridLinesEnabled = false

        barchartView.rightAxis.enabled = false
                  //axisFormatDelegate = self

                   setChart()
        viewBase.dropShadow()
//        viewBase3.dropShadow()
//        viewBase2.dropShadow()
        
        // Do any additional setup after loading the view.\\\
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        self.viewDropDownHide.addGestureRecognizer(gesture)
        
//        txtSelectedDevicePopUp.didSelect{(selectedText , index ,id) in
//            //self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
//            print("selectedText ----- ",selectedText)
//            self.txtSelectedDevicePopUp.text = selectedText
//
//
//            if self.sTimeDropDown!
//            {
//                if selectedText == "2 Minutes"
//                {
//                    self.sharedData.setGraphGetTimingData(token: "2")
//                }
//               else  if selectedText == "5 Minutes"
//                {
//                self.sharedData.setGraphGetTimingData(token: "5")
//
//                }
//                else if selectedText == "10 Minutes"
//                {
//                    self.sharedData.setGraphGetTimingData(token: "10")
//
//                }
//                else if selectedText == "30 Minutes"
//                {
//                    self.sharedData.setGraphGetTimingData(token: "30")
//
//                }
//                else if selectedText == "60 Minutes"
//                {
//                    self.sharedData.setGraphGetTimingData(token: "60")
//
//                }
//                else if selectedText == "8 Hours"
//                {
//                    self.sharedData.setGraphGetTimingData(token: "480")
//
//                }
//                else if selectedText == "2 Hours"
//                {
//                    self.sharedData.setGraphGetTimingData(token: "120")
//
//                }
//                self.sharedData.setGraphStatus(token: "1")
//            }
//            else
//            {
//                self.sharedData.setDefoultDeviceID(token: self.sDeviceIDArray[index])
//                self.sharedData.setDefoultDeviceName(token: selectedText)
//            }
//
//        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if sTimeDropDown!
        {
            
            return self.itemsNames.count

        }
        else
        {
            
            return self.sDeviceListArray.count

        }
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45.0//Choose your custom row height
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if tableView == homepopUpTableView {
            let countryCell = self.homepopUpTableView.dequeueReusableCell(withIdentifier: "HomePopUpTableViewCell", for: indexPath) as! HomePopUpTableViewCell
            countryCell.viewDropDown.layer.borderColor = UIColor.lightGray.cgColor
            countryCell.viewDropDown.layer.borderWidth = 1.5
            countryCell.txtDropDown.textColor = UIColor.black

            if self.sTimeDropDown!
            {
                countryCell.txtDropDown.text = self.itemsNames[indexPath.row]
                countryCell.btnSelection.tag = indexPath.row
            }
            else
            {
                countryCell.txtDropDown.text =  self.sDeviceListArray[indexPath.row]
                countryCell.btnSelection.tag = indexPath.row

            }
            cell = countryCell
            
          
        }
        
        return cell
    }
    
    
    @IBAction func ActionSelection(_ sender: UIButton)
    {
        
        
            let index = IndexPath(row: sender.tag, section: 0)
         let cell: HomePopUpTableViewCell = self.homepopUpTableView.cellForRow(at: index) as! HomePopUpTableViewCell
        cell.viewDropDown.layer.borderColor = hexStringToUIColor(hex: "509843").cgColor
        cell.viewDropDown.layer.borderWidth = 1.5
        cell.imgDropDown.image = UIImage(named: "radio_button_Green")
        
        if self.sTimeDropDown!
        {
            let selectedText = cell.txtDropDown.text
            if selectedText == "1 Minute"
            {
                self.sharedData.setGraphGetTimingData(token: "1")
            }
           else  if selectedText == "2 Minutes"
            {
                self.sharedData.setGraphGetTimingData(token: "2")
            }
           else  if selectedText == "5 Minutes"
            {
            self.sharedData.setGraphGetTimingData(token: "5")

            }
            else if selectedText == "10 Minutes"
            {
                self.sharedData.setGraphGetTimingData(token: "10")

            }
            else if selectedText == "30 Minutes"
            {
                self.sharedData.setGraphGetTimingData(token: "30")

            }
            else if selectedText == "60 Minutes"
            {
                self.sharedData.setGraphGetTimingData(token: "60")

            }
            else if selectedText == "8 Hours"
            {
                self.sharedData.setGraphGetTimingData(token: "480")

            }
            else if selectedText == "2 Hours"
            {
                self.sharedData.setGraphGetTimingData(token: "120")

            }
            self.sharedData.setGraphStatus(token: "1")
        }
        else
        {
            let selectedText = cell.txtDropDown.text
            
            self.sharedData.setDefoultDeviceID(token: self.sDeviceIDArray[sender.tag])
            self.sharedData.setDefoultDeviceName(token: selectedText!)
        }
        
    }
    
    
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("tableNotification ",indexPath.row)
        print("tableNotification section ",indexPath.section)
//        let countryCell = self.homepopUpTableView.dequeueReusableCell(withIdentifier: "HomePopUpTableViewCell", for: indexPath) as! HomePopUpTableViewCell
//
//        countryCell.viewDropDown.layer.borderColor = hexStringToUIColor(hex: "509843").cgColor
//        countryCell.viewDropDown.layer.borderWidth = 1.5
//        countryCell.imgDropDown.image = UIImage(named: "radio_button_Green")
//
//        if self.sTimeDropDown!
//        {
//            let selectedText = self.itemsNames[indexPath.row]
//
//            if selectedText == "2 Minutes"
//            {
//                self.sharedData.setGraphGetTimingData(token: "2")
//            }
//           else  if selectedText == "5 Minutes"
//            {
//            self.sharedData.setGraphGetTimingData(token: "5")
//
//            }
//            else if selectedText == "10 Minutes"
//            {
//                self.sharedData.setGraphGetTimingData(token: "10")
//
//            }
//            else if selectedText == "30 Minutes"
//            {
//                self.sharedData.setGraphGetTimingData(token: "30")
//
//            }
//            else if selectedText == "60 Minutes"
//            {
//                self.sharedData.setGraphGetTimingData(token: "60")
//
//            }
//            else if selectedText == "8 Hours"
//            {
//                self.sharedData.setGraphGetTimingData(token: "480")
//
//            }
//            else if selectedText == "2 Hours"
//            {
//                self.sharedData.setGraphGetTimingData(token: "120")
//
//            }
//            self.sharedData.setGraphStatus(token: "1")
//        }
//        else
//        {
//            let selectedText = self.sDeviceListArray[indexPath.row]
//
//
//            self.sharedData.setDefoultDeviceID(token: self.sDeviceIDArray[indexPath.row])
//            self.sharedData.setDefoultDeviceName(token: selectedText)
//        }
    }
    
    @IBAction func ActionSet(_ sender: Any)
    {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        next.sDeviceId = self.sDeviceId
        
        self.navigationController?.pushViewController(next, animated: false)
    }
    
    
    @objc func checkAction(sender : UITapGestureRecognizer) {
//        // Do what you want
//        let next = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//        self.navigationController?.pushViewController(next, animated: false)
    }
    
            
    func setChart() {
            barchartView.noDataText = "You need to provide data for the chart."
            var dataEntries: [BarChartDataEntry] = []
//            var dataEntries1: [BarChartDataEntry] = []

            for i in 0..<self.months.count {

                let dataEntry = BarChartDataEntry(x: Double(i) , y: self.unitsSold[i])
                dataEntries.append(dataEntry)

//                let dataEntry1 = BarChartDataEntry(x: Double(i) , y: self.self.unitsBought[i])
//                dataEntries1.append(dataEntry1)

                //stack barchart
                //let dataEntry = BarChartDataEntry(x: Double(i), yValues:  [self.unitsSold[i],self.unitsBought[i]], label: "groupChart")



            }

        let chartDataSet = BarChartDataSet(entries: dataEntries, label: "")
//        let chartDataSet1 = BarChartDataSet(entries: dataEntries1, label: "Unit Bought")

            let dataSets: [BarChartDataSet] = [chartDataSet]
//            chartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
            chartDataSet.colors = ChartColorTemplates.colorful()
            //let chartData = BarChartData(dataSet: chartDataSet)

            let chartData = BarChartData(dataSets: dataSets)


        let groupSpace = 0.1
        let barSpace = 0.01
        let barWidth = 0.2
            // (0.3 + 0.05) * 2 + 0.3 = 1.00 -> interval per "group"
//        let n = Double(chartData.dataSets.count)
//        let groupSpace = 0.0031 * n
//        let barSpace = 0.002 * n
//        let barWidth = (1 - (n * barSpace) - groupSpace) / n
            let groupCount = self.months.count
        let startYear = 0.5


            chartData.barWidth = barWidth;
            barchartView.xAxis.axisMinimum = Double(startYear)
            let gg = chartData.groupWidth(groupSpace: groupSpace, barSpace: barSpace)
            print("Groupspace: \(gg)")
//            barchartView.xAxis.axisMaximum = Double(startYear) + gg * Double(groupCount)
        barchartView.xAxis.axisMaximum = Double(self.months.count) - 0.5;

            chartData.groupBars(fromX: Double(startYear), groupSpace: groupSpace, barSpace: barSpace)
            //chartData.groupWidth(groupSpace: groupSpace, barSpace: barSpace)
            barchartView.notifyDataSetChanged()

            barchartView.data = chartData


//        var dataEntries: [BarChartDataEntry] = []
//
//        for i in 0..<self.months.count {
//            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
//            dataEntries.append(dataEntry)
//        }
//
//        let chartDataSet = BarChartDataSet(entries: dataEntries, label: "Units Sold")
//        let chartData = BarChartData(xVals: months, dataSet: chartDataSet)
//        barchartView.data = chartData



            //background color
        barchartView.backgroundColor = UIColor.clear

            //chart animation
        barchartView.animate(xAxisDuration: 1, yAxisDuration: 1, easingOption: .linear)


        }
    
    
    
    
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return months[Int(value)]

    }
    func setChart(dataPoints: [String], values: [Double]) {

        barchartView.noDataText = "You need to provide data for the chart."

                    // Prevent from setting an empty data set to the chart (crashes)
                    guard dataPoints.count > 0 else { return }

                    var dataEntries = [BarChartDataEntry]()

                    for i in 0..<dataPoints.count {
                        let entry = BarChartDataEntry(x: Double(i), y: values[i], data: months as AnyObject?)
                        dataEntries.append(entry)
                    }

                    let chartDataSet = BarChartDataSet(entries: dataEntries, label: "")
                    chartDataSet.drawValuesEnabled = false
                    chartDataSet.colors = [UIColor.red]
                    chartDataSet.colors = [UIColor.lightGray]
                    chartDataSet.highlightColor = UIColor.orange.withAlphaComponent(0.3)
                    chartDataSet.highlightAlpha = 1
                    let chartData = BarChartData(dataSet: chartDataSet)
        barchartView.data = chartData
                    let xAxisValue = barchartView.xAxis
                    xAxisValue.valueFormatter = axisFormatDelegate

                    //   chartDataSet.colors = ChartColorTemplates.colorful()    //multiple colors

                    //Animation bars
        barchartView.animate(xAxisDuration: 0.0, yAxisDuration: 1.0, easingOption: .easeInCubic)

                    // X axis configurations
        barchartView.xAxis.granularityEnabled = true
        barchartView.xAxis.granularity = 1
        barchartView.xAxis.drawAxisLineEnabled = true
        barchartView.xAxis.drawGridLinesEnabled = false
        barchartView.xAxis.labelFont = UIFont.systemFont(ofSize: 15.0)
        barchartView.xAxis.labelTextColor = UIColor.black
        barchartView.xAxis.labelPosition = .bottom

                    // Right axis configurations
        barchartView.rightAxis.drawAxisLineEnabled = false
        barchartView.rightAxis.drawGridLinesEnabled = false
        barchartView.rightAxis.drawLabelsEnabled = false

                    // Other configurations
        barchartView.highlightPerDragEnabled = false
        barchartView.chartDescription?.text = ""
        barchartView.legend.enabled = false
        barchartView.pinchZoomEnabled = false
        barchartView.doubleTapToZoomEnabled = false
        barchartView.scaleYEnabled = false

        barchartView.drawMarkers = true

                    let l = barchartView.legend
                    l.horizontalAlignment = .left
                    l.verticalAlignment = .bottom
                    l.orientation = .horizontal
                    l.drawInside = false
                    l.form = .circle
                    l.formSize = 9
                    l.font = UIFont(name: "HelveticaNeue-Light", size: 11)!
                    l.xEntrySpace = 4

//                    // On tapped bar marker before adding BalloonMarker.swift
//                    let marker =  BalloonMarker(color: UIColor.orange, font: UIFont.boldSystemFont(ofSize: 13), textColor: UIColor.white, insets: UIEdgeInsets(top: 7.0, left: 7.0, bottom: 15.0, right: 7.0))
//                    marker.chartView = barchartView
//        barchartView.marker = marker
                }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var countVar:Int = 0
        if collectionView == collectionViewHome
        {
            countVar = self.dashboardata.count
        }
        else if collectionView == collectionView2
        {
            countVar = 10
        }
        
        return countVar
    }
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if collectionView == collectionViewHome
        {

            let homeTypeCollectionViewCell1 = collectionViewHome.dequeueReusableCell(withReuseIdentifier: "HomePopUp1CollectionViewCell", for: indexPath as IndexPath) as! HomePopUp1CollectionViewCell
            homeTypeCollectionViewCell1.imgBase.sd_setImage(with: URL(string: (self.dashboardata[indexPath.row].room_image!)), placeholderImage: UIImage(named: "Transparent"))
            homeTypeCollectionViewCell1.lblHeading.setTitle(self.dashboardata[indexPath.row].room_name, for: .normal)
            homeTypeCollectionViewCell1.lblCount.text = String(self.dashboardata[indexPath.row].deviceListData!.count)
            homeTypeCollectionViewCell1.lblCount.layer.cornerRadius = 7.5
            homeTypeCollectionViewCell1.lblCount.layer.masksToBounds = true
            cell = homeTypeCollectionViewCell1

           
            }
else  if collectionView == collectionView2
{


    let homeTypeCollectionViewCell1 = collectionView2.dequeueReusableCell(withReuseIdentifier: "HomePopUp3CollectionViewCell", for: indexPath as IndexPath) as! HomePopUp3CollectionViewCell


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
                            
                        }

                    }
                     else if progress > iMaxVal!
                     {
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
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
        homeTypeCollectionViewCell1.lblBase.text = "Humidity"
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

                    }
                     else if progress > iMaxVal!
                     {
                        
                        
                        
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
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

                    }
                     else if progress > iMaxVal!
                     {
//
//                        self.lblProgressBar1Heading.text = "Carbon Monoxide"
//
//                        sPgs = String(progress)
//
//                        if sPgs.count == 2
//                        {
//                            dValue = Double(progress) / Double(100)
//
//                        }
//                        else if sPgs.count == 3
//                       {
//                            dValue = Double(progress) / Double(1000)
//
//                        }
//                        else if sPgs.count == 4
//                        {
//                            dValue = Double(progress) / Double(10000)
//
//                        }
//                        self.progressBarTemperature.progress =    Float(dValue)
//                        self.lblTemperature.text = String(progress)  + " ppm"
//
//                        self.progressBarTemperature.tintColor = self.hexStringToUIColor(hex: item2.color_code!)

                        
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
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

                    }
                    else if progress > iMaxVal!
                    {
                       homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                       homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
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

                    }
                     else if progress > iMaxVal!
                     {
                        
//                        sPgs = String(progress)
//
//                        if sPgs.count == 2
//                        {
//                            dValue = Double(progress) / Double(100)
//
//                        }
//                        else if sPgs.count == 3
//                       {
//                            dValue = Double(progress) / Double(1000)
//
//                        }
//                        else if sPgs.count == 4
//                        {
//                            dValue = Double(progress) / Double(10000)
//
//                        }
//                        self.lblProgressBar3Heading.text = "PM 1"
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)

                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
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

                    }
                      else if progress > iMaxVal!
                      {
                         homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                         homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                         homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                         homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
//                        self.lblProgressBar3Heading.text = "PM 2.5"
//                        sPgs = String(progress)
//
//                        if sPgs.count == 2
//                        {
//                            dValue = Double(progress) / Double(100)
//
//                        }
//                        else if sPgs.count == 3
//                       {
//                            dValue = Double(progress) / Double(1000)
//
//                        }
//                        else if sPgs.count == 4
//                        {
//                            dValue = Double(progress) / Double(10000)
//
//                        }
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
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

                    }
                     else if progress > iMaxVal!
                     {
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
                        
//                        self.lblProgressBar3Heading.text = "PM 10"
//                        sPgs = String(progress)
//
//                        if sPgs.count == 2
//                        {
//                            dValue = Double(progress) / Double(100)
//
//                        }
//                        else if sPgs.count == 3
//                       {
//                            dValue = Double(progress) / Double(1000)
//
//                        }
//                        else if sPgs.count == 4
//                        {
//                            dValue = Double(progress) / Double(10000)
//
//                        }
//                        self.progressBarFormaldyhyde.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarFormaldyhyde.progress =    Float(dValue)
//                        self.lblFormaldyhyde.text = String(progress)  + " µg/m3"
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
        homeTypeCollectionViewCell1.lblBase.text = "VOC"
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

                    }
                    else if progress > iMaxVal!
                    {
//                        self.lblProgressBar4Heading.text = "TVOC"
//                        sPgs = String(progress)
//
//                        if sPgs.count == 2
//                        {
//                            dValue = Double(progress) / Double(100)
//
//                        }
//                        else if sPgs.count == 3
//                       {
//                            dValue = Double(progress) / Double(1000)
//
//                        }
//                        else if sPgs.count == 4
//                        {
//                            dValue = Double(progress) / Double(10000)
//
//                        }
//                        self.progressBarCarbonMonoxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)
//
//                        self.progressBarCarbonMonoxide.progress =    Float(dValue)
//                        self.lblCO3.text = String(progress)  + " µg/m3"
//
                       homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                       homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
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
        homeTypeCollectionViewCell1.lblBase.text = "C2O"
        homeTypeCollectionViewCell1.lblDescrptn.text = self.ch2on?.measureValueString31
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

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark

                    }
                     else if progress > iMaxVal!
                     {
                        
//                        self.lblProgressBar2Heading.text = "Carbon Dioxide"
//                        sPgs = String(progress)
//
//                        if sPgs.count == 2
//                        {
//                            dValue = Double(progress) / Double(100)
//
//                        }
//                        else if sPgs.count == 3
//                       {
//                            dValue = Double(progress) / Double(1000)
//
//                        }
//                        else if sPgs.count == 4
//                        {
//                            dValue = Double(progress) / Double(10000)
//
//                        }
//                        self.progressBarcarbonDioxide.tintColor = UIColor.systemRed
//
//                        self.progressBarcarbonDioxide.progress =    Float(dValue)
//                        self.lblCO2.text = String(progress)  + " ppm"
//
                        
                        
                        homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                        homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                        homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
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

                    }
                    else if progress > iMaxVal!
                    {
                        
//                        self.lblProgressBar4Heading.text = "Lux"
//                        sPgs = String(progress)
//
//                        if sPgs.count == 2
//                        {
//                            dValue = Double(progress) / Double(100)
//
//                        }
//                        else if sPgs.count == 3
//                       {
//                            dValue = Double(progress) / Double(1000)
//
//                        }
//                        else if sPgs.count == 4
//                        {
//                            dValue = Double(progress) / Double(10000)
//
//                        }
//                        self.progressBarCarbonMonoxide.progress =    Float(dValue)
//                        self.lblCO3.text = String(progress)  + " lux"
//                        self.progressBarCarbonMonoxide.tintColor = self.hexStringToUIColor(hex: item2.color_code!)

                        
                        
                       homeTypeCollectionViewCell1.viewBackGround.backgroundColor =  self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressColor = self.hexStringToUIColor(hex: item2.color_code!)
                       homeTypeCollectionViewCell1.circularProgressView.progressStrokeColor = self.hexStringToUIColor(hex: item2.color_code!)

                       homeTypeCollectionViewCell1.lblDescrptn.text = item2.remark
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
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func GetDeviceAPIDetails()
    {
     
        
        self.view.activityStartAnimating()

        let loginURL = "http://54.212.67.110:3000/api/v1/measures/getMeasureOfaDevice"

        print("loginURL",loginURL)
        
        let parameters: Parameters = ["deviceId": "2103010003"]      //This will be your parameter
//        let parameters: Parameters = ["deviceId": self.sDeviceId]      //This will be your parameter

        
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
                    
//                    let iVOCValue = Double((self.voc1?.measureValue1)!)
//                    let ico2nValue = Double((self.co2n?.measureValue3)!)
//                    let ipm2_5nValue = Double((self.pm2_5n?.measureValue9)!)
//                    let ipm10nValue = Double((self.pm10n?.measureValue7)!)
                   
//                    
//                    let dF = Double((self.temp1?.measureValue2)!)
//                    
//                    
//                    if dF == nil
//                    {
//                        
//                    }
//                    let ss = String(format: "%.0f", dF! - 273.15)
                    
                    
//                    let i1 = Int((self.temp1?.measureValue2)!)!/100
//
//                    self.progressBarTemperature.progress = Float(i1)
//                    self.progressBarcarbonDioxide.progress = Float(Int((self.co2n?.measureValue3)!)!/100)
//
//                    self.progressBarFormaldyhyde.progress =    Float(Int((self.co2n?.measureValue3)!)!/100)
//                    self.progressBarCarbonMonoxide.progress =   Float(i1)

//
                    
                    
                    
//                    let yourFloatvalueFromString = CGFloat(truncating: NumberFormatter().number(from: (self.pm2_5n?.measureValue9!)!)!)
//
//                    self.circularProgressView.value =   yourFloatvalueFromString
//                    
                   
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
        let date = dateFormatter.date(from: date.components(separatedBy: ".")[0])
              dateFormatter.dateFormat = "dd/MM HH:mm"
              return  dateFormatter.string(from: date!)
    }


    func calculateCelsius(fahrenheit: Double) -> Double {
        var celsius: Double
        
        celsius = (fahrenheit - 32) * 5 / 9
        
        return celsius
    }
    
    func GetLuxChartValueAPI()
    {
     
        ApiHandler.shared.postPlotData(userdetails: PlotdataReq(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                  
                    for item in self.data
                    {
                        if self.sluxMeasreValue.count <= 5
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
//                        self.SetLuxChart()

                    }
                   }
                   
               }))
    }
    func GetHumidityChartValueAPI()
    {
     
        ApiHandler.shared.postPlotHumidityData(userdetails: PlotdataReqHumidity(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                    
                    for item in self.data
                    {
                        
                        if self.sHumMeasreValue.count <= 5
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
//                        self.setHumidityChart(dataEntryX: self.sHumDates, dataEntryY: self.sHumMeasreValue)

                    }
                   }
                   
               }))
    }
    func Getvoc1ChartValueAPI()
    {
     
        
        ApiHandler.shared.postPlotVOCData(userdetails: PlotdataReqVOC(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                    
                    for item in self.data
                    {
                        
                        if self.sVOCMeasreValue.count <= 5
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
//                        self.setVOCChart()

                    }
                   }
                   
               }))
    
    }
    
    
    
    func GetPM1ChartValueAPI()
    {
     
        
        ApiHandler.shared.postPlotPM1Data(userdetails: PlotdataReqpm1n(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                    
                    
                    for item in self.data
                    {
                        if self.sPM1MeasreValue.count <= 5
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
//                        self.setPM1Chart()

                    }
                   }
                   
               }))
    
    }
    
    func GetPM10ChartValueAPI()
    {
     
        
        ApiHandler.shared.postPlotPM10Data(userdetails: PlotdataReqpm10n(), completion: ({(sucess,obj,alert,resp) in
                   if sucess{
                       self.data = resp as! [PlotData]
                    
                    for item in self.data
                    {
                        
                        if self.sPM10MeasreValue.count <= 5
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
//                        self.setPM10Chart()

                    }
                    
                   }
                   
               }))
    
    }
    
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
    
    
    func GetDeviceListDetail()
    {
     
        self.view.activityStartAnimating()
        
        var postDict = Dictionary<String,String>()

        postDict = [
            "access_token":self.sharedData.getAccessToken(),
            "room_id": self.sRoomId!
            
        ]
        
        print("PostData: ",postDict)
        let loginURL = Constants.baseURL+Constants.deviceList

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
                    self.deviceListResponseModel = DeviceListResponseModel(response)
                    
                    let statusCode = Int((self.deviceListResponseModel?.httpcode)!)
                    if statusCode == 200{
                        print("registerResponseModel ----- ",self.deviceListResponseModel)
                        self.view.activityStopAnimating()

                        self.device_list = self.deviceListResponseModel?.device_list
                        
                        
                        self.device_listItems = self.device_list?.device_listItems
                        
                       
                        for item in self.device_listItems!
                        {
                            
                            self.sDeviceListArray.append(item.device_name!)

                            self.sDeviceIDArray.append((item.device_id!))
                        }
                        
//                        self.txtSelectedDevicePopUp.optionArray = self.sDeviceListArray

                        self.homepopUpTableView.reloadData()
                        
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
}
