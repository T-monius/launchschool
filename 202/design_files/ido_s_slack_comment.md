## Ido (202) [17:57]
I'm still working through the Design Files lesson of 202 but wanted to share some things I've found helpful along the way. Before sharing this in a forum post to hopefully help future students, can you guys call out whether any of the following is totally off-base / misleading / unhelpful? Thanks!

1. If you don't have Photoshop: The Inspector in Firefox comes with a few of the key features mentioned in the Photoshop alternatives potentially saving you from needing to download & learn a new program:
- You can measure the size of objects on a page with the Measure tool. The instructions [here](https://developer.mozilla.org/en-US/docs/Tools/Measure_a_portion_of_the_page) explain how to enable it.
- The eyedropper tool lets you easily copy the hex value of a color to your clipboard. See [here](https://developer.mozilla.org/en-US/docs/Tools/Eyedropper) for more info.
- Before splurging on or learning a tool other than Photoshop, make sure it can properly interact with PSD files. GIMP, for instance, doesn't let you work effectively with the text layer of PSD files. [More info](https://wiki.gimp.org/wiki/PSD_support#Text_layers).
2. Fonts are really hard. Not having the proprietary fonts used by the projects makes "pixel perfection" almost unobtainable. If you want a fair shot at matching LS's design, look at what LS's solution sites use as backup fonts and make sure they appear in the same order in your CSS files. These fonts will NOT always be the same as the fonts suggested in the project explanations. (i.e., none of the sites appear to use Nunito as recommended and instead use Nunito Sans. One of the sites eschews the Nunito family as a backup to Avenir altogether, instead falling back directly to Helvetica).

### MDN Web Docs - https://developer.mozilla.org/en-US/docs/Tools/Measure_a_portion_of_the_page
Measure a portion of the page
New in Firefox 59.
MDN Web Docs

### Eyedropper - https://developer.mozilla.org/en-US/docs/Tools/Eyedropper
The Eyedropper tool enables you to select colors in the current page. It works like a magnifying glass over the page, enabling you to select with pixel precision. Underneath the magnifying glass it shows the color value for the current pixel using whichever scheme you've selected in Settings Inspector Default color unit: