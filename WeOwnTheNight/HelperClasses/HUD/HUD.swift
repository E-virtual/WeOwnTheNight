//
//  HUD.swift
//  SwiftSamples
//
//  Created by Nitin Kumar on 14/07/17.
//  Copyright © 2017 Nitin Kumar. All rights reserved.
//

import UIKit

class HUD: NSObject {

   // ADD HUD
    class func addHud()
    {
       
        let indicatorView = UIActivityIndicatorView(activityIndicatorStyle: .white)
        
        indicatorView.startAnimating()
        indicatorView.frame = CGRect(x: 0, y: 0, width: 10 , height:10)
        
        indicatorView.backgroundColor = UIColor.clear
        indicatorView.color = UIColor.black
        indicatorView.autoresizesSubviews = true
        indicatorView.autoresizingMask  = [.flexibleLeftMargin,.flexibleRightMargin,.flexibleTopMargin,.flexibleBottomMargin]

        // Centre View
        let viewCentre = UIView(frame:CGRect(x: 0, y: 0, width: 30 , height:30))
        viewCentre.backgroundColor = Alert.colorFromHexString(hexCode: "#FFFFFF")
        
        viewCentre.autoresizesSubviews = true
        viewCentre.autoresizingMask  = [.flexibleLeftMargin,.flexibleRightMargin,.flexibleTopMargin,.flexibleBottomMargin]
        
        viewCentre.roundCorners(corners: [.topLeft,.topRight ,.bottomLeft,.bottomRight], radius: 4.0)
        
        // Full Screen View
        let screenSize: CGRect = UIScreen.main.bounds
        let viewHUD = UIView(frame:screenSize)
        viewHUD.tag = -2000
        viewHUD.backgroundColor = UIColor(hex:"#37455F").withAlphaComponent(0.5)
        viewHUD.autoresizesSubviews = true
        viewHUD.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        
        indicatorView.center = viewCentre.center
        viewCentre.center = viewHUD.center
        
        viewHUD.addSubview(viewCentre)
        viewCentre.addSubview(indicatorView)
        
    
        let window = UIApplication.shared.keyWindow
        
        window?.addSubview(viewHUD)
        
      //  view.addSubview(viewHUD)
       
        
    }
    
    class func addHudWithBlur()
    {
        let indicatorView = UIActivityIndicatorView(activityIndicatorStyle: .white)
        
        indicatorView.startAnimating()
        indicatorView.frame = CGRect(x: 0, y: 0, width: 10 , height:10)
        
        indicatorView.backgroundColor = UIColor.clear
        indicatorView.color = UIColor.black
        indicatorView.autoresizesSubviews = true
        indicatorView.autoresizingMask  = [.flexibleLeftMargin,.flexibleRightMargin,.flexibleTopMargin,.flexibleBottomMargin]
        
        // Centre View
        let viewCentre = UIView(frame:CGRect(x: 0, y: 0, width: 30 , height:30))
        viewCentre.backgroundColor = Alert.colorFromHexString(hexCode: "#FFFFFF")
        
        viewCentre.autoresizesSubviews = true
        viewCentre.autoresizingMask  = [.flexibleLeftMargin,.flexibleRightMargin,.flexibleTopMargin,.flexibleBottomMargin]
        
        viewCentre.roundCorners(corners: [.topLeft,.topRight ,.bottomLeft,.bottomRight], radius: 4.0)
        
        
         // Full Screen View
        let screenSize: CGRect = UIScreen.main.bounds
        //var viewHUD = UIView(frame:screenSize)
       // viewHUD.tag = -2000
        
       let viewHUD = UIBlurEffect.init(style: .extraLight)
        let visualEffectView = UIVisualEffectView.init(effect: viewHUD)
        visualEffectView.frame = screenSize
        visualEffectView.isUserInteractionEnabled = true
        visualEffectView.autoresizingMask = [.flexibleWidth,.flexibleHeight ]
        visualEffectView.tag = -2000
        
        indicatorView.center = viewCentre.center
        viewCentre.center = visualEffectView.center
        viewCentre.addSubview(indicatorView)
        visualEffectView.addSubview(viewCentre)

        let window = UIApplication.shared.keyWindow
        
        window?.addSubview(visualEffectView)
        
        
    }
    
    // CLOSE HUD
    class func closeHUD()
    {
        let window = UIApplication.shared.keyWindow
        window?.viewWithTag(-2000)?.removeFromSuperview()
        
        
    }
    
    
    
    
}
