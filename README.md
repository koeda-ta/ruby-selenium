# ruby-selenium
1. Server on Docker:  build docker chạy selenium hub, cài thêm ruby + lib.
2. Máy thật: Cài webdriver tương ứng với version trình duyệt trên máy thật.(Chrome: chromedrive,firefox: firefox geckodriver)...
3. Máy thật: Cài java + tải selenium-server-standalone.jar sau đó cho join vào bằng cmd none-root: java -jar selenium-server-standalone.jar -role node -browser browserName=chrome -hub http://iphubserver:4444/grid/register -host: ipclient
4. chạy code ruby trên docker để cào data.
5. link tham khảo: http://elementalselenium.com/tips/52-grid
6. link tải selenium-server-standalone: http://selenium-release.storage.googleapis.com/index.html?path=2.42/
7. link tải chromedrive: https://chromedriver.chromium.org/downloads
