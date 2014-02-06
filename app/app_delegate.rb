GOOGLE_MAPS_API_KEY = "AIzaSyAFk8fvxrd5vIMaRIIKfNG0L_8ThSBqLsY"

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    GMSServices.provideAPIKey(GOOGLE_MAPS_API_KEY)

    @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
    @window.rootViewController = MapController.new
    @window.makeKeyAndVisible
    true
  end
end
