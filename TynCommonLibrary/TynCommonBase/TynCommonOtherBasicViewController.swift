//
//  LMST_OtherBasicViewController.swift
//  Komorebi
//
//  Created by HXKJ on 2022/6/6.
//

import UIKit

class LMST_OtherBasicViewController: UIViewController,LMST_DefaultStyleViewController {
    var bgImageView:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefauLMST_tyle()
//        topImageView(toView: view)
    }
    
    deinit {
        print("\(Self.self)")
    }

    func topImageView(toView:UIView) {
        bgImageView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: toView.bounds.size.width, height: 155 - navigationHandStatusH()))
        bgImageView.image = UIImage(named: "1")
        toView.addSubview(bgImageView)
    view.sendSubviewToBack(bgImageView)
    }
    
}
