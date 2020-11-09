
import SwiftUI
import Firebase
import FirebaseAuth
import Combine

struct OTPVerification: View {
    @State var code = ""
    @Binding var show : Bool
    @Binding var ID : String
    @State var msg = ""
    @State var alert = false
    @Binding var no : String
    @State private var Tapped = false
    @State private var ChangeNo = false
    
    var size = UIScreen.main.bounds
    var body: some View {
        ZStack{
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 10){
                VStack(alignment: .center, spacing: 20){
                    Spacer()
                        .frame( height: size.width/10)
                    Text("You’re just a few steps away ")
                    Text("Please enter the one time password \n recived on \(no)")
                        .font(.EuleLabel)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                    
                    //change number
                    NavigationLink(destination: PhoneNumber(), isActive: $ChangeNo) { EmptyView() }
                    Button(action: {
                        self.ChangeNo = true
                    }){
                        Text("Change Number")
                    }
                    Spacer()
                        .frame( height: 50)
                    TextField("000000", text: self.$code)
                        .font(.EuleHeading)
                        .fixedSize()
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .fixedSize()
                        .accentColor(Color.EuleGreen)
                        .animation(.linear)
                        .onReceive(Just(self.code)) { inputValue in
                                    if inputValue.count > 6 {
                                        self.code.removeLast()
                                    }
                                }
                    Spacer()
                    Button(action: {
                        
                        // otp auth
                        if code.count == 6 {
                        let credential =  PhoneAuthProvider.provider().credential(withVerificationID: self.ID, verificationCode: self.code)
                        Auth.auth().signIn(with: credential) { (res, err) in
                            if err != nil{
                                self.msg = (err?.localizedDescription)!
                                self.alert.toggle()
                                return
                            }
                            else{
                            print("\(Auth.auth().currentUser?.uid ?? "")")
                            UserDefaults.standard.set(true, forKey: "status")
                            NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                            }
                        }
                        }
                    }){
                        Text("Continue")
                    }.buttonStyle(EuleGreenButton())
                    .opacity(!(code.count < 6) ? 1 : 0.5)
                    .disabled(!(code.count < 6) ? false : true)
                }.background(Color.white)
                
            }
            .cornerRadius(15)
            .frame(width: (size.width) )
            .padding(.top, 40)
        }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .accentColor(.EuleGreen)
        //error alert
        .alert(isPresented: $alert) {
            Alert(title: Text("Error"), message: Text(self.msg), dismissButton: .default(Text("Ok")))
        }
    }
}



