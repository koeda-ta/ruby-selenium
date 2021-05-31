# ruby-selenium
1. Server on Docker:  build docker chạy selenium hub, cài thêm ruby + lib.
2. Máy thật: Cài webdriver tương ứng với trình duyệt trên máy thật.(Chrome: chromedrive,firefox: firefox geckodriver)...
3. Máy thật: Cài java + tải selenium-server-standalone-2.42.0.jar sau đó cho join vào bằng cmd KHÔNG none-root: java -jar selenium-server-standalone-2.42.0.jar -role node -browser browserName=chrome -browser browserName=firefox -hub http://iphubserver:4444/grid/register
4. chạy code ruby trên docker để cào data.
5. link: 
http://elementalselenium.com/tips/52-grid
http://selenium-release.storage.googleapis.com/index.html?path=2.42/
