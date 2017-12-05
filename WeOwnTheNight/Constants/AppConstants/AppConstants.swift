//
//  AppConstants.swift
//  SwiftSamples
//
//  Created by Nitin Kumar on 13/06/17.
//  Copyright © 2017 Nitin Kumar. All rights reserved.
//

import Foundation
import UIKit


struct AppStore {
    
    static let appID                       = "313719"
}

//MARK - Constant
struct APP_CONST {
    
    static let build_name                       = "Wallopp"
    static let kOK                              = "OK"
    static let kCANCEL                          = "CANCEL"
    static let kCAMERA                          = "Camera"
    static let kGALARY                          = "Galary"
    static let kLOGOUT_CONFIRMATION             = "Are you sure you want to logout?"
    static let kLOGOUT                          = "LOGOUT"
    static let kREMOVE                          = "REMOVE"
    
    static let kLOGIN                           = "LOGIN"
    static let kNETWORK_ISSUE                   = "The Internet connection appears to be offline."
   static let kFREATURE_NOT_IMPLIMENT           = "This feature is not implemented yet."
   static let kLOGIN_CONFIRM                    = "You’ve successfully logged in!"
   static let kDEVICE_NOT_SUPPORT               = "Your Device is not compatible with this features."
    static let kMAKE_ADMIN                      = "MAKE ADMIN"
    static let kEXIT                            = "EXIT"
}

struct APP_VALIDATION {
    
     static let kMSG_EMPTY_FIELDS                       = "Fields can't be blank!"
     static let kMSG_VALID_MAIL                         = "Please enter a valid Email ID!"
     static let kMSG_NAME_LENGTH                        = "Name would be minimum 2 characters."
     static let kMSG_ADDRESS_LENGTH                     = "Address would be minimum 2 characters.";
    static let kMSG_PHONE_NUMBER                            = "Phone number would be 10 digits."
    
     static let kMSG_MAIL_MISSMATCH                     = "E-mail address and confirm E-mail address is missmatch."
    
     static let kMSG_PWD_LANGHT                         = "Password would be minimum 6 characters."
    
     static let kMSG_CONFIRM_PWD                        = "Password and confirm password is missmatch!"
    
     static let kMSG_COUNTRY_SELECT                        = "Please select a country first!"
    
     static let kMSG_STATE_SELECT                      = "Please select a State first!"
    
     static let kMSG_CITY_SELECT                        = "Please select a City first!"
    static let kMSG_SUBJECT_LENGTH                     = "Subject would be minimum 2 characters.";
    
    static let kMSG_TEACHER_NAME_LENGTH                     = "Teacher name would be minimum 2 characters.";
}

//MARK - StoryBoard identificatin constant
struct SB_ID {
    
    static let SBI_WELCOME_VC                      = "WelcomeViewController"
    
    static let SBI_LOGIN_VC                        = "LoginViewController"
    
    static let SBI_REGISTER_VC                     = "RegisterViewController"
    
    static let SBI_FORGOT_PWD_VC                   = "ForgotPasswordViewController"
    
    static let SBI_DASHBOARD_VC                    = "DashboardViewController"
    
    static let SBI_MENU_VC                         = "MenuViewController"
    
    static let SBI_HELP_VC                         = "HelpViewController"

    static let SBI_SETTINGS_VC                     = "SettingsViewController"
    
    static let SBI_CHANGE_PWD_VC                   = "ChangePwdViewController"
    
     static let SBI_EDIT_PROFILE_VC                = "EditProfileViewController"
    
     static let SBI_TERMCONDITIONS_VC              = "TermCondtionsViewController"
    
    static let SBI_ADD_SCHOOLS_VC                  = "AddASchoolViewController"
    
     static let SBI_ADD_CHANGE_CLS_VC              = "AddChnageClsViewController"
    
    static let SBI_POPOVER_VC                      = "PopOverViewController"
    
     static let SBI_POPOVER_ADD_CLS_VC             = "PopUpAddClsViewController"
    
