//
//  LoginView.swift
//  SwiftUI+C
//
//  Created by Michael Mavris on 05/01/2024.
//

import SwiftUI

struct LoginView: View {
    // In MVVM the Output will be located in the ViewModel
    
    struct Output {
        var goToMainScreen: () -> Void
        var goToForgotPassword: () -> Void
    }

    var output: Output

    var body: some View {
        Button(
            action: {
                self.output.goToMainScreen()
            },
            label: {
                Text("Login")
            }
        ).padding()

        Button(
            action: {
                self.output.goToForgotPassword()
            },
            label: {
                Text("Forgot password")
            }
        )
    }
}

#Preview {
    LoginView(output: .init(goToMainScreen: {}, goToForgotPassword: {}))
}
