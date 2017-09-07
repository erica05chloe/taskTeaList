//
//  ViewController.swift
//  sampleTeaList
//
//  Created by erica chloe on 2017/09/07.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    var index:Int!
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    var selectedIndex = -1  //選択された行番号
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //文字を表示するセルの取得(セルの再利用)
        //メモリの節約
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //表示したい文字の設定
        //セルの中のラベル名:textLabel  表示したい文字
        
        cell.textLabel?.text = teaList[indexPath.row]
        cell.textLabel?.textColor = UIColor.brown
        
        
        //文字を設定したセルを返す
        return cell
    }
    
    //セルがタップされた時、segueを使って画面移動
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("\(indexPath.row)行目がタップされました")
        
        //選択された行番号を保存
        selectedIndex = indexPath.row
        
        //セグエを指定して画面遷移
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    //セグエを使って画面を移動しようとしている時発動するメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //prepareの中では、移動元の画面、移動先の画面、どちらも操作が可能
        //移動先の画面に渡したい情報をセットできる
        //dv　今から移動する画面のオブジェクト(インスタンス)
        //segue.destination セグエを使って移動する先
        //as! ダウンキャスト変換するための記号
        //any型(なんでもいける型) からas!　を使って型をしっかり指定する
        let dv:DetailViewController = segue.destination as! DetailViewController
        
        //作成しておいたプロパティ(メンバ変数)に行番号を保存
        dv.scSelectedIndex = selectedIndex
        dv.scTeaList = teaList
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

