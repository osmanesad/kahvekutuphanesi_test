import SwiftUI

struct FiltreKahveView: View {
    @StateObject var filtreKahveViewModel = FiltreKahveViewModel()
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
                                        filtreKahveViewModel.nextScreen = "EkirdeklerView"
                                    }
                                Spacer()
                                HStack {
                                    Text(StringConstants.kLblKTPhane2)
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
                                            filtreKahveViewModel.nextScreen = "KtphaneView"
                                        }
                                    Text(StringConstants.kLblFiltreKahve)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(83.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(38.0))
                                }
                                .frame(width: getRelativeWidth(213.0),
                                       height: getRelativeHeight(17.0), alignment: .bottom)
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
                                            Stacklanguage1Cell(iceceklerClick: {
                                                filtreKahveViewModel.nextScreen = "LatinAmerikaView"
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
                    NavigationLink(destination: LatinAmerikaView(),
                                   tag: "LatinAmerikaView",
                                   selection: $filtreKahveViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EkirdeklerView(),
                                   tag: "EkirdeklerView",
                                   selection: $filtreKahveViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: KtphaneView(),
                                   tag: "KtphaneView",
                                   selection: $filtreKahveViewModel.nextScreen,
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

struct FiltreKahveView_Previews: PreviewProvider {
    static var previews: some View {
        FiltreKahveView()
    }
}
