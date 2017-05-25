//
//  DetailViewController.swift
//  Management_Events_TableView
//
//  Created by Cntt12 on 5/20/17.
//  Copyright © 2017 cntt12. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var lblNgay: UILabel!
    @IBOutlet weak var lblTen: UILabel!
    @IBOutlet weak var lblNoiDung: UILabel!

    var sukien: Event?
    var ngay: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNgay.text = ngay
        lblTen.text = sukien?.tenSuKien
        lblNoiDung.text = sukien?.noiDung
        title = "Event Detail"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
