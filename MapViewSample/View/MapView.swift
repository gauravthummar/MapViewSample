//
//  MapView.swift
//  MapViewSample
//
//  Created by Gauravkumar Thummar on 2021-08-06.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
        
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
        let annotationInteractor = AnnotationInteractor()
        annotationInteractor.fetchAnnotation { result in
            
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
