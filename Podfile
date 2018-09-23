# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'TestProjDemo1' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for testDemoApp
  def testing_pods
    pod 'Quick'
    pod 'Nimble'
  end

  target 'TestProjDemo1Tests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods
  end

  target 'TestProjDemo1UITests' do
    inherit! :search_paths
    # Pods for testing
    testing_pods
  end

end
