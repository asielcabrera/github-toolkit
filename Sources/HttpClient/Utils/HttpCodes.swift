//
//  HttpCodes.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation

enum HttpCodes {
    case OK = 200,
     MultipleChoices = 300,
     MovedPermanently = 301,
     ResourceMoved = 302,
     SeeOther = 303,
     NotModified = 304,
     UseProxy = 305,
     SwitchProxy = 306,
     TemporaryRedirect = 307,
     PermanentRedirect = 308,
     BadRequest = 400,
     Unauthorized = 401,
     PaymentRequired = 402,
     Forbidden = 403,
     NotFound = 404,
     MethodNotAllowed = 405,
     NotAcceptable = 406,
     ProxyAuthenticationRequired = 407,
     RequestTimeout = 408,
     Conflict = 409,
     Gone = 410,
     TooManyRequests = 429,
     InternalServerError = 500,
     NotImplemented = 501,
     BadGateway = 502,
     ServiceUnavailable = 503,
     GatewayTimeout = 504
}
