//
//  LMST_EmptyView.swift
//  Komorebi
//
//  Created by 田宴宁 on 2022/6/7.
//

import UIKit

class LMST_EmptyView: UIView {
    
    var offset: CGFloat {
        get {
            centerY.constant
        }
        set {
            centerY.constant = newValue
        }
    }
    
    @IBOutlet weak var centerY: NSLayoutConstraint!

    @IBOutlet weak var contentImageView: UIImageView!
    
}

extension LMST_EmptyView {
    ///加载空页面
    static func instantiate(offset:CGFloat? = -100, imageName:String? = "nodata3") -> LMST_EmptyView {
        let emptyView = UINib.init(nibName: "LMST_EmptyView", bundle: .nil).instantiate(withOwner: nil, options: nil)[0] as! LMST_EmptyView
        emptyView.offset = offset!
        emptyView.contentImageView.image = UIImage(named: imageName!)
        return emptyView
    }
}
