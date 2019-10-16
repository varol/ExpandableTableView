//
//  ViewController.swift
//  ExpandableTableView
//
//  Created by VAROL AKSOY on 16.10.2019.
//  Copyright © 2019 VAROL AKSOY. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let kHeaderSectionTag: Int = 6900;

    @IBOutlet weak var tableView: UITableView!
    
    var expandedSectionHeaderNumber: Int = -1
    var expandedSectionHeader: UITableViewHeaderFooterView!
    var sectionItems: Array<Any> = []
    var sectionNames: Array<Any> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sectionNames = [ "Soru 1", "Soru 2", "Soru 3", "Soru 4", "Soru 5", "Soru 6", "Soru 7" ];
        sectionItems = [ ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Facilisis magna etiam tempor orci. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Tincidunt praesent semper feugiat nibh. Sit amet aliquam id diam maecenas ultricies mi. Nulla facilisi morbi tempus iaculis urna id volutpat lacus. Est ullamcorper eget nulla facilisi etiam. Bibendum neque egestas congue quisque egestas diam. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet non. Cursus risus at ultrices mi tempus imperdiet. Amet aliquam id diam maecenas. Varius quam quisque id diam vel quam elementum pulvinar etiam. Aliquam ut porttitor leo a. Felis eget nunc lobortis mattis aliquam faucibus purus. Tincidunt augue interdum velit euismod in."],
                         ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Cursus risus at ultrices mi tempus imperdiet. Amet aliquam id diam maecenas. Varius quam quisque id diam vel quam elementum pulvinar etiam. Aliquam ut porttitor leo a. Felis eget nunc lobortis mattis aliquam faucibus purus. Tincidunt augue interdum velit euismod in."],
                         ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Facilisis magna etiam tempor orci. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Tincidunt praesent semper feugiat nibh. Sit amet aliquam id diam maecenas ultricies mi. "],
                         ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Facilisis magna etiam tempor orci. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Tincidunt praesent semper feugiat nibh. Sit amet aliquam id diam maecenas ultricies mi. Nulla facilisi morbi tempus iaculis urna id volutpat lacus. Est ullamcorper eget nulla facilisi etiam. Bibendum neque egestas congue quisque egestas diam. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet non. Cursus risus at ultrices mi tempus imperdiet. Amet aliquam id diam maecenas. Varius quam quisque id diam vel quam elementum pulvinar etiam. Aliquam ut porttitor leo a. Felis eget nunc lobortis mattis aliquam faucibus purus. Tincidunt augue interdum velit euismod in."],
                         ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Facilisis magna etiam tempor orci. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Tincidunt praesent semper feugiat nibh. Sit amet aliquam id diam maecenas ultricies mi. Nulla facilisi morbi tempus iaculis urna id volutpat lacus. Est ullamcorper eget nulla facilisi etiam. Bibendum neque egestas congue quisque egestas diam. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet non. Cursus risus at ultrices mi tempus imperdiet. Amet aliquam id diam maecenas. Varius quam quisque id diam vel quam elementum pulvinar etiam. Aliquam ut porttitor leo a. Felis eget nunc lobortis mattis aliquam faucibus purus. Tincidunt augue interdum velit euismod in."],
                         ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Facilisis magna etiam tempor orci. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Tincidunt praesent semper feugiat nibh. Sit amet aliquam id diam maecenas ultricies mi. Nulla facilisi morbi tempus iaculis urna id volutpat lacus. Est ullamcorper eget nulla facilisi etiam. Bibendum neque egestas congue quisque egestas diam. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet non. Cursus risus at ultrices mi tempus imperdiet. Amet aliquam id diam maecenas. Varius quam quisque id diam vel quam elementum pulvinar etiam. Aliquam ut porttitor leo a. Felis eget nunc lobortis mattis aliquam faucibus purus. Tincidunt augue interdum velit euismod in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Facilisis magna etiam tempor orci. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Tincidunt praesent semper feugiat nibh. Sit amet aliquam id diam maecenas ultricies mi. Nulla facilisi morbi tempus iaculis urna id volutpat lacus. Est ullamcorper eget nulla facilisi etiam. Bibendum neque egestas congue quisque egestas diam. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet non. Cursus risus at ultrices mi tempus imperdiet. Amet aliquam id diam maecenas. Varius quam quisque id diam vel quam elementum pulvinar etiam. Aliquam ut porttitor leo a. Felis eget nunc lobortis mattis aliquam faucibus purus. Tincidunt augue interdum velit euismod in.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Facilisis magna etiam tempor orci. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Tincidunt praesent semper feugiat nibh. Sit amet aliquam id diam maecenas ultricies mi. Nulla facilisi morbi tempus iaculis urna id volutpat lacus. Est ullamcorper eget nulla facilisi etiam. Bibendum neque egestas congue quisque egestas diam. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet non. Cursus risus at ultrices mi tempus imperdiet. Amet aliquam id diam maecenas. Varius quam quisque id diam vel quam elementum pulvinar etiam. Aliquam ut porttitor leo a. Felis eget nunc lobortis mattis aliquam faucibus purus. Tincidunt augue interdum velit euismod in."],
                         ["Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Facilisis magna etiam tempor orci. Lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Tincidunt praesent semper feugiat nibh. Sit amet aliquam id diam maecenas ultricies mi. Nulla facilisi morbi tempus iaculis urna id volutpat lacus. Est ullamcorper eget nulla facilisi etiam. Bibendum neque egestas congue quisque egestas diam. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet non. Cursus risus at ultrices mi tempus imperdiet. Amet aliquam id diam maecenas. Varius quam quisque id diam vel quam elementum pulvinar etiam. Aliquam ut porttitor leo a. Felis eget nunc lobortis mattis aliquam faucibus purus. Tincidunt augue interdum velit euismod in."]
                       ];
        self.tableView!.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.estimatedRowHeight = 100
        self.tableView.rowHeight = UITableView.automaticDimension

    }
    // MARK: - Tableview Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if sectionNames.count > 0 {
            tableView.backgroundView = nil
            return sectionNames.count
        } else {
            let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height))
            messageLabel.text = "Retrieving data.\nPlease wait."
            messageLabel.numberOfLines = 0;
            messageLabel.textAlignment = .center;
            messageLabel.font = UIFont(name: "HelveticaNeue", size: 20.0)!
            messageLabel.sizeToFit()
            self.tableView.backgroundView = messageLabel;
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (self.expandedSectionHeaderNumber == section) {
            let arrayOfItems = self.sectionItems[section] as! NSArray
            return arrayOfItems.count;
        } else {
            return 0;
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (self.sectionNames.count != 0) {
            return self.sectionNames[section] as? String
        }
        return ""
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0;
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat{
        return 0;
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        //recast your view as a UITableViewHeaderFooterView
        let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        header.contentView.backgroundColor = UIColor.black
        header.textLabel?.textColor = UIColor.white
        
        if let viewWithTag = self.view.viewWithTag(kHeaderSectionTag + section) {
            viewWithTag.removeFromSuperview()
        }
        let headerFrame = self.view.frame.size
        let theImageView = UIImageView(frame: CGRect(x: headerFrame.width - 32, y: 13, width: 18, height: 18));
        theImageView.image = UIImage(named: "Chevron-Dn-Wht")
        theImageView.tag = kHeaderSectionTag + section
        header.addSubview(theImageView)
        
        // make headers touchable
        header.tag = section
        let headerTapGesture = UITapGestureRecognizer()
        headerTapGesture.addTarget(self, action: #selector(ViewController.sectionHeaderWasTouched(_:)))
        header.addGestureRecognizer(headerTapGesture)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as UITableViewCell
        let section = self.sectionItems[indexPath.section] as! NSArray
        cell.textLabel?.textColor = UIColor.black
        cell.textLabel?.text = section[indexPath.row] as? String
        cell.textLabel?.sizeToFit()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Expand / Collapse Methods
    
    @objc func sectionHeaderWasTouched(_ sender: UITapGestureRecognizer) {
        let headerView = sender.view as! UITableViewHeaderFooterView
        let section    = headerView.tag
        let eImageView = headerView.viewWithTag(kHeaderSectionTag + section) as? UIImageView
        
        if (self.expandedSectionHeaderNumber == -1) {
            self.expandedSectionHeaderNumber = section
            tableViewExpandSection(section, imageView: eImageView!)
        } else {
            if (self.expandedSectionHeaderNumber == section) {
                tableViewCollapeSection(section, imageView: eImageView!)
            } else {
                let cImageView = self.view.viewWithTag(kHeaderSectionTag + self.expandedSectionHeaderNumber) as? UIImageView
                tableViewCollapeSection(self.expandedSectionHeaderNumber, imageView: cImageView!)
                tableViewExpandSection(section, imageView: eImageView!)
            }
        }
    }
    
    func tableViewCollapeSection(_ section: Int, imageView: UIImageView) {
        let sectionData = self.sectionItems[section] as! NSArray
        
        self.expandedSectionHeaderNumber = -1;
        if (sectionData.count == 0) {
            return;
        } else {
            UIView.animate(withDuration: 0.4, animations: {
                imageView.transform = CGAffineTransform(rotationAngle: (0.0 * CGFloat(Double.pi)) / 180.0)
            })
            var indexesPath = [IndexPath]()
            for i in 0 ..< sectionData.count {
                let index = IndexPath(row: i, section: section)
                indexesPath.append(index)
            }
            self.tableView!.beginUpdates()
            self.tableView!.deleteRows(at: indexesPath, with: UITableView.RowAnimation.fade)
            self.tableView!.endUpdates()
        }
    }
    
    func tableViewExpandSection(_ section: Int, imageView: UIImageView) {
        let sectionData = self.sectionItems[section] as! NSArray
        
        if (sectionData.count == 0) {
            self.expandedSectionHeaderNumber = -1;
            return;
        } else {
            UIView.animate(withDuration: 0.4, animations: {
                imageView.transform = CGAffineTransform(rotationAngle: (180.0 * CGFloat(Double.pi)) / 180.0)
            })
            var indexesPath = [IndexPath]()
            for i in 0 ..< sectionData.count {
                let index = IndexPath(row: i, section: section)
                indexesPath.append(index)
            }
            self.expandedSectionHeaderNumber = section
            self.tableView!.beginUpdates()
            self.tableView!.insertRows(at: indexesPath, with: UITableView.RowAnimation.fade)
            self.tableView!.endUpdates()
        }
    }

}


