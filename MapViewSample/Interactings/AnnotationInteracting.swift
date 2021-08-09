//
//  AnnotationInteracting.swift
//  MapViewSample
//
//  Created by Gauravkumar Thummar on 2021-08-06.
//

import Foundation
import Alamofire

protocol AnnotationInteracting {
    func fetchAnnotation (_ completion: @escaping (MarkersModal?) -> Void)
}
enum HTTPHeaderField: String {
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}
enum ContentType: String {
    case json = "application/json"
    case form = "application/x-www-form-urlencoded"
}

class AnnotationInteractor: AnnotationInteracting {

    func fetchAnnotation(_ completion: @escaping (MarkersModal?) -> Void) {
        AF.request("https://ibimobile-interview.s3.amazonaws.com/test_annotations.json",
                   headers: headers())
            .responseData { response in
                guard case .success = response.result,
                      let data = response.data,
                      let markersModal =  try? JSONDecoder().decode(MarkersModal.self, from: data) else {
                    completion(nil)
                    return
                }
                completion(markersModal)
            }
    }
    
    func headers() -> HTTPHeaders {
        return [HTTPHeaderField.contentType.rawValue: ContentType.json.rawValue,
                HTTPHeaderField.acceptType.rawValue: ContentType.json.rawValue,
        ]
    }
}
