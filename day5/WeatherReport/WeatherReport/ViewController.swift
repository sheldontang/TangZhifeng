//
//  ViewController.swift
//  WeatherReport
//
//  Created by 汤智丰 on 15/2/7.
//  Copyright (c) 2015年 汤智丰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var weather :AnyObject!
    var url = NSURL(string: "http://www.weather-forecast.com/locations/beijing/forecasts/latest")
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var cityName: UITextField!
    @IBAction func search(sender: UIButton) {
       
            if cityName.text != ""{
                var city = cityName.text.componentsSeparatedByString(" ")
                if city.count > 0 {
                    var output:String = ""
                    for var count = 0; count < city.count; count++ {
                        output += city[count]
                    }
                    url = NSURL(string: "http://www.weather-forecast.com/locations/\(output)/forecasts/latest")

                
                }else{
                    url = NSURL(string: "http://www.weather-forecast.com/locations/\(cityName.text)/forecasts/latest")
                }
                let request = NSURLRequest(URL: url!)
                NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler:{(response, data, error) -> Void in
                    let string = NSString(data:data, encoding: NSUTF8StringEncoding)!
                    
                    
                    var stringArray = string.componentsSeparatedByString("<span class=\"phrase\">")
                    
                    var stringArray1 = stringArray[1].componentsSeparatedByString("</span>")
                    var stringArray2 = stringArray1[0].componentsSeparatedByString("&deg;C")
                    var result = "\(stringArray2[0])℃\(stringArray2[1])℃\(stringArray2[2])"
                    self.result.text = result
                })
                
                
            }else{
                result.text = "Input a city name!"

            }
        
        
        
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
   
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

