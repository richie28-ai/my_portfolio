'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"index.html": "a7610c33753353fe3298cdc994316ded",
"/": "a7610c33753353fe3298cdc994316ded",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"main.dart.js": "14ebc38a33d4fa922b337bdd00eec42c",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"assets/fonts/MaterialIcons-Regular.otf": "a742e78ef9d1956dbd19c1723016a3dc",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/NOTICES": "bf19f6e39bbe8fbd9c2a265e5de7e25c",
"assets/AssetManifest.json": "c4b63329e1c502e7402498e8b7a2dcd4",
"assets/AssetManifest.bin": "dedaa4edb8d8210791a760af129f3a7d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "80cfc88a25d2dc995df55919dfcd6749",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/assets/screenshots/table_clash/table_clash_3.png": "bb852fe0f95ba9d307e1bb2431c290a5",
"assets/assets/screenshots/table_clash/table_clash_1.png": "09749f0145e9824afa4fa34a97828bef",
"assets/assets/screenshots/table_clash/table_clash_7.png": "1e3e595d36218cf595ba5b3e1af43504",
"assets/assets/screenshots/table_clash/table_clash_6.png": "b87d4e47650c796ea301b7ec1584de9a",
"assets/assets/screenshots/table_clash/table_clash_5.png": "72c0b22f9075aaeaa06117b4ab42d8bb",
"assets/assets/screenshots/table_clash/table_clash_4.png": "7d496792a3d7d8cb4996fca4f6e06842",
"assets/assets/screenshots/table_clash/table_clash_2.png": "fa743c6a8a5a498551ef21e7bf1242c6",
"assets/assets/screenshots/wordly/wordly_1.png": "167a0c7c96bb876e7138a947d8fcf924",
"assets/assets/screenshots/wordly/wordly_3.png": "1ff69cc44701116f8c46aa243191fa7b",
"assets/assets/screenshots/wordly/wordly_4.png": "ad9a6bd1d368884d3611bb4967ffee7b",
"assets/assets/screenshots/wordly/wordly_2.png": "92ed83fd0d9bd63b2208a3dfed8e240a",
"assets/assets/screenshots/emi_calculator/emi_calc_1.png": "d2a89334e9ae6000e55a0eb87e07617a",
"assets/assets/screenshots/emi_calculator/emi_calc_8.png": "a1df21aa39592314a753fd2741c4896d",
"assets/assets/screenshots/emi_calculator/emi_calc_5.png": "2cb97443e2c282d17f120a313f774432",
"assets/assets/screenshots/emi_calculator/emi_calc_2.png": "02dff705011b63eff9e3d7bdb23ec88a",
"assets/assets/screenshots/emi_calculator/emi_calc_4.png": "34f348993cb45d5aceeadacbe4032bbf",
"assets/assets/screenshots/emi_calculator/emi_calc_3.png": "8302898207fd35d3e01c41ba5b9db281",
"assets/assets/screenshots/emi_calculator/emi_calc_9.png": "ebc9d83db1ddde26e1246304c41ece04",
"assets/assets/screenshots/emi_calculator/emi_calc_7.png": "413d25a9fca765c3260ba5edddc33a94",
"assets/assets/screenshots/emi_calculator/emi_calc_6.png": "f8d97ca9d7520f629925a8aa8ccc9f6a",
"assets/assets/screenshots/ask_ai/ask_ai_6.png": "caa1a4ffb41f5f1ded75e269b212c4a6",
"assets/assets/screenshots/ask_ai/ask_ai_2.png": "355eab0d9b95812652a7de7b281bcf83",
"assets/assets/screenshots/ask_ai/ask_ai_3.png": "f7c65725e99ef0920d1069062185aaed",
"assets/assets/screenshots/ask_ai/ask_ai_4.png": "627b6f961288bd50fb4d6b631691a36b",
"assets/assets/screenshots/ask_ai/ask_ai_5.png": "c89f7f7795db8817827a4f58790c24a6",
"assets/assets/screenshots/ask_ai/ask_ai_1.png": "4089ac23f9624e1de124e4149f91caf3",
"assets/assets/images/prank_pulse.png": "f68d7cbdbf84da41ec86054a02372a4d",
"assets/assets/images/wordly.png": "80cb63aaaa4ac30bb0ece71d7cdfcd7a",
"assets/assets/images/bg.png": "e3efa28299c0b2eaf3fc3492258ec183",
"assets/assets/images/bg.jpg": "ae6746abd8520ab87028386322f6e09b",
"assets/assets/images/table.png": "8b6d1ab3dacdc89a263e568e91e098e7",
"assets/assets/images/tj.png": "13e5a5e05d2560f77245ce04c72f20f5",
"assets/assets/images/outspark.png": "4067a907b05611233847d063c5a2ac56",
"assets/assets/images/emi.png": "f61b883877de2c3f3ee8eab8dfa6c5fb",
"assets/assets/images/ask_ai.png": "9e09be758051eb2ff2054221b376e33d",
"version.json": "9b818ca9511483c901bed1545384376c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "1465aa554b0a9775a1f831aa30e689e4",
"flutter_bootstrap.js": "39afd970e05a161ffd2e3c356571e0de"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
