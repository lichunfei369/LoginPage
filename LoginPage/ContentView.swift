//
//  ContentView.swift
//  LoginPage
//
//  Created by Apple on 2023/6/27.
//

import SwiftUI

struct ContentView: View {
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
      
        NavigationView(content: {
            ZStack {
                //background color
                Color.white
                    .ignoresSafeArea(edges: .all)
                
                VStack{
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200,height: 200)
                        .border(Color.red)//添加边线
                    VStack{
                        TextField("Email",text: $email)
                            .font(.title)
                        SecureField("passworld",text: $password)
                            .font(.title)
                    }
                    .padding()//添加空格
                    .border(Color.red)//添加边线
                }
            }
            .border(Color.green)
            //普通显示导航栏
//            .navigationTitle("Text")
            //自定义导航栏
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Login Page")
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                        .fontWeight(.bold)
                        .padding(.top,20)
                }
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
