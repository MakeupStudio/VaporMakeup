//
//  Request+Extension.swift
//  VaporMakeup
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 Maxim Krouk. All rights reserved.
//

import Makeup
import Vapor

public extension Request {
    
    func view<Page: Markup>(_ page: () -> Page) -> EventLoopFuture<Response> {
        view(page())
    }
    
    func view<Page: Markup>(_ page: Page) -> EventLoopFuture<Response> {
        page.node.encodeResponse(for: self)
    }
    
}
