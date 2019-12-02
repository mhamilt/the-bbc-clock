/**
 * Welcome to your Workbox-powered service worker!
 *
 * You'll need to register this file in your web app and you should
 * disable HTTP caching for this file too.
 * See https://goo.gl/nhQhGp
 *
 * The rest of the code is auto-generated. Please don't update this file
 * directly; instead, make changes to your Workbox build configuration
 * and re-run your build process.
 * See https://goo.gl/2aRDsh
 */

importScripts("https://storage.googleapis.com/workbox-cdn/releases/4.3.1/workbox-sw.js");

self.addEventListener('message', (event) => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

/**
 * The workboxSW.precacheAndRoute() method efficiently caches and responds to
 * requests for URLs in the manifest.
 * See https://goo.gl/S9QRab
 */
self.__precacheManifest = [
  {
    "url": "BBC_2_Clock/BBC_2_Clock.pde",
    "revision": "ac7dbf68e17b763e543206eac606e021"
  },
  {
    "url": "BBC_2_Clock/BBCClock.pde",
    "revision": "324028b0758593b7af9bc3aa5e97e7a7"
  },
  {
    "url": "css/style.css",
    "revision": "820d4e388aeee8695a3d055de63b2efa"
  },
  {
    "url": "favicons/android-chrome-192x192.png",
    "revision": "57c58ee045efbb7df212471dc9154c48"
  },
  {
    "url": "favicons/android-chrome-512x512.png",
    "revision": "7d03aa6dd71a1014ffe1dd38f10b3476"
  },
  {
    "url": "favicons/apple-touch-icon.png",
    "revision": "a514c6e93543d3cbdcc222ef75002cf6"
  },
  {
    "url": "favicons/browserconfig.xml",
    "revision": "c86ef112dd1465b34806c7dba61e56cf"
  },
  {
    "url": "favicons/favicon-16x16.png",
    "revision": "c6c1168a74d89558bbf19538025b47e9"
  },
  {
    "url": "favicons/favicon-32x32.png",
    "revision": "046ecf84ce8bfd4357fc3390f60b31d5"
  },
  {
    "url": "favicons/favicon.ico",
    "revision": "81eb83212356362a05f3cdbaa5e29d38"
  },
  {
    "url": "favicons/mstile-150x150.png",
    "revision": "ccab19d871221e19f5990e499dd86db4"
  },
  {
    "url": "favicons/safari-pinned-tab.svg",
    "revision": "6424c2ab592b070dd7b8cfe3803f1766"
  },
  {
    "url": "images/icon_152x152.png",
    "revision": "0fb9149af9893df14a67e910fb60b428"
  },
  {
    "url": "images/icon_192x192.png",
    "revision": "236e711f79de42176e7946a2048baae7"
  },
  {
    "url": "images/icon_256x256.png",
    "revision": "42c9785e169768233fc581ced554ffae"
  },
  {
    "url": "images/icon_512x512.png",
    "revision": "04c0e7088edefddd9b1d6ffcca210f1b"
  },
  {
    "url": "images/icon_72x72.png",
    "revision": "ac05e11a18ed772c807fdca0006e8e9a"
  },
  {
    "url": "index.html",
    "revision": "159f5f56a270adc10fd6e17958eb64b7"
  },
  {
    "url": "js/BBCClock.js",
    "revision": "e7e014a80ef6c8fb56a9394d54681cfb"
  },
  {
    "url": "js/sketch.js",
    "revision": "c1d34a78675b5465fb97451beb9caf8d"
  },
  {
    "url": "manifest.json",
    "revision": "bdf9b2148c5ef52f9501e5416711e105"
  },
  {
    "url": "README.md",
    "revision": "e039f582a81ae930260b794642c67e77"
  },
  {
    "url": "service-worker.js",
    "revision": "2b77efb609ff131423e4b3a98a25ed74"
  },
  {
    "url": "workbox-config.js",
    "revision": "9274c2dab67d4f2402acc5b2b27f0d72"
  }
].concat(self.__precacheManifest || []);
workbox.precaching.precacheAndRoute(self.__precacheManifest, {});
