import Foundation

public struct ESGetSingleIdResponse: Decodable {
    public let id: String
    public let index: String
    public let version: Int?
    public let score: Double

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case index = "_index"
        case version = "_version"
        case score = "_score"
    }
}
