//
//  ExtensionAppDelegateAppearance.swift
//  MoveNow
//
//  Created by 田宴宁 on 2022/5/17.
//

import UIKit
import IQKeyboardManagerSwift

extension AppDelegate {
    
    func LMST_Configuration() {
//        判断是否登录
        if UserDefaults.standard.object(forKey: "userAccount") != nil && UserDefaults.standard.object(forKey: "userPsw") != nil {
            LMST_LoginViewController.userModel = LMST_DBmanager.share.qureyExist(fromTable: .userTable, where: LMST_MineModel.CodingKeys.account == UserDefaults.standard.string(forKey: "userAccount")! && LMST_MineModel.CodingKeys.password == UserDefaults.standard.string(forKey: "userPsw")!, orderBy: nil)!
            print("已经登陆")
        }

        if UserDefaults.isFirstLaunch() {
            LMST_MineModel.createUser()
            LMST_PlazaModel.plazaData()
            LMST_ExerciseModel.exerciseData()
        }
        
        LMST_ConfigurationKeyboardManager()
        LMST_ConfigurationUIAppearance()
    }
    
    func LMST_ConfigurationKeyboardManager() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = false
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
    }
    
    func LMST_ConfigurationUIAppearance() {
        
        UIButton.appearance().isExclusiveTouch = true
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        ///顶部导航栏标题颜色大小
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(hex: "#333333"),
            .font: UIFont.systemFont(ofSize: 16, weight: .bold)
        ]
        
        appearance.setBackIndicatorImage(UIImage(named: "返回 (1)"), transitionMaskImage: UIImage(named: "返回 (1)"))
        
        appearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        ///顶部导航栏背景颜色
//        appearance.backgroundImage = UIImage(named: "矩形 2 拷贝")
//        appearance.backgroundColor = UIColor(hex: "#")
        
    }
    
}
