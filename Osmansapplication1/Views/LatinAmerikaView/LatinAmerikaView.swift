import SwiftUI

struct LatinAmerikaView: View {
    @StateObject var latinAmerikaViewModel = LatinAmerikaViewModel()
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
                                    .padding(.bottom, getRelativeHeight(4.0))
                                    .onTapGesture {
                                        latinAmerikaViewModel.nextScreen = "FiltreKahveView"
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
                                            latinAmerikaViewModel.nextScreen = "KtphaneView"
                                        }
                                    Text(StringConstants.kMsgLatinAmerikaK)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.trailing)
                                        .frame(width: getRelativeWidth(98.0),
                                               height: getRelativeHeight(32.0),
                                               alignment: .topTrailing)
                                        .padding(.leading, getRelativeWidth(20.0))
                                }
                                .frame(width: getRelativeWidth(209.0),
                                       height: getRelativeHeight(33.0), alignment: .bottom)
                                .padding(.top, getRelativeHeight(14.0))
                            }
                            .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(47.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(47.0),
                               alignment: .leading)
                        .padding(.trailing, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(47.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack {
                                    LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                              spacing: 16.979996) {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            Stacklanguage2Cell(iceceklerClick: {
                                                latinAmerikaViewModel
                                                    .nextScreen = "LatinAmerikaOneView"
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
                    .padding(.top, getRelativeHeight(56.0))
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
                    NavigationLink(destination: LatinAmerikaOneView(),
                                   tag: "LatinAmerikaOneView",
                                   selection: $latinAmerikaViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FiltreKahveView(),
                                   tag: "FiltreKahveView",
                                   selection: $latinAmerikaViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: KtphaneView(),
                                   tag: "KtphaneView",
                                   selection: $latinAmerikaViewModel.nextScreen,
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

struct LatinAmerikaView_Previews: PreviewProvider {
    static var previews: some View {
        LatinAmerikaView()
    }
}
