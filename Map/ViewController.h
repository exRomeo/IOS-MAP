//
//  ViewController.h
//  Map
//
//  Created by Ramy Ashraf on 26/04/2023.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)click:(UITapGestureRecognizer *)sender;


@end

