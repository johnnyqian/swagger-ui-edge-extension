window.onload = function() {
  document.getElementById("swagger-ui").onclick = function (e) {
    if (e.target.className == "download-url-button button") {
      var url = document.getElementsByClassName("download-url-input")[0].value
      chrome.storage.sync.set({'url': url})
    }
  }

  chrome.storage.sync.get('url', function (items) {
    var url = items.url || "https://petstore.swagger.io/v2/swagger.json"
    const ui = SwaggerUIBundle({
      url: url,
      dom_id: '#swagger-ui',
      deepLinking: true,
      presets: [
        SwaggerUIBundle.presets.apis,
        SwaggerUIStandalonePreset
      ],
      plugins: [
        SwaggerUIBundle.plugins.DownloadUrl
      ],
      layout: "StandaloneLayout"
    })

    window.ui = ui
  })
}
