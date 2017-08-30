//
//  Reducer.swift
//  MVVM-With_Redux
//
//  Created by Lương Nhật Lâm on 8/25/17.
//  Copyright © 2017 Lương Nhật Lâm. All rights reserved.
//

import ReSwift

func appReducer(action:Action, state: AppState?) -> AppState {
    
    return AppState(homeState: homeReducer(action: action, state: state?.homeState))
}

func homeReducer(action:Action, state: HomeState?) -> HomeState {
    var state = state ?? HomeState()
    
    switch action {
    case _ as IncreaseAction:
        state.counterNumber += 1
    case _ as DecreaseAction:
        state.counterNumber -= 1
    default:
        break
    }
    
    return state
}
