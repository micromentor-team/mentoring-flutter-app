# Flutter Web Accessibility Research

Micromentor is required to meet certain a11y standards for clients for continual delivery of our product to their users. These requirements have not been clearly defined in our contracts. They seem to be centered around the federal government's [ADA requirements](https://www.ada.gov/resources/web-guidance/), and following WCAG and Section 508 guidelines (mentioned in that page) should be sufficient.

Flutter Web uses WebGL via CanvasKit to render a `<canvas>` HTML element on the page, along with a mix of some other HTML elements when needed. Open source web a11y tools like [WAVE](https://chrome.google.com/webstore/detail/wave-evaluation-tool/jbbplnpkjmmeebjpijfedlgcdilocofh)'s and [axe-core](https://chrome.google.com/webstore/detail/axe-devtools-web-accessib/lhdoppojpmngadmnindnejefpokejbdd)'s chrome extensions don't appear to check a11y features inside a `<canvas>` element.

Some specific a11y features we need to support include:
- General screen reader compatibility
- Color contrast
- Ability to navigate site and submit forms without using a mouse
- Logical/reasonable tab order
- Changing focus of screen reader to an alert when the alert appears
- (in HTML) semantic coherence, e.g. only having one `<header>` per page, or grouping related content in a `<div>`

## Questions we need to answer
Here are some specific questions we need to answer:
1. Can Flutter be used to create accessible web applications which follow WCAG and the federal government's Section 508 guidelines?
2. Does the `HTMLRenderer` have superior a11y features over the `CanvasKit` renderer, or vice versa?
3. Are there any third-party accessibility tools that are particularly useful for Flutter web? (e.g. https://pub.dev/packages/accessibility_tools)
4. Are there any specific features or outstanding bugs related to web accessibility that we should track?
5. What tools can be used to ensure we meet these WCAG/Section 508 guidelines? (e.g. WAVE or axe-core)

Questions not considered in this exploratory research:
1. Which specific Flutter API features are used to meet WCAG/Section 508?
2. (question for client's legal/a11y team or Mercy Corp's legal team) Does our app need to be 100% accessible on web if we provide an accessible mobile application which exposes the same content?

## MM Investigation in June 2023

Here are some notes about Flutter a11y, and open source or live flutter apps where this can be tested.

In addition to this investigation, we will reach out to the Google team to see if they can connect us with someone who works specifically on Flutter Web and has worked with a11y. When we implement these changes, it may be necessary to contract a web a11y consultant who has experience working with WebGL/Canvas/Flutter, or spend a few weeks of developer time getting someone up to speed on this poorly documented area of web development.

--- 

The following resources about accessibility are likely important.  
- [Flutter official accessibility doc](https://docs.flutter.dev/accessibility-and-localization/accessibility)
- A [flutter accessibility tool package](https://pub.dev/packages/accessibility_tools). Unclear if this has any web features, or if it's only for Flutter mobile apps.

We can refer to Flutter's [open issues on their github](https://github.com/flutter/flutter/issues?q=is%3Aopen+label%3A%22a%3A+accessibility%22+web+sort%3Acomments-desc) which mention accessibillity. it's probably worth looking at the [closed issues](https://github.com/flutter/flutter/issues?q=is%3Aclosed+label%3A%22a%3A+accessibility%22+web+sort%3Acomments-desc+) to see what has been implemented.

### Live web apps for testing
Here are some live apps on the web for testing from [the Flutter showcase](https://flutter.dev/showcase), just for the convenience of not having to download, configure and run them locally.

Here's a list of live SaaS apps:
- [Rive](rive.app)
- [Supernova](https://cloud.supernova.io/)
- [iRobot coding app](https://code.irobot.com/#/) (similar to MIT's Scratch)

Some apps which seem more like portfolio pieces/demos:
- [Flutter Folio](https://www.flutterfolio.com/#/?)
- [Flutter plasma demo](https://flutterplasma.dev/) (this one is cool especially once arriving in [the showroom](https://flutterplasma.dev/showroom/17), the first link is a demo/animation/video)

#### WAVE and axe chrome extensions a11y testing
These apps seem to all disable zooming and scrolling, at least according to Axe Devtools. In reality, zooming and scrolling works fine in the apps i'm testing, but it is still flagged as a "Critical" error.
![Screenshot 2023-06-15 at 5 06 37 PM](https://github.com/micromentor-team/mmdata/assets/12814577/404a117f-14dc-45b4-b81f-ac2290d88484)

There's also occasionally (but not always) HTML inputs that come up on the page. This one on Supernova was flagged for a critical accessibility issue by Axe Devtools on Firefox. 
![Screenshot 2023-06-15 at 5 07 07 PM](https://github.com/micromentor-team/mmdata/assets/12814577/3b9697fa-0814-451b-ad55-fed1559b2582)

Generally speaking, every app has at least 1 critical security issue according to AXE devtools for firefox (zooming/scrolling disabled). I don't know if these actually matter, seeing how some sort of zooming/scrolling is possible. Some others have 1-3 critical issues, e.g. form inputs not having proper labels.

#### Flutter Folio password autofill/password manager
"Flutter folio" has an email input that behaves like a normal web email input, but the password input did not get recognized by chrome or lastpass' chrome extension as a password input. There was no suggested password or attempt to autocomplete, so i had to type a password in myself. This never happens for me when signing up on normal web pages. There is also no context menu that appears when i right click the input - no context menu comes up from right clicks on all of the flutter apps i tested so far (this is like the 4th one today). 

Google chrome did offer to save the password after I finished signing up. LastPass did identify that there was an input, just not a password input. If i clicked into their logo (which appears on every input on any form) i could use it to generate a password.
<img width="566" alt="Screenshot 2023-06-15 at 4 43 58 PM" src="https://github.com/micromentor-team/mmdata/assets/12814577/13bfddb3-9878-4ca4-9777-f4c210df33ba">

### Screen reader support
One finding [from the flutter docs](https://docs.flutter.dev/accessibility-and-localization/accessibility) is that Flutter only supports specific screen readers on desktop and mobile, and may not support any screen reader on linux (not clear/not mentioned in those official docs). This screen reader compatibility should be sufficient - it supports the ~5 screen readers which dominate the market. see https://webaim.org/projects/screenreadersurvey9/#primary and https://webaim.org/projects/screenreadersurvey9/#mobile for this list. It may require us to make code changes in the flutter app to properly set up semantics, but that's probably necessary for mobile a11y too. 

> For web, the following screen readers are currently supported:
> 
> Mobile browsers:
> 
> iOS - VoiceOver
> Android - TalkBack
> Desktop browsers:
> 
> MacOS - VoiceOver
> Windows - JAWs & NVDA

### CanvasKit vs HTMLRenderer

At some point, we need to explore rendering apps with CanvasKit vs HTMLRenderer. The [Flutter News app](https://flutter.dev/news) could be a good way to do this, as well as other [open source apps](https://trello.com/c/e1bOktt1/9-optional-explore-open-source-flutter-apps-to-see-best-practices). The HTML renderer still uses canvas elements, but with a greater reliance on the DOM. It's unclear if it will resolve some accessibility concerns in CanvasKit apps (if there are any).

Lottie animations use a similar technology to CanvasKit - both are [Skia products](https://skia.org/docs/user/modules/quickstart/). (“[CanvasKit](https://skia.org/docs/user/modules/canvaskit/) uses WebGL to render Skia paint commands”, [source](https://docs.flutter.dev/platform-integration/web/renderers)). [Here is a doc](https://docs.lottiefiles.com/lottie-player/components/lottie-player/wcag-2.0-aa) which describes the steps which can be taken for Lottie animations to be WCAG compatible.

It’s likely we can meet the accessibility standards needed by our clients, but it’s not clear how much work this will be once Android/iOS accessibility is set up with Semantics widgets. The short term goal here was to determine if we’d need to retain our current web platform due to accessibility. That’s still a possibility.

### Looking at disclaimers from other apps using Flutter or WebGL

Some websites may publicly tell users which parts of their website are intended to be accessible and compatible with WCAG. Attensi is one example, and [their WebGL content](https://legal.attensi.com/accessibility_statement.html) is not compatible with a11y tools on browsers.

### More resources
Here are some other resources which could be helpful:
- some context to help with [understanding the Flutter web rendering tech](https://medium.com/bina-nusantara-it-division/flutter-web-renderers-which-one-should-i-use-html-or-canvaskit-renderer-b295e6bc995b) (not focused on a11y, but is a pre-req to web a11y on flutter)
- [a developer's guide to a11y on flutter](https://theappbusiness.github.io/accessibility-guidelines/guidelines/1.3.1.html#guidance-for-flutter)
- [another blog post on a11y on flutter](https://medium.com/bancolombia-tech/accessibility-in-flutter-is-it-a-difficult-task-how-can-you-implement-it-1aea5da0c950)
