//
//  TableViewController.swift
//  Compose
//
//  Created by itsector on 09/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var currentFolder: Compose = Folder(name: "Main")
    
    private var tableViewController: TableViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "TableViewController") as? TableViewController
        
        return vc!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addFile(_ sender: Any) {
        currentFolder.addComponent(c: File(name: "New file"))
        tableView.reloadData()
    }
    
    @IBAction func addFolder(_ sender: Any) {
        currentFolder.addComponent(c: Folder(name: "New folder"))
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentFolder.contentCount()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        guard let contents = currentFolder.showContent() as? [Compose] else { fatalError() }
        
        let item = contents[indexPath.row]
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item is Folder ? "Folder" : "File"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let contents = currentFolder.showContent() as? [Compose] else { fatalError() }
        
        let item = contents[indexPath.row]
        
        tableViewController.currentFolder = item
        
        item is Folder ? showFolder() : print(item.showContent())
    }
    
    func showFolder() {
        navigationController?.pushViewController(tableViewController, animated: true)
    }
}
