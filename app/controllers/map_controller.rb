class MapController < UIViewController

  def viewDidLoad
    BW::Location.get_significant do |result|
      if from = result[:from]
        p "From Lat #{result[:from].latitude}, Long #{result[:from].longitude}"
      end
      if to = result[:to]
        latitude = result[:to].latitude
        longitude = result[:to].longitude
        p "To Lat #{latitude}, Long #{longitude}"

        position = CLLocationCoordinate2DMake(latitude, longitude)
        @mapView.animateToLocation(position)
        @marker.position = position
      end
    end
  end

  def loadView
    initial_latitude = 37.778376
    initial_longitude = -122.409853

    camera = GMSCameraPosition.cameraWithLatitude(initial_latitude, longitude: initial_longitude, zoom: 13);
    @mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
    @mapView.delegate = self
    self.view = @mapView

    position = CLLocationCoordinate2DMake(initial_latitude, initial_longitude)
    @marker = GMSMarker.markerWithPosition(position)
    @marker.icon = GMSMarker.markerImageWithColor(UIColor.blackColor)

    @marker.title = "You"
    @marker.map = @mapView
  end

  def mapView(mapView, didTapAtCoordinate: coordinate)
    puts "MapView was tapped"
    #position = CLLocationCoordinate2DMake(coordinate.latitude, coordinate.longitude);
    #marker = GMSMarker.markerWithPosition( position )
    #marker.map = @mapView;
    #
    #@waypoints.push( marker )
    #positionString = "#{coordinate.latitude}, #{coordinate.longitude}"
    #@waypointStrings.push( positionString )
    #
    #if @waypoints.count > 1
    #  sensor = "false"
    #  parameters = [ sensor, @waypointStrings ]
    #  keys = ["sensor", "waypoints"];
    #  query = NSDictionary.dictionaryWithObjects( parameters, forKeys:keys )
    #
    #  ds = DirectionService.alloc.init
    #
    #  ds.setDirectionsQuery( query, withSelector:'addDirections:', withDelegate:self );
    #end
  end

  def addDirections(json)
    #routes = json[:routes][0];
    #
    #route = routes[:overview_polyline]
    #overview_route = route[:points];
    #path = GMSPath.pathFromEncodedPath( overview_route )
    #polyline = GMSPolyline.polylineWithPath( path )
    #polyline.map = @mapView;
  end
end
