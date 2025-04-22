import ProjectDescription

let project = Project(
    name: "CloneStarbucks",
    targets: [
        .target(
            name: "CloneStarbucks",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.CloneStarbucks",
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
                    ],
                    
                    "NSPhotoLibraryUsageDescription": "사진 앨범 접근 권한이 필요합니다.",
                    "NSCameraUsageDescription": "카메라 접근 권한이 필요합니다."
                ]
            ),
            sources: ["CloneStarbucks/Sources/**"],
            resources: ["CloneStarbucks/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "CloneStarbucksTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.CloneStarbucksTests",
            infoPlist: .default,
            sources: ["CloneStarbucks/Tests/**"],
            resources: [],
            dependencies: [.target(name: "CloneStarbucks")]
        ),
    ]
)
