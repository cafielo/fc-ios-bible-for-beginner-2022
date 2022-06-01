//
//  FramewokData.swift
//  AppleFramework-SwiftUI
//
//  Created by joonwon lee on 2022/05/21.
//

import Foundation

struct AppleFramework {
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}

extension AppleFramework {
    static let list = [
        AppleFramework(name: "App Clips",
                  imageName: "app-clip",
                  urlString: "https://developer.apple.com/app-clips",
                  description: "App Clips are a great way for users to quickly access and experience what your app has to offer. An App Clip is a small part of your app that’s discoverable at the moment it’s needed. App Clips are fast and lightweight so a user can open them quickly.\n\nWhether they're ordering take-out from a restaurant, renting a scooter, or setting up a new connected appliance for the first time, users will be able to start and finish an experience from your app in seconds. And when they’re done, you can offer the opportunity to download your full app from the App Store."),
        
        AppleFramework(name: "ARKit",
                  imageName: "arkit",
                  urlString: "https://developer.apple.com/augmented-reality/arkit",
                  description: "ARKit 5 brings Location Anchors to London and more cities across the United States, allowing you to create AR experiences for specific places, like the London Eye, Times Square, and even your own neighborhood. ARKit 5 also features improvements to Motion Tracking and support for Face Tracking in the Ultra Wide camera on iPad Pro (5th generation). And with a new App Clip Code anchor, you can pin virtual content from your App Clip or ARKit app to a printed or digital App Clip Code."),
        
        AppleFramework(name: "CarPlay",
                  imageName: "carplay",
                  urlString: "https://developer.apple.com/carplay",
                  description: "A smarter, safer way to use your iPhone in the car, CarPlay takes the things you want to do with your iPhone while driving and puts them on your car’s built-in display.\n\nYou can get directions, make calls, send and receive messages, and listen to music, all while staying focused on the road."),
        
        AppleFramework(name: "Catalyst",
                  imageName: "catalyst",
                  urlString: "https://developer.apple.com/mac-catalyst",
                  description: "Native Mac apps built with Mac Catalyst can share code with your iPad apps, and you can add more features just for Mac. On macOS Monterey, use the latest APIs to display pop-up buttons, tooltips, and a subtitle in a windowʼs titlebar. You can also provide touch alternatives, keyboard navigation, and support for Siri intents, as well as allow users to print everywhere using Command-P, and more. There’s never been a better time to turn your iPad app into a powerful Mac app."),

        AppleFramework(name: "ClassKit",
                  imageName: "classkit",
                  urlString: "https://developer.apple.com/classkit",
                  description: "The many great learning apps available in the App Store are an integral part of the teaching and learning experience in schools. By adopting ClassKit, your app will work with Schoolwork, a powerful iPad app for teachers and students to help keep track of assignments and student progress. You can help teachers discover assignable activities in your app, take students directly to the right activity with a single tap, and securely and privately share progress data with teachers to help them personalize instruction."),
        
        AppleFramework(name: "CloudKit",
                  imageName: "cloudkit",
                  urlString: "https://developer.apple.com/icloud/cloudkit",
                  description: "Store your app’s data in iCloud and keep everything up-to-date across devices and on the web. Featuring efficient syncing, as well as simple monitoring and management, it’s never been easier to build and grow your apps with CloudKit. Store private data securely in your users’ iCloud accounts for limitless scale as your user base grows, and get up to 1PB of storage for your app’s public data."),
        
        AppleFramework(name: "Core ML",
                  imageName: "coreml",
                  urlString: "https://developer.apple.com/machine-learning",
                  description: "Create intelligent features and enable new experiences for your apps by leveraging powerful on-device machine learning. Learn how to build, train, and deploy machine learning models into your iPhone, iPad, Apple Watch, and Mac apps."),
        
        AppleFramework(name: "HealthKit",
                  imageName: "healthkit",
                  urlString: "https://developer.apple.com/health-fitness",
                  description: "Integrate HealthKit into your health and fitness apps for iOS and watchOS to create a more seamless user experience. When a customer provides permission for your app to read and write health and activity data to their Health app, your app becomes a valuable data source and can deliver deeply informed health and fitness solutions."),
        
        AppleFramework(name: "Metal",
                  imageName: "metal",
                  urlString: "https://developer.apple.com/metal",
                  description: "Metal provides a platform-optimized, low-overhead API for developing the latest 3D pro applications and amazing games using a rich shading language with tighter integration between graphics and compute programs. To help you do more while managing ever more complex shader code, Metal adds an unparalleled suite of advanced GPU debugging tools to help you realize the full potential of your graphics code."),
        
        AppleFramework(name: "SF Symbols",
                  imageName: "sf-symbols",
                  urlString: "https://developer.apple.com/sf-symbols",
                  description: "With over 3,300 symbols, SF Symbols is a library of iconography designed to integrate seamlessly with San Francisco, the system font for Apple platforms. Symbols come in nine weights and three scales, and automatically align with text labels. They can be exported and edited in vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features. SF Symbols 3 features over 600 new symbols, enhanced color customization, a new inspector, and improved support for custom symbols."),
        
        AppleFramework(name: "SiriKit",
                  imageName: "sirikit",
                  urlString: "https://developer.apple.com/siri",
                  description: "Siri is the world’s most popular intelligent assistant. With SiriKit and Shortcuts, your apps can help users get things done with just their voice, intelligent suggestions, or the Shortcuts app. Your apps can also reach users across Apple platforms with Shortcuts on watchOS, SiriKit Music on HomePod, and SiriKit Media on Apple TV."),
        
        AppleFramework(name: "SpriteKit",
                  imageName: "spritekit",
                  urlString: "https://developer.apple.com/spritekit",
                  description: "The SpriteKit framework makes it easy to create high-performance, battery-efficient 2D games. With support for custom OpenGL ES shaders and lighting, integration with SceneKit, and advanced new physics effects and animations, you can add force fields, detect collisions, and generate new lighting effects in your games."),
        
        AppleFramework(name: "SwiftUI",
                  imageName: "swiftui",
                  urlString: "https://developer.apple.com/xcode/swiftui",
                  description: "SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and as little code as possible. With SwiftUI, you can bring even better experiences to all users, on any Apple device, using just one set of tools and APIs."),
        
        AppleFramework(name: "Test Flight",
                  imageName: "test-flight",
                  urlString: "https://developer.apple.com/testflight",
                  description: "TestFlight makes it easy to invite users to test your apps and App Clips and collect valuable feedback before releasing your apps on the App Store. You can invite up to 10,000 testers using just their email address or by sharing a public link."),
        
        AppleFramework(name: "Wallet",
                  imageName: "wallet",
                  urlString: "https://developer.apple.com/wallet/get-started",
                  description: "The Wallet app on iPhone, iPod touch, and Apple Watch allows users to easily manage payment cards, boarding passes, tickets, gift cards, and other passes.\n\nWallet is time and location enabled, so passes can be configured to display on the user’s device at the appropriate moment, like when the user reaches the airport or walks into a store.\n\nPasses can also be updated with push notifications so, if details change, you can notify the user and they can simply tap the notification to view the updated pass."),
        
        AppleFramework(name: "WidgetKit",
                  imageName: "widgetkit",
                  urlString: "https://developer.apple.com/widgets",
                  description: "Easily build widgets and make them available across iOS, iPadOS, and macOS using the WidgetKit framework and the widget API for SwiftUI. Widgets come in multiple sizes, and users can visit the widget gallery to search, preview sizes, and place them anywhere on the Home screen to access important details at a glance. They can also add Smart Stacks — sets of widgets that use on-device intelligence to surface the right widget at the right moment, based on factors like time, location, and activity.")
    ]
}

