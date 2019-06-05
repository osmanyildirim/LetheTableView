#
# Be sure to run `pod lib lint LetheTableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LetheTableView'
  s.version          = '0.1.0'
  s.summary          = 'Expandable UITableView.'
  s.description      = 'This pod for expandable UITableView'

  s.homepage         = 'https://github.com/yildirimosman@outlook.com/LetheTableView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yildirimosman@outlook.com' => 'YILDIRIM' }
  s.source           = { :git => 'https://github.com/yildirimosman@outlook.com/LetheTableView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'LetheTableView/Classes/**/*'
end
