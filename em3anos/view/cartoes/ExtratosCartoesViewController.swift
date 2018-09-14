//
//  ExtratosCartoesViewController.swift
//  em3anos
//
//  Created by Victor Franca on 14/09/18.
//  Copyright © 2018 Victor Franca. All rights reserved.
//

import UIKit
import Charts

class ExtratosCartoesViewController: UIViewController {

    @IBOutlet weak var lineChartView: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        let entry1 = BarChartDataEntry(x: 3, y: Double(10))
        let dataSet = BarChartDataSet(values: [entry1], label: "Widgets Type")
        let data = BarChartData(dataSets: [dataSet])
        lineChartView.data = data
        lineChartView.chartDescription?.text = "Number of Widgets by Type"
        
        lineChartView.notifyDataSetChanged()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
