# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  require 'bubble-wrap'
  require 'bubble-wrap/location'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.identifier = 'com.vaunte.iLocate'
  app.name = 'iLocate'

  app.provisioning_profile = "lib/provisioning_profiles/Development__Development_Provisioning_Profile.mobileprovision"

  app.archs['iPhoneOS'] = ['armv7']
  app.vendor_project('vendor/GoogleMaps.framework',
                     :static,
                     :products    => %w{GoogleMaps},
                     :headers_dir => 'Headers')
  app.resources_dirs << 'vendor/GoogleMaps.framework/Resources'
  app.frameworks += %w{AVFoundation CoreData CoreLocation CoreText GLKit ImageIO OpenGLES QuartzCore SystemConfiguration}
  app.libs       += %w{/usr/lib/libicucore.dylib /usr/lib/libc++.dylib /usr/lib/libz.dylib}
end
