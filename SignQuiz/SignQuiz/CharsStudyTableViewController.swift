//
//  CharsStudyTableViewController.swift
//  WiSign
//
//  Created by Yuren Sun, Harry Zhao, Siyuan Zhang on 10/19/19.
//  Copyright © 2019 Yuren Sun, Harry Zhao, Siyuan Zhang
//

import UIKit

class CharsStudyTableViewController: UITableViewController {
    var characters : [Character] = Array("ABCDEFGHIGKLMNOPQRSTUVWXYZ")
    var chars = PictureBank(questionString: "ABCDEFGHIGKLMNOPQRSTUVWXYZ")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let edgePan = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(screenEdgeSwiped))
        edgePan.edges = .left
        
        view.addGestureRecognizer(edgePan)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @objc func screenEdgeSwiped(_ recognizer: UIScreenEdgePanGestureRecognizer){
        if recognizer.state == .recognized{
            recognizer.state = .ended
            performSegue(withIdentifier: "backToReview", sender: self)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows

        return characters.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chars", for: indexPath)
        cell.textLabel?.text = String(characters[indexPath.row])
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.textColor = UIColor(red: CGFloat(197.0/255), green:  CGFloat(5.0/255), blue:  CGFloat(12.0/255), alpha:  CGFloat(1))
        cell.textLabel?.font = UIFont(name: "Courier New", size: 30)
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            variables.goToStudyImage = chars.toImagesFile()[indexPath.row]

   
        
        performSegue(withIdentifier: "goToStudyAbroad", sender: self)
    }
    

    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
