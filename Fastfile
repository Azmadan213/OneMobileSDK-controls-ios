# All lines starting with a # are ignored when running `fastlane`
#aaa
fastlane_version "2.63.0"

default_platform :ios

platform :ios do
  before_all do
    # ENV["SLACK_URL"] = "https://hooks.slack.com/services/..."
    # cocoapods
    # carthage
  end

  desc "Runs all the snapshot tests on selected devices"
  lane :verify do
    scan(fail_build: false, scheme: "Demo", device: "iPad Pro (12.9-inch)")
 end

  desc "Rewrites all existing snapshots on selected devices"
  lane :record do
    scan(fail_build: false, scheme: "Record", device: "iPad Pro (12.9-inch)")
  end
end
