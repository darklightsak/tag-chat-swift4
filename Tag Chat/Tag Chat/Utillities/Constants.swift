//
//  Constants.swift
//  Tag Chat
//
//  Created by Surasak Wattanapradit on 22/9/2560 BE.
//  Copyright © 2560 Surasak Wattanapradit. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> () // type for check web req successed

// URL Constants
let BASE_URL = "https://mytagchat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
