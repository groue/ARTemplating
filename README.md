ARTemplating
============

Very simplistic and un-scientific performance comparison of mustache.js in a UIWebView and GRMustache.

The idea behind this was to see if offloading the rendering of mustache templates to native code actually performed better.
If it did, the resulting HTML could be injected into a web view.
If it didn't, the render and display would be better done entirely within the webview.

The test is simply to repeatedly render a fairly trivial template. This isn't a real world test. 
The JavaScript implementation is quicker in this scenario.

In no way does this mean that the native library is bad - it's fantastic.

Of course, the fact that the webview performs better is only part of the story. A web view is obviously single threaded -
having template rendering running in the background using native code may still prove to be a useful approach.
