# LetheTableView

[![CI Status](https://img.shields.io/travis/yildirimosman@outlook.com/LetheTableView.svg?style=flat)](https://travis-ci.org/yildirimosman@outlook.com/LetheTableView)
[![Version](https://img.shields.io/cocoapods/v/LetheTableView.svg?style=flat)](https://cocoapods.org/pods/LetheTableView)
[![License](https://img.shields.io/cocoapods/l/LetheTableView.svg?style=flat)](https://cocoapods.org/pods/LetheTableView)
[![Platform](https://img.shields.io/cocoapods/p/LetheTableView.svg?style=flat)](https://cocoapods.org/pods/LetheTableView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Installation
------------

### CocoaPods

LetheTableView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LetheTableView'
```

In any file you'd like to use LetheTableView in, don't forget to
import the framework with `import LetheTableView`.

### Manually
Download and drop `LetheTableView.swift, LetheHeaderView.swift, LetheTableViewProtocol.swift,` in your project.

Usage
------------

![LetheTableView](LetheTableView.png)

 ```swift
extension ViewController: LetheTableViewDataSource, LetheTableViewDelegate {
    func numberOfSections(in letheTableView: UITableView) -> Int {
        return 1
    }

    func letheTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headers.count
    }

    func letheTableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    func letheTableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func letheTableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = TableHeader(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
        headerView.configure(headers[section])
        return headerView
    }

    func letheTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? TableCell
        cell?.configure(UIImage(named: String(indexPath.row))!)
        return cell ?? UITableViewCell()
    }

    func letheTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    func letheTableView(_ tableView: UITableView, section: Int, didExpand header: LetheHeaderView) {

    }

    func letheTableView(_ tableView: UITableView, section: Int?, didCollapse header: LetheHeaderView) {

    }
}
```


## License

LetheTableView is available under the MIT license. See the ``LICENSE` file for more info.
