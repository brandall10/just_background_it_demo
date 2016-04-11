Demo application for my blog post: [Just Background It!](http://www.beaucodes.com/just-background-it)

App takes message entered by the user, backgrounds writing it to a queue to be reported back asynchronously to the user.  

In addition to implementing the work from the blog post: 

* Uses [SuckerPunch](https://github.com/brandonhilkert/sucker_punch) for a job queue
* Uses [MessageBus](https://github.com/SamSaffron/message_bus) to report the results of backgrounded work to the client

To try:

1. Clone app locally
2. Bundle install
3. Rails server
4. Navigate to http://localhost:3000
