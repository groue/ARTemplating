ARTemplating
============

Very simplistic and un-scientific performance comparison of mustache.js in a UIWebView and GRMustache.

The idea behind this was to see if offloading the rendering of mustache templates to native code actually performed better.
If it did, the resulting HTML could be injected into a web view.
If it didn't, the render and display would be better done entirely within the webview.

The test is simply to repeatedly render a fairly trivial template. This isn't a real world test. 
The JavaScript implementation is quicker in this scenario.

In no way does this mean that the native library is bad - it's fantastic. The performance is still great and the difference
probably not noticable to the user when rendering a single template. 

My (wrong) expectation was that native would perform better, but in actual fact, the JS
engine (even within a UIWebView) performs better, rendering the added complexity of bridging native and web worlds a
bit pointless.

Of course, the fact that the webview performs better is only part of the story. A web view is obviously single threaded -
having template rendering running in the background using native code may still prove to be a useful approach.

Obviously the biggest advantage of the native library is the ability to feed templates your Objective-C models 
and data structures.
