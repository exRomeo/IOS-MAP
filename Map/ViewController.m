//
//  ViewController.m
//  Map
//
//  Created by Ramy Ashraf on 26/04/2023.
//

#import "ViewController.h"
#import "Marker.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _mapView.zoomEnabled = YES;
    _mapView.rotateEnabled = NO;
    _mapView.delegate = self;
}

-(void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("\nregionWillChangeAnimated\n");
}

-(void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    printf("\nregionDidChangeAnimated\n");
}

-(void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    printf("\ndidSelectAnnotationView\n");
}
- (IBAction)click:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:_mapView];
    printf("\nClickity click\n x = %f, y = %f",point.x, point.y);
    
    CLLocationCoordinate2D coordsOnMap = [_mapView convertPoint:point toCoordinateFromView:_mapView];
    
    Marker *mark = [Marker new];
    mark.coordnate = coordsOnMap;
//    mark.title = @"title";
//    mark.subtitle = @"subysubsub";
    [_mapView addAnnotation:mark];
//    [_mapView removeAnnotations:_mapView.annotations];
}
@end
