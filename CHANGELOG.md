## 1.1.3 (February 6, 2019)

IMPROVEMENTS:

* Add support for sending a message using newline characters and updated the pipe functionality to also support passing in multiline files. ([@eimlav][])

the ability to pipe directly into the app instead of using -m. 

## 1.1.2 (January 31, 2019)

IMPROVEMENTS:

* Add the ability to pipe directly into the app instead of using -m. ([@eimlav][])

## 1.1.1 (January 22, 2019)

BUG FIX:

* Hash style did not work on early versions of Ruby (< 2.2). ([@TGWolf][])

## 1.1.0 (January 22, 2019)

IMPROVEMENTS:

* Made the parameter list a map to make it easier to pass different combinations of options. ([@TGWolf][])
* Added additional testing to ensure a new class instance is created. ([@TGWolf][])
* Specifying no channel will now send the message to '#general'. ([@TGWolf][])
* Added better error handling to the CLI tool. ([@TGWolf][])

## 1.0.1 (January 22, 2019)

BUG FIX:

* Missing run time dependency from spec file. ([@TGWolf][])

## 1.0.0 (January 21, 2019)

* Initial Release ([@TGWolf][])

[@TGWolf]: https://github.com/TGWolf
[@eimlav]: https://github.com/eimlav
