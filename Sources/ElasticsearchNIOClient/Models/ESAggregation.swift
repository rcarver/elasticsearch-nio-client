import Foundation

public struct ESAggregation: Equatable, Decodable {
    public struct Bucket: Equatable, Decodable {
        public let key: String
        public let docCount: Int

        enum CodingKeys: String, CodingKey {
            case key = "key"
            case docCount = "doc_count"
        }
    }

    public var docCountErrorUpperBound: Int
    public var sumOtherDocCount: Int
    public var buckets: [Bucket]

    enum CodingKeys: String, CodingKey {
        case docCountErrorUpperBound = "doc_count_error_upper_bound"
        case sumOtherDocCount = "sum_other_doc_count"
        case buckets = "buckets"
    }
}
