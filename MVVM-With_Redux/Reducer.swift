//
//  Reducer.swift
//  MVVM-With_Redux
//
//  Created by Lương Nhật Lâm on 8/25/17.
//  Copyright © 2017 Lương Nhật Lâm. All rights reserved.
//

import ReSwift

func appReducer(action:Action, state: AppState?) -> AppState {
    
    var state = state ?? AppState()
    
    switch action {
    case _ as IncreaseAction:
        state.counter += 1
    case _ as DecreaseAction:
        state.counter -= 1
    default:
        break
    }
    
    
    return state
}
