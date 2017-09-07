//
//  DetailViewController.swift
//  sampleTeaList
//
//  Created by erica chloe on 2017/09/07.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var scTeaList:[String]!
    var scSelectedIndex:Int!
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myTextView: UITextView!
    
    //前の画面から送られてきた行番号
    //sc は second の意味
   // var scSelectedIndex = -1

    override func viewDidLoad() {
        super.viewDidLoad()
      // print ("\(scSelectedIndex)行目が押されて移動してきました")
        myLabel.text = scTeaList[scSelectedIndex]
    
    
    switch scSelectedIndex{
        case 0:
    myTextView.text = "紅茶の中でも特に香りを重視される紅茶である。香りを楽しむためストレートティーで飲まれることが多い。ダージリンが強い香りを持つのは、寒暖の差の激しい標高の高い山地で生産されているためである。セカンドフラッシュではマスカテルフレーバー（マスカットフレーバー）と呼ばれる特徴的な香りの顕著なものが上質とされる。"
    myImageView.image = UIImage(named:"ダージリン.jpeg")
        case 1:
    myTextView.text = "アールグレイ（英: Earl Grey）とは、ベルガモットで柑橘系の香りをつけた紅茶で、フレーバーティーの一種。原料は中国茶のキーマン茶（祁門茶）が使われることが多いが、茶葉のブレンドは特に規定がないため、セイロン茶や、中国茶とセイロン茶のブレンド、稀にダージリンなども用いられる。"
    myImageView.image = UIImage(named:"アールグレイ.jpg")
        case 2:
    myTextView.text = "アッサム平原は世界有数の降水量を持ち、世界最大の紅茶産地である。アッサムの紅茶は水色が濃い茶褐色でこくが強いため、ミルクティーとして飲まれることが多い。チャイ用として細かく丸まったCTC製法（Crush Tear Curl－－つぶして、ひきさいて、丸める）で製茶されたものが多く出回っている。"
    myImageView.image = UIImage(named:"アッサム.jpg")
        case 3:
    myTextView.text = "オレンジ・ペコー（英語: Orange pekoe若しくはOrange pecco、[pɛk.oʊ]若しくは[piː.koʊ]）は西洋の茶、特に紅茶の取引において使用される等級（オレンジ・ペコー等級）。OPと略される。中国語起源とする説もあるが、一般的にこの等級は、非中国語圏のスリランカやインドなど中国以外の産地の茶にも用いられる。"
    myImageView.image = UIImage(named:"オレンジペコ.jpeg")
        
        default : break
    }
        
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
