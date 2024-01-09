//
//  ForgotPasswordView.swift
//  SwiftUI+C
//
//  Created by Michael Mavris on 05/01/2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    // In MVVM the Output will be located in the ViewModel
    struct Output {
        var goToForgotPasswordWebsite: () -> Void
    }

    var output: Output

    var body: some View {
        Button(
            action: {
                self.output.goToForgotPasswordWebsite()
            },
            label: {
                Text("Forgot password")
            }
        ).padding()
    }
}

#Preview {
    ForgotPasswordView(output: .init(goToForgotPasswordWebsite: {}))
}
