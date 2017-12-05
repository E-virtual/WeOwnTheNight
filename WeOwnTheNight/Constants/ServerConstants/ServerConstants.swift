//
//  ServerConstants.swift
//  SwiftSamples
//
//  Created by Nitin Kumar on 15/06/17.
//  Copyright © 2017 Nitin Kumar. All rights reserved.
//

import Foundation
import UIKit


//MARK - Base Url
struct SERVER {
   // static let kBASE_URL                        = "http://demo.evirtualservices.com/WallOpp/site/webservices"
    
    static let kBASE_URL                          = "http://demo.evirtualservices.com/WallOpp/site/WebserviceTests"
    
    
    
    static let kSERVER_CONN = "Server connecction faild! Please try later."
}

//MARK - Url Methods
struct APIMETHOD {
    
    static let kAPI_LOGIN                        = "login"
    static let kAPI_REGISTRATION                 = "registration"
    static let kAPI_LOGOUT                       = "logout"
    static let kAPI_FORGOT_PWD                   = "forgetpassword"
    static let kAPI_EDIT_PROFILE                 = "editprofile"
    static let kAPI_CHANGE_PROFILE_PICK          = "changeProfilePic"
    static let kAPI_CHANGE_PWD                   = "changePassword"
    
    static let kAPI_GET_COUNTRY                  = "country"
    static let kAPI_GET_STATE                    = "state"
    static let kAPI_GET_CITY                     = "city"
    static let kAPI_GET_SCHOOL                   = "School"
    
    static let kAPI_ADD_SCHOOL                   = "addSchool"
    
    static let kAPI_ADD_CLASS                    = "addClass"
    static let kAPI_EDIT_CLASS                   = "editClass"
    
    static let kAPI_DEGREE_PERIODS               = "degreeAndPeriod"
    
    static let kAPI_GET_SUBJECTS                 = "getSubject"
    
    static let kAPI_GET_ALL_STUDENT              = "allStudent"
    
    static let kAPI_GET_PROFILE                  = "profile"
    
    static let kAPI_CREATE_GRP                   = "createdGroup"
    
    static let kAPI_STU_LIST_NOT_IN_GRP          = "studentListnotIngroup"
    
    static let kAPI_GRP_LIST                     = "groupList"
    static let kAPI_MULTIPLE_GRP_LIST            = "multipleGroup"
    
    
    static let kAPI_GRP_CREATE                   = "createdGroup"
    
    static let kAPI_GRP_EDIT                     = "editGroup"
    
     static let kAPI_GET_USER_CLASS              = "userclass"
    
     static let kAPI_GET_SCHOOL_CLASS            = "getSchoolClassStudent"
    
      static let kAPI_HELP                       = "help"
      static let kAPI_GET_USER_SCHOOL_LIST       = "getuserSchooList"
    
     static let kAPI_GET_USER_CLASS_LIST         = "getUserClass"
    
     static let kAPI_USER_LOGOUT                 = "logout"
     static let kAPI_USER_PROFILE                = "profile"
     static let kAPI_REMOVE_MEBMER_FROM_GROUP    = "removeGroupMamber"
    
     static let kAPI_REMOVE_CLASS                = "deleteClass"
    static let kAPI_REMOVE_SCHOOL                = "deleteSchoool"
    static let kAPI_GET_CHAT_LIST                = "getChatList"
    static let kAPI_CHAT_START                   = "startChat"
    
    
    
}

//MARK - Keywords
struct USER {
    
    static let kUSERID                           = "userId"
    static let kUSER_ID                          = "user_id"
    static let kUSER_EMAIL                       = "emailId"
    static let kUSER_PWD                         = "password"
    static let kUSER_FIRST_NAME                  = "firstName"
    static let kUSER_MOBILE                      = "mobile"
    static let kUSER_ADDRESS                     = "address"
    static let kUSER_ZIPCODE                     = "zipcode"
    static let kUSER_IMG                         = "image"
    static let kUSER_FIREBASE_ID                 = "firebaseId"
    static let kUSER_OLD_PWD                     = "oldPassword"
    static let kUSER_NEW_PWD                     = "newPassword"
    static let kUSER_PROFILE_IMAGE               = "profile_image"
    static let kUSER_IMAGE                       = "image"
   
  

    
}

//MARK: - GROUP STUCTURE

struct GRP {
    
    // GRP NAME
    static let kGRP_NAME                        = "groupName"
    
    static let kGRP_DESC                        = "description"
    
    static let kGRP_MEMBER_ID                   = "mamberId"
    
     static let kGRP_ID                         = "groupId"
    
    static let kGRP_IMG                         = "groupImage"
    
}

struct PARAMETER {
    
    // Country
     static let kPARA_COUNTRY_ID               = "countryId"
    static let kPARA_STATE_ID                  = "stateId"
    static let kPARA_CITY_ID                   = "cityId"
    
    
    
    
  
}

//SCHOOL
struct SCHOOL {
    
   static let kSCHOOL                          =   "school"
   static let kCOUNTRY                         =   "country"
   static let kSTATE                           =   "state"
   static let kCITY                            =   "city"
    
    
    
    static let kSCHOOL_ID                          =   "school_id"
    static let kCOUNTRY_ID                         =   "country_id"
    static let kSTATE_ID                           =   "state_id"
    static let kCITY_ID                            =   "city_id"
    
}

struct CLASS {
    
    static let kTEACHER                        =   "teacher"
    static let kTYPE                           =   "type"
    static let kPERIODS                        =   "period"
    static let kSUBJECT                        =   "subject"
    static let kCLASS                          =   "class"
    static let kSUBJECT_ID                     =   "subject_id"
    static let kCLASS_ID                       =   "grade_id"
    
    
}

//MARK - Extra
struct DEVICE {
    
    static let kDEVICE                        = "device"
    static let kDEVICE_NAME                   = "ios"
    static let kDEVICE_TOKEN                  = "deviceToken"
}


struct ACTION {
    
    static let kAPI_ACTION                     = "action"
}


struct EXTRA {
    
     static let kAPI_STATUS                    = "status"
     static let kAPI_STATUS_SUCCESS            = "Success"
     static let kAPI_MSG                       = "msg"
     static let kAPI_RESPONSE                  = "response"
     static let kAPI_LOGIN_DATA                = "loginInfo"
    
    
}

