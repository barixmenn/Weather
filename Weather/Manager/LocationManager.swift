//
//  LocationManager.swift
//  Weather
//
//  Created by Baris on 25.06.2023.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject {
    
    //MARK: - Properties
    
    //  Creating an instance of CLLocationManager, the framework we use to get the coordinates
    let manager = CLLocationManager()

    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    //MARK: - LifeCycle
    override init() {
        super.init()
        manager.delegate = self
    }
    
    
    
    //MARK: - Functions
    
    // Requests the one-time delivery of the user’s current location
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    
    
    
}

//MARK: - LocationManagerDelegate

extension LocationManager : CLLocationManagerDelegate {
    
    // Set the location coordinates to the location variable
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    // This function will be called if we run into an error
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting location", error)
        isLoading = false
    }
}
