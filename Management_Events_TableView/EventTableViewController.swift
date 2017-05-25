//
//  EventTableViewController.swift
//  Management_Events_TableView
//
//  Created by Cntt12 on 5/20/17.
//  Copyright © 2017 cntt12. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
    
    lazy var listEvent: [ListEvent] = {
        return ListEvent.listEvent()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.editButtonItem

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return listEvent.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let list = listEvent[section]
        return list.suKienTrongNgay.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellEvent", for: indexPath)

        let list = listEvent[indexPath.section]
        let sukien = list.suKienTrongNgay[indexPath.row]
        cell.textLabel?.text = sukien.tenSuKien
        cell.detailTextLabel?.text = sukien.noiDung
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let list = listEvent[section]
        return list.ngay
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let list = listEvent[sourceIndexPath.section];
        let sukien = list.suKienTrongNgay[sourceIndexPath.row];
        list.suKienTrongNgay.remove(at: sourceIndexPath.row)
        let desList = listEvent[destinationIndexPath.section];
        desList.suKienTrongNgay.insert(sukien, at: destinationIndexPath.row);
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let list = listEvent[indexPath.section]
            list.suKienTrongNgay.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "Chi Tiet Su Kien") {
            let chiTiet = segue.destination as! DetailViewController
            if let indexPath = self.tableView.indexPathForSelectedRow{
                chiTiet.sukien = suKienDaChon(indexPath: indexPath as NSIndexPath)
                chiTiet.ngay = ngayChuaSuKien(indexPath: indexPath as NSIndexPath)
            }
        }
    }
    
    func suKienDaChon(indexPath: NSIndexPath) -> Event{
        let list = listEvent[indexPath.section]
        return list.suKienTrongNgay[indexPath.row]
    }
    
    func ngayChuaSuKien(indexPath: NSIndexPath) -> String{
        let list = listEvent[indexPath.section]
        return list.ngay
    }

}
