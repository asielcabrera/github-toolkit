//
//  RequestHandler.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation

public protocol RequestHandler {
    public prepareRequest(_ options: String) {}
    public canHandleAuthentication(_ response: HttpClientResponse) -> Bool {}
    public handleAuthentication(httpClient: HttpClient, requestInfo: RequestInfo, data: String) -> HttpClientResponse {}
}
