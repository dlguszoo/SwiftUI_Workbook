import ProjectDescription

let project = Project(
    name: "Week1Practice",
    targets: [
        .target(
            name: "Week1Practice",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Week1Practice",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                    // 폰트 추가
                    "UIAppFonts": ["Pretendard-Black.otf",
                                   "Pretendard-Bold.otf",
                                   "Pretendard-ExtraBold.otf",
                                   "Pretendard-ExtraLight.otf",
                                   "Pretendard-Light.otf",
                                   "Pretendard-Medium.otf",
                                   "Pretendard-Regular.otf",
                                   "Pretendard-SemiBold.otf",
                                   "Pretendard-Thin.otf"
                    ]
                ]
            ),
            sources: ["Week1Practice/Sources/**"],
            resources: ["Week1Practice/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "Week1PracticeTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.Week1PracticeTests",
            infoPlist: .default,
            sources: ["Week1Practice/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Week1Practice")]
        ),
    ]
)
