import{g as e,b as t,r as n,u as o,e as r,s as i,w as s,f as a}from"./@vue.29674ac9.js";function l(n){return!!e()&&(t(n),!0)}const u="undefined"!=typeof window,c=e=>"boolean"==typeof e,f=e=>"number"==typeof e,d=()=>{};var p=Object.defineProperty,v=Object.defineProperties,w=Object.getOwnPropertyDescriptors,b=Object.getOwnPropertySymbols,y=Object.prototype.hasOwnProperty,m=Object.prototype.propertyIsEnumerable,g=(e,t,n)=>t in e?p(e,t,{enumerable:!0,configurable:!0,writable:!0,value:n}):e[t]=n;function h(e,t){var n;const o=i();var a,l;return s((()=>{o.value=e()}),(a=((e,t)=>{for(var n in t||(t={}))y.call(t,n)&&g(e,n,t[n]);if(b)for(var n of b(t))m.call(t,n)&&g(e,n,t[n]);return e})({},t),l={flush:null!=(n=null==t?void 0:t.flush)?n:"sync"},v(a,w(l)))),r(o)}function O(e,t=200,n=!0,r=!0){return function(e,t){return function(...n){e((()=>t.apply(this,n)),{fn:t,thisArg:this,args:n})}}(function(e,t=!0,n=!0){let r,i=0,s=!n;const a=()=>{r&&(clearTimeout(r),r=void 0)};return l=>{const u=o(e),c=Date.now()-i;if(a(),u<=0)return i=Date.now(),l();c>u&&(i=Date.now(),s?s=!1:l()),t&&(r=setTimeout((()=>{i=Date.now(),n||(s=!0),a(),l()}),u)),n||r||(r=setTimeout((()=>s=!0),u))}}(t,n,r),e)}function j(e,t,r={}){const{immediate:i=!0}=r,s=n(!1);let a=null;function c(){a&&(clearTimeout(a),a=null)}function f(){s.value=!1,c()}function d(...n){c(),s.value=!0,a=setTimeout((()=>{s.value=!1,a=null,e(...n)}),o(t))}return i&&(s.value=!0,u&&d()),l(f),{isPending:s,start:d,stop:f}}function P(e){var t;const n=o(e);return null!=(t=null==n?void 0:n.$el)?t:n}const T=u?window:void 0,E=u?window.document:void 0;function S(...e){let t,n,r,i;if("string"==typeof e[0]?([n,r,i]=e,t=T):[t,n,r,i]=e,!t)return d;let s=d;const u=a((()=>o(t)),(e=>{s(),e&&(e.addEventListener(n,r,i),s=()=>{e.removeEventListener(n,r,i),s=d})}),{immediate:!0,flush:"post"}),c=()=>{u(),s()};return l(c),c}function _(e,t,o={}){const{window:r=T,ignore:i}=o;if(!r)return;const s=n(!0),a=[S(r,"click",(n=>{const o=P(e),r=n.composedPath();o&&o!==n.target&&!r.includes(o)&&s.value&&(i&&i.length>0&&i.some((e=>{const t=P(e);return t&&(n.target===t||r.includes(t))}))||t(n))}),{passive:!0,capture:!0}),S(r,"pointerdown",(t=>{const n=P(e);s.value=!!n&&!t.composedPath().includes(n)}),{passive:!0})];return()=>a.forEach((e=>e()))}const D="undefined"!=typeof globalThis?globalThis:"undefined"!=typeof window?window:"undefined"!=typeof global?global:"undefined"!=typeof self?self:{},x="__vueuse_ssr_handlers__";function I({document:e=E}={}){if(!e)return n("visible");const t=n(e.visibilityState);return S(e,"visibilitychange",(()=>{t.value=e.visibilityState})),t}D[x]=D[x]||{},D[x];var z,L,R=Object.getOwnPropertySymbols,k=Object.prototype.hasOwnProperty,A=Object.prototype.propertyIsEnumerable;function F(e,t,n={}){const o=n,{window:r=T}=o,i=((e,t)=>{var n={};for(var o in e)k.call(e,o)&&t.indexOf(o)<0&&(n[o]=e[o]);if(null!=e&&R)for(var o of R(e))t.indexOf(o)<0&&A.call(e,o)&&(n[o]=e[o]);return n})(o,["window"]);let s;const u=r&&"ResizeObserver"in r,c=()=>{s&&(s.disconnect(),s=void 0)},f=a((()=>P(e)),(e=>{c(),u&&r&&e&&(s=new r.ResizeObserver(t),s.observe(e,i))}),{immediate:!0,flush:"post"}),d=()=>{c(),f()};return l(d),{isSupported:u,stop:d}}u&&(null==window?void 0:window.navigator)&&(null==(z=null==window?void 0:window.navigator)?void 0:z.platform)&&/iP(ad|hone|od)/.test(null==(L=null==window?void 0:window.navigator)?void 0:L.platform);var $=Object.defineProperty,q=Object.getOwnPropertySymbols,B=Object.prototype.hasOwnProperty,C=Object.prototype.propertyIsEnumerable,G=(e,t,n)=>t in e?$(e,t,{enumerable:!0,configurable:!0,writable:!0,value:n}):e[t]=n;function H({window:e=T}={}){if(!e)return n(!1);const t=n(e.document.hasFocus());return S(e,"blur",(()=>{t.value=!1})),S(e,"focus",(()=>{t.value=!0})),t}((e,t)=>{for(var n in t||(t={}))B.call(t,n)&&G(e,n,t[n]);if(q)for(var n of q(t))C.call(t,n)&&G(e,n,t[n])})({text:""},{top:0,left:0,bottom:0,right:0,height:0,width:0});export{f as a,c as b,F as c,j as d,O as e,I as f,H as g,h,u as i,_ as o,l as t,S as u};
