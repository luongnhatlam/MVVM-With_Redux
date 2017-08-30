//
//  ViewModel.swift
//  MVVM-With_Redux
//
//  Created by Lương Nhật Lâm on 8/25/17.
//  Copyright © 2017 Lương Nhật Lâm. All rights reserved.
//

import ReSwift

class BaseViewModel:StoreSubscriber {
    typealias StoreSubscriberStateType = AppState
    
    func newState(state: AppState) {
        
    }
    
    deinit {
        store.unsubscribe(self)
    }
}

class ViewModel:BaseViewModel {
    
    var counter:String = "0"
    var viewModelUpdate:((String)->Void)?
    
    override init() {
        
    }
    init(viewModelUpdate:((String)->Void)?) {
        super.init()
        self.viewModelUpdate    = viewModelUpdate
        self.viewModelUpdate?(self.counter)
        store.subscribe(self)
    }
    
    // StoreSubscriber Protocol
    override func newState(state: AppState) {
        self.counter = String(state.homeState.counterNumber)
        viewModelUpdate?(self.counter)
    }

    func increaseCounter() {
        store.dispatch(IncreaseAction())
        
    }
    
    func decreaseCounter() {
        store.dispatch(DecreaseAction())
    }

}
