//
//  ChatTableViewController.swift
//  chatroom
//
//  Created by Yang Nina on 2021/5/12.
//

import UIKit
import AVFoundation

let synthesizer = AVSpeechSynthesizer()
class ChatTableViewController: UITableViewController {
    struct PropertyKeys {
        static let JasmineCell = "JasmineCell"
        static let AladdinCell = "AladdinCell"
    }
    
    let lyrices = [
        Lyric(name: "Aladdin", text: "I can show you the world Shining, shimmering, splendid"),
        Lyric(name: "Aladdin", text: "Tell me, princess, now when did You last let your heart decide? I can open your eyes"),
        Lyric(name: "Aladdin", text: "Take you wonder by wonder Over, sideways and under On a magic carpet ride"),
        Lyric(name: "Aladdin", text: "A whole new world A new fantastic point of view No one to tell us No Or where to go Or say we're only dreaming"),
        Lyric(name: "Jasmine", text: "A whole new world A dazzling place I never knew But when I'm way up here"),
        Lyric(name: "Jasmine", text: "It's crystal clear That now I'm in a whole new world with you"),
        Lyric(name: "Aladdin", text: "Now I'm in a whole new world with you"),
        Lyric(name: "Jasmine", text: "Unbelievable sights Indescribable feeling Soaring, tumbling, freewheeling Through an endless diamond sky"),
        Lyric(name: "Jasmine", text: "A whole new world"),
        Lyric(name: "Aladdin", text: "don't you dare close your eyes"),
        Lyric(name: "Jasmine", text: "A hundred thousand things to see"),
        Lyric(name: "Aladdin", text: "hold your breath, it gets better"),
        Lyric(name: "Jasmine", text: "I'm like a shooting star, I've come so far I can't go back to where I used to be"),
    ]
    //遵從Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let song = lyrices[indexPath.row]
        //知道是選到第幾個Row
        let utterance = AVSpeechUtterance(string: song.text)
        //設定聲音
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        //講話
        synthesizer.speak(utterance)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let AladdinXib = UINib(nibName: "AladdinTableViewCell", bundle: nil)
        tableView.register(AladdinXib, forCellReuseIdentifier: PropertyKeys.AladdinCell)
        let JasmineXib = UINib(nibName: "JasmineTableViewCell", bundle: nil)
        tableView.register(JasmineXib, forCellReuseIdentifier: PropertyKeys.JasmineCell)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lyrices.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let song = lyrices[indexPath.row]
        if song.name == "Aladdin"{
            guard let mancell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.AladdinCell, for: indexPath) as? AladdinTableViewCell else {return UITableViewCell()}
            mancell.AladdinText.text = song.text
            mancell.AladdinText.layer.cornerRadius = 10
            mancell.AladdinText.isEditable = false
            mancell.AladdinImg.layer.cornerRadius = mancell.AladdinImg.bounds.width/2
            return mancell
        }
        else{
            guard let womanCell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.JasmineCell, for: indexPath) as? JasmineTableViewCell else {return UITableViewCell()}
            womanCell.JasmineText.text = song.text
            womanCell.JasmineText.layer.cornerRadius = 10
            womanCell.JasmineText.isEditable = false
            womanCell.JasmineImg.layer.cornerRadius = womanCell.JasmineImg.bounds.width/2
            return womanCell
        }
        
    }

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
