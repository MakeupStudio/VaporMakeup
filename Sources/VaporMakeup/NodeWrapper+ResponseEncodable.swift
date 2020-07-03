//
//  NodeWrapper+ResponseEncodable.swift
//  VaporMakeup
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 Maxim Krouk. All rights reserved.
//

import Makeup
import Vapor

extension Node: ResponseEncodable {
    
    public func encodeResponse(for request: Request) -> EventLoopFuture<Response> {
        return request.eventLoop.makeSucceededFuture(
            Response(status: .ok,
                     headers: ["content-type": "text/html; charset=utf-8"],
                     body: .init(string: document(content: HTML.NodeWrapper<HTML.Tag>(self)).render()))
        )
    }
    
}
