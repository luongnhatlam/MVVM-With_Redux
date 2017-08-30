//
//  AppState.swift
//  MVVM-With_Redux
//
//  Created by Lương Nhật Lâm on 8/25/17.
//  Copyright © 2017 Lương Nhật Lâm. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    var homeState:HomeState
}

struct HomeState {
    var counterNumber = 0
}
