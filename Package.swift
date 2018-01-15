// swift-tools-version:4.0

/**
 * Copyright IBM Corporation 2016, 2017
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import PackageDescription

let package = Package(
    name: "Kitura-Session-Redis",
    products: [
        .library(
            name: "KituraSessionRedis",
            targets: ["KituraSessionRedis"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura-Session.git", from: "3.0.0"),
        .package(url: "https://github.com/IBM-Swift/Kitura-redis.git", from: "2.0.0"),
    ],
    targets: [
        .target(name: "KituraSessionRedis", dependencies: ["KituraSession", "SwiftRedis"]),
        .testTarget(name: "KituraSessionRedisTests", dependencies: ["KituraSessionRedis"])
    ]
)
