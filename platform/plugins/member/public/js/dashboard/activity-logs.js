(()=>{"use strict";var e={2425:(e,t,n)=>{n.d(t,{A:()=>r});var i=n(6798),o=n.n(i)()((function(e){return e[1]}));o.push([e.id,'.half-circle-spinner,.half-circle-spinner *{box-sizing:border-box}.half-circle-spinner{border-radius:100%;height:60px;position:relative;width:60px}.half-circle-spinner .circle{border:6px solid transparent;border-radius:100%;content:"";height:100%;position:absolute;width:100%}.half-circle-spinner .circle.circle-1{animation:half-circle-spinner-animation 1s infinite;border-top-color:#ff1d5e}.half-circle-spinner .circle.circle-2{animation:half-circle-spinner-animation 1s infinite alternate;border-bottom-color:#ff1d5e}@keyframes half-circle-spinner-animation{0%{transform:rotate(0)}to{transform:rotate(1turn)}}',""]);const r=o},6798:e=>{e.exports=function(e){var t=[];return t.toString=function(){return this.map((function(t){var n=e(t);return t[2]?"@media ".concat(t[2]," {").concat(n,"}"):n})).join("")},t.i=function(e,n,i){"string"==typeof e&&(e=[[null,e,""]]);var o={};if(i)for(var r=0;r<this.length;r++){var a=this[r][0];null!=a&&(o[a]=!0)}for(var c=0;c<e.length;c++){var l=[].concat(e[c]);i&&o[l[0]]||(n&&(l[2]?l[2]="".concat(n," and ").concat(l[2]):l[2]=n),t.push(l))}},t}},5072:(e,t,n)=>{var i,o=function(){return void 0===i&&(i=Boolean(window&&document&&document.all&&!window.atob)),i},r=function(){var e={};return function(t){if(void 0===e[t]){var n=document.querySelector(t);if(window.HTMLIFrameElement&&n instanceof window.HTMLIFrameElement)try{n=n.contentDocument.head}catch(e){n=null}e[t]=n}return e[t]}}(),a=[];function c(e){for(var t=-1,n=0;n<a.length;n++)if(a[n].identifier===e){t=n;break}return t}function l(e,t){for(var n={},i=[],o=0;o<e.length;o++){var r=e[o],l=t.base?r[0]+t.base:r[0],s=n[l]||0,d="".concat(l," ").concat(s);n[l]=s+1;var u=c(d),p={css:r[1],media:r[2],sourceMap:r[3]};-1!==u?(a[u].references++,a[u].updater(p)):a.push({identifier:d,updater:h(p,t),references:1}),i.push(d)}return i}function s(e){var t=document.createElement("style"),i=e.attributes||{};if(void 0===i.nonce){var o=n.nc;o&&(i.nonce=o)}if(Object.keys(i).forEach((function(e){t.setAttribute(e,i[e])})),"function"==typeof e.insert)e.insert(t);else{var a=r(e.insert||"head");if(!a)throw new Error("Couldn't find a style target. This probably means that the value for the 'insert' parameter is invalid.");a.appendChild(t)}return t}var d,u=(d=[],function(e,t){return d[e]=t,d.filter(Boolean).join("\n")});function p(e,t,n,i){var o=n?"":i.media?"@media ".concat(i.media," {").concat(i.css,"}"):i.css;if(e.styleSheet)e.styleSheet.cssText=u(t,o);else{var r=document.createTextNode(o),a=e.childNodes;a[t]&&e.removeChild(a[t]),a.length?e.insertBefore(r,a[t]):e.appendChild(r)}}function f(e,t,n){var i=n.css,o=n.media,r=n.sourceMap;if(o?e.setAttribute("media",o):e.removeAttribute("media"),r&&"undefined"!=typeof btoa&&(i+="\n/*# sourceMappingURL=data:application/json;base64,".concat(btoa(unescape(encodeURIComponent(JSON.stringify(r))))," */")),e.styleSheet)e.styleSheet.cssText=i;else{for(;e.firstChild;)e.removeChild(e.firstChild);e.appendChild(document.createTextNode(i))}}var v=null,m=0;function h(e,t){var n,i,o;if(t.singleton){var r=m++;n=v||(v=s(t)),i=p.bind(null,n,r,!1),o=p.bind(null,n,r,!0)}else n=s(t),i=f.bind(null,n,t),o=function(){!function(e){if(null===e.parentNode)return!1;e.parentNode.removeChild(e)}(n)};return i(e),function(t){if(t){if(t.css===e.css&&t.media===e.media&&t.sourceMap===e.sourceMap)return;i(e=t)}else o()}}e.exports=function(e,t){(t=t||{}).singleton||"boolean"==typeof t.singleton||(t.singleton=o());var n=l(e=e||[],t);return function(e){if(e=e||[],"[object Array]"===Object.prototype.toString.call(e)){for(var i=0;i<n.length;i++){var o=c(n[i]);a[o].references--}for(var r=l(e,t),s=0;s<n.length;s++){var d=c(n[s]);0===a[d].references&&(a[d].updater(),a.splice(d,1))}n=r}}}},6262:(e,t)=>{t.A=(e,t)=>{const n=e.__vccOpts||e;for(const[e,i]of t)n[e]=i;return n}}},t={};function n(i){var o=t[i];if(void 0!==o)return o.exports;var r=t[i]={id:i,exports:{}};return e[i](r,r.exports,n),r.exports}n.n=e=>{var t=e&&e.__esModule?()=>e.default:()=>e;return n.d(t,{a:t}),t},n.d=(e,t)=>{for(var i in t)n.o(t,i)&&!n.o(e,i)&&Object.defineProperty(e,i,{enumerable:!0,get:t[i]})},n.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),n.nc=void 0,(()=>{const e=Vue;var t={class:"card"},i={class:"card-header"},o={class:"card-title"},r={key:0,class:"card-body",style:{"min-height":"15rem"}},a=[(0,e.createElementVNode)("div",{class:"loading-spinner"},null,-1)],c={key:0,class:"empty"},l=(0,e.createStaticVNode)('<div class="empty-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 11a7 7 0 0 1 14 0v7a1.78 1.78 0 0 1 -3.1 1.4a1.65 1.65 0 0 0 -2.6 0a1.65 1.65 0 0 1 -2.6 0a1.65 1.65 0 0 0 -2.6 0a1.78 1.78 0 0 1 -3.1 -1.4v-7"></path><path d="M10 10l.01 0"></path><path d="M14 10l.01 0"></path><path d="M10 14a3.5 3.5 0 0 0 4 0"></path></svg></div>',1),s={class:"empty-title"},d={class:"empty-subtitle text-muted"},u={key:1,class:"list-group list-group-flush"},p={class:"row align-items-center"},f=(0,e.createElementVNode)("div",{class:"col-auto"},[(0,e.createElementVNode)("i",{class:"icon ti ti-clock"})],-1),v={class:"col text-truncate"},m={class:"text-reset d-block"},h=["title","innerHTML"],y=["href","title"],g={key:2,class:"card-footer"},b={key:1,href:"javascript:void(0)"};var k=n(5072),E=n.n(k),S=n(2425),N={insert:"head",singleton:!1};E()(S.A,N);S.A.locals;const x={components:{HalfCircleSpinner:((e,t)=>{const n=e.__vccOpts||e;for(const[e,i]of t)n[e]=i;return n})({name:"HalfCircleSpinner",props:{animationDuration:{type:Number,default:1e3},size:{type:Number,default:60},color:{type:String,default:"#fff"}},computed:{spinnerStyle(){return{height:`${this.size}px`,width:`${this.size}px`}},circleStyle(){return{borderWidth:this.size/10+"px",animationDuration:`${this.animationDuration}ms`}},circle1Style(){return Object.assign({borderTopColor:this.color},this.circleStyle)},circle2Style(){return Object.assign({borderBottomColor:this.color},this.circleStyle)}}},[["render",function(t,n,i,o,r,a){return(0,e.openBlock)(),(0,e.createElementBlock)("div",{class:"half-circle-spinner",style:(0,e.normalizeStyle)(a.spinnerStyle)},[(0,e.createElementVNode)("div",{class:"circle circle-1",style:(0,e.normalizeStyle)(a.circle1Style)},null,4),(0,e.createElementVNode)("div",{class:"circle circle-2",style:(0,e.normalizeStyle)(a.circle2Style)},null,4)],4)}]])},data:function(){return{loading:!1,activityLogs:[]}},mounted:function(){this.getActivityLogs()},methods:{getActivityLogs:function(){var e=this,t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:null;this.loading=!0,axios.get(t||"/ajax/members/activity-logs").then((function(t){var n=[];e.activityLogs.data&&(n=e.activityLogs.data),e.activityLogs=t.data,e.activityLogs.length&&(e.activityLogs.data=n.concat(e.activityLogs.data)),e.loading=!1}))}}};const B=(0,n(6262).A)(x,[["render",function(n,k,E,S,N,x){var B,_,w,L;return(0,e.openBlock)(),(0,e.createElementBlock)("div",t,[(0,e.createElementVNode)("div",i,[(0,e.createElementVNode)("h4",o,(0,e.toDisplayString)(n.__("activity_logs")),1)]),N.loading?((0,e.openBlock)(),(0,e.createElementBlock)("div",r,a)):((0,e.openBlock)(),(0,e.createElementBlock)(e.Fragment,{key:1},[null!==(B=N.activityLogs)&&void 0!==B&&B.meta&&0!==(null===(_=N.activityLogs)||void 0===_||null===(_=_.meta)||void 0===_?void 0:_.total)?(0,e.createCommentVNode)("",!0):((0,e.openBlock)(),(0,e.createElementBlock)("div",c,[l,(0,e.createElementVNode)("p",s,(0,e.toDisplayString)(n.__("no_activity_title")),1),(0,e.createElementVNode)("p",d,(0,e.toDisplayString)(n.__("no_activity_logs")),1)])),0!==(null===(w=N.activityLogs)||void 0===w||null===(w=w.meta)||void 0===w?void 0:w.total)?((0,e.openBlock)(),(0,e.createElementBlock)("div",u,[((0,e.openBlock)(!0),(0,e.createElementBlock)(e.Fragment,null,(0,e.renderList)(N.activityLogs.data,(function(t){return(0,e.openBlock)(),(0,e.createElementBlock)("div",{key:t.id,class:"list-group-item"},[(0,e.createElementVNode)("div",p,[f,(0,e.createElementVNode)("div",v,[(0,e.createElementVNode)("div",m,[(0,e.createElementVNode)("span",{title:n.$sanitize(t.description,{allowedTags:[]}),innerHTML:n.$sanitize(t.description)},null,8,h),(0,e.createElementVNode)("a",{href:"https://whatismyipaddress.com/ip/"+t.ip_address,target:"_blank",title:t.ip_address}," ("+(0,e.toDisplayString)(t.ip_address)+") ",9,y)])])])])})),128))])):(0,e.createCommentVNode)("",!0),null!==(L=N.activityLogs)&&void 0!==L&&null!==(L=L.links)&&void 0!==L&&L.next?((0,e.openBlock)(),(0,e.createElementBlock)("div",g,[N.loading?(0,e.createCommentVNode)("",!0):((0,e.openBlock)(),(0,e.createElementBlock)("a",{key:0,href:"javascript:void(0)",onClick:k[0]||(k[0]=function(e){return x.getActivityLogs(N.activityLogs.links.next)})},(0,e.toDisplayString)(n.__("load_more")),1)),N.loading?((0,e.openBlock)(),(0,e.createElementBlock)("a",b,(0,e.toDisplayString)(n.__("loading_more")),1)):(0,e.createCommentVNode)("",!0)])):(0,e.createCommentVNode)("",!0)],64))])}]]);"undefined"!=typeof vueApp&&vueApp.booting((function(e){e.component("activity-log-component",B)}))})()})();