      static let SBI_POPOVER_CLS_VC                = "ClassPopupViewController"
    
    
    static let SBI_STUDENT_LIST_VC                 = "StudentListViewController"
    
     static let SBI_STUDENT_DETAILS_VC             = "DetailsStudentViewController"
    
     static let SBI_GROUP_CHAT_VC                  = "GroupChatViewController"
    
    static let SBI_ADD_MEMBERS_VC                  = "AddMemberViewController"
    
    static let SBI_GROUP_INFO_VC                   = "ShowGroupInfoViewController"
    
    static let SBI_CREATE_GROUP                    = "CreateGroupViewController"
    
    static let SBI_CHAT_VC                         = "ChatViewController"
    
    static let SBI_CHAT_WITH_GRP_VC                = "ChatWithGroupViewController"
    
    static let SBI_GET_ALL_SCHOOL_VC               = "GetAllSchoolsViewController"
    
    static let SBI_ROOT_CHAT_VC                    = "RootChatViewController"
    
   static let SBI_PRIVATE_CHAT_VC                  = "PrivateChatListViewController"
    
   static let SBI_YOUR_SCHOOL_CLASSES_VC           = "YourClassViewController"
    
     static let SBI_CLASS_CURRENT_CHAT_VC          = "CLassCurrentChatViewController"
    
    static let SBI_CLASS_STUDENT_LIST_VC         = "ClassStudentListViewController"
     static let SBI_CLASS_CHAT_ROOT_VC           = "ClassChatRootViewController"
     static let SBI_SEND_INVITATION_VC           = "SendInvitationViewController"
    
    
    
}

//MARK- COLOR CODE

struct COLOR_CODE {
    
    static let NAVCOLOR                        = "#00C9FA"
    static let COLOR_TXTBORDER                 = "#DCDCDC"
    static let COLOR_LINE                      = "#BBBBBB"
    static let COLOR_TEXTFIELD_BG              = "#E4E4E4"
    static let COLOR_REGISTER_BUTTON           = "#FF3B55"
    static let COLOR_TEXTFILED_PLACEHOLDER     = "#D4D2D5"
    static let COLOR_IMAGEVIEW_BORDER          = "#4C4B56"
    static let COLOR_EVEN_CELL                 = "#FFFFFF"
    static let COLOR_ODD_CELL                  = "#F5F5F5"
    static let COLOR_TEXTFIELD_SEARCH          = "#FF3B55"
    static let COLOR_INDICATOR                 = "#FA5667"
    static let BACKGROUNDCOLOR                 = "#3DC2D5"
  
}

// MARK - Image name
struct IMG_NAME {
    
    static let radio_select                      = "fill_radio.png"
    static let radio_unselect                    = "blank_radio.png"
    
    
}


struct FONT {
    
    static let kFONT_REGULAR                = "Montserrat-Regular"
    
     static let kFONT_BOLD                = "Montserrat-Bold"
    
     static let kFONT_MEDIUM                = "Montserrat-SemiBold"
    
    
}


struct INSTRUCTION {
    
    static let kINSTRUCTION_CLS_SCHOOL                = "classListIntruction"
    static let kINSTRUCTION_DASHBOARD                 = "dashboardIntruction"
}

enum AssetIdentifier: String
{
    case chart                  = "pie-chart"
    case Menu                   = "menu"
    case Radio                  = "fill_radio"
    case add                    = "add"
    case background             = "bg6"
    
}

struct Platform {
    static let isSimulator: Bool = {
        #if arch(i386) || arch(x86_64)
            return true
        #endif
        return false
    }()
}



enum UIUserInterfaceIdiom : Int
{
    case Unspecified
    case Phone
    case Pad
}

struct ScreenSize
{
    static let SCREEN_WIDTH         = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT        = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}

struct DeviceType
{
    static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
    static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
    static let IS_IPHONE_6          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
    static let IS_IPHONE_6P         = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
    static let IS_IPHONE_X         = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 812.0
    static let IS_IPAD              = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
}
