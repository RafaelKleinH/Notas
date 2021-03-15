import Foundation

struct Heroes: Codable {
    let name: String
    let realName: String
    let powers: String
    let team: String
    let description: String
    let appearances: [Apears]
}
struct Apears: Codable {
    let	nameAppear: String
}
