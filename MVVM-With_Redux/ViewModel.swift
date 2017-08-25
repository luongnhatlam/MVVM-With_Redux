//
//  ViewModel.swift
//  MVVM-With_Redux
//
//  Created by Lương Nhật Lâm on 8/25/17.
//  Copyright © 2017 Lương Nhật Lâm. All rights reserved.
//

import ReSwift

class ViewModel:StoreSubscriber {
    typealias StoreSubscriberStateType = AppState
    var counter:String = "0"
    var viewModelUpdate:((String)->Void)?
    init() {
        store.subscribe(self)
    }
    
    // StoreSubscriber Protocol
    func newState(state: AppState) {
        self.counter = String(state.counter)
        viewModelUpdate?(self.counter)
    }
    //
    
    func updateUI() {
        viewModelUpdate?(self.counter)
    }
    func increaseCounter() {
        store.dispatch(IncreaseAction())
        
    }
    
    func decreaseCounter() {
        store.dispatch(DecreaseAction())
    }
    
    deinit {
        store.unsubscribe(self)
    }
}
