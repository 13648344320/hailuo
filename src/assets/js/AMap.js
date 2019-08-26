// src/assets/js/AMap.js

export default function MapLoader () {   // <-- 原作者这里使用的是module.exports,在webpack环境下可能会导致一个错误
    return new Promise((resolve, reject) => {
        // 如果已经有AMap了就开门,并将AMap对象传递给下一个方法使用,否则就创建
      if (window.AMap) {
        resolve(window.AMap);
      } else {
        var script = document.createElement('script')
        script.type = 'text/javascript'
        script.async = true
        script.src = 'http://webapi.amap.com/maps?v=1.4.15&callback=initAMap&key=28f881fbf0134fb79d16532fe22677c8'
        script.onerror = reject
        document.head.appendChild(script)
      }
      window.initAMap = () => {
        resolve(window.AMap)
      }
    })
  }