import SwiftUI

struct EkirdeklerView: View {
    @StateObject var ekirdeklerViewModel = EkirdeklerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            HStack {
                                Image("img_vector")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeHeight(42.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        ekirdeklerViewModel.nextScreen = "KtphaneView"
                                    }
                                Spacer()
                                HStack {
                                    Text(StringConstants.kLblKTPhabe)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(90.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .onTapGesture {
                                            ekirdeklerViewModel.nextScreen = "KtphaneView"
                                        }
                                    Text(StringConstants.kLblEkirdekler)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(82.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(40.0))
                                }
                                .frame(width: getRelativeWidth(213.0),
                                       height: getRelativeHeight(17.0), alignment: .center)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.bottom, getRelativeHeight(11.0))
                            }
                            .frame(width: getRelativeWidth(337.0), height: getRelativeHeight(42.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(337.0), height: getRelativeHeight(42.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(42.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack {
                                    LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                              spacing: 16.979996) {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            StacklanguageCell(iceceklerClick: {
                                                ekirdeklerViewModel.nextScreen = "FiltreKahveView"
                                            })
                                        }
                                    }
                                }
                            }
                            .fixedSize(horizontal: false, vertical: false)
                        }
                        .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(722.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(722.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(61.0))
                    VStack {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                    }
                    .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(50.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(35.0))
                }
                .frame(width: getRelativeWidth(338.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: KtphaneView(),
                                   tag: "KtphaneView",
                                   selection: $ekirdeklerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FiltreKahveView(),
                                   tag: "FiltreKahveView",
                                   selection: $ekirdeklerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct EkirdeklerView_Previews: PreviewProvider {
    static var previews: some View {
        EkirdeklerView()
    }
}
