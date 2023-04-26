//
//  Marker.h
//  Map
//
//  Created by Ramy Ashraf on 26/04/2023.
//

#import <Foundation/Foundation.h>

#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Marker : NSObject <MKAnnotation>

@property (nonatomic) CLLocationCoordinate2D coordnate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

@end

NS_ASSUME_NONNULL_END
