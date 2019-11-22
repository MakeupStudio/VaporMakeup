//
//  Request+Extension.swift
//  VaporMakeup
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 Maxim Krouk. All rights reserved.
//

@_exported import Makeup
import Vapor

public extension Request {

    func view(_ page: HtmlPage) -> EventLoopFuture<Response> { view(page.content) }
    
    func view(_ content: () -> HtmlDocumentContentWrapper) -> EventLoopFuture<Response> {
        view(content())
    }
    
    func view(_ wrapper: HtmlDocumentContentWrapper) -> EventLoopFuture<Response> {
        HTML.NodeWrapper<HTML.Tag.Html>(wrapper.content().node).encodeResponse(for: self)
    }
    
}
