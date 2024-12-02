//
//  UserDataView.swift
//  EnvironmentObject
//
//  Created by Prinon bhowmik on 12/3/24.
//

import SwiftUI

struct UserDataView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        Text(userViewModel.name)
    }
}

#Preview {
    UserDataView()
        .environmentObject(UserViewModel())
}
