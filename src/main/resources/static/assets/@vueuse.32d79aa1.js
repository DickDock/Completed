import{am as t,t as e,a as n,u as o,_ as i,s as r,an as a,c as u,w as s}from"./@vue.0dc290d0.js";function l(n){return!!t()&&(e(n),!0)}const c="undefined"!=typeof window,d=()=>{};function v(t){const e=r();return a((()=>{e.value=t()})),i(e)}function f(t,e=200,n=!0,i=!0){return function(t,e){return function(...n){t((()=>e.apply(this,n)),{fn:e,thisArg:this,args:n})}}(function(t,e=!0,n=!0){let i,r=0,a=!n;const u=()=>{i&&(clearTimeout(i),i=void 0)};return s=>{const l=o(t),c=Date.now()-r;if(u(),l<=0)return r=Date.now(),s();c>l&&(r=Date.now(),a?a=!1:s()),e&&(i=setTimeout((()=>{r=Date.now(),n||(a=!0),u(),s()}),l)),n||i||(i=setTimeout((()=>a=!0),l))}}(e,n,i),t)}function p(t,e,i={}){const{immediate:r=!0}=i,a=n(!1);let u=null;function s(){u&&(clearTimeout(u),u=null)}function d(){a.value=!1,s()}function v(...n){s(),a.value=!0,u=setTimeout((()=>{a.value=!1,u=null,t(...n)}),o(e))}return r&&(a.value=!0,c&&v()),l(d),{isPending:a,start:v,stop:d}}function w(t){var e;const n=o(t);return null!=(e=null==n?void 0:n.$el)?e:n}const m=c?window:void 0,b=c?window.document:void 0;function y(...t){let e,n,i,r;if("string"==typeof t[0]?([n,i,r]=t,e=m):[e,n,i,r]=t,!e)return d;let a=d;const u=s((()=>o(e)),(t=>{a(),t&&(t.addEventListener(n,i,r),a=()=>{t.removeEventListener(n,i,r),a=d})}),{immediate:!0,flush:"post"}),c=()=>{u(),a()};return l(c),c}function h(t,e,o={}){const{window:i=m}=o;if(!i)return;const r=n(!0),a=[y(i,"click",(n=>{const o=w(t);o&&o!==n.target&&!n.composedPath().includes(o)&&r.value&&e(n)}),{passive:!0,capture:!0}),y(i,"pointerdown",(e=>{const n=w(t);r.value=!!n&&!e.composedPath().includes(n)}),{passive:!0})];return()=>a.forEach((t=>t()))}const g="undefined"==typeof globalThis?void 0:globalThis,O="__vueuse_ssr_handlers__";function P(t,e,{window:o=m}={}){const i=n(""),r=u((()=>{var t;return w(e)||(null==(t=null==o?void 0:o.document)?void 0:t.documentElement)}));return s(r,(e=>{e&&o&&(i.value=o.getComputedStyle(e).getPropertyValue(t))}),{immediate:!0}),s(i,(e=>{var n;(null==(n=r.value)?void 0:n.style)&&r.value.style.setProperty(t,e)})),i}function j({document:t=b}={}){if(!t)return n("visible");const e=n(t.visibilityState);return y(t,"visibilitychange",(()=>{e.value=t.visibilityState})),e}g[O]=g[O]||{},g[O];var T,_,E=Object.getOwnPropertySymbols,S=Object.prototype.hasOwnProperty,x=Object.prototype.propertyIsEnumerable;function D(t,e,n={}){const o=n,{window:i=m}=o,r=((t,e)=>{var n={};for(var o in t)S.call(t,o)&&e.indexOf(o)<0&&(n[o]=t[o]);if(null!=t&&E)for(var o of E(t))e.indexOf(o)<0&&x.call(t,o)&&(n[o]=t[o]);return n})(o,["window"]);let a;const u=i&&"ResizeObserver"in i,c=()=>{a&&(a.disconnect(),a=void 0)},d=s((()=>w(t)),(t=>{c(),u&&i&&t&&(a=new i.ResizeObserver(e),a.observe(t,r))}),{immediate:!0,flush:"post"}),v=()=>{c(),d()};return l(v),{isSupported:u,stop:v}}c&&(null==window?void 0:window.navigator)&&(null==(T=null==window?void 0:window.navigator)?void 0:T.platform)&&/iP(ad|hone|od)/.test(null==(_=null==window?void 0:window.navigator)?void 0:_.platform);var z=Object.defineProperty,I=Object.getOwnPropertySymbols,L=Object.prototype.hasOwnProperty,R=Object.prototype.propertyIsEnumerable,k=(t,e,n)=>e in t?z(t,e,{enumerable:!0,configurable:!0,writable:!0,value:n}):t[e]=n;function A({window:t=m}={}){if(!t)return n(!1);const e=n(t.document.hasFocus());return y(t,"blur",(()=>{e.value=!1})),y(t,"focus",(()=>{e.value=!0})),e}((t,e)=>{for(var n in e||(e={}))L.call(e,n)&&k(t,n,e[n]);if(I)for(var n of I(e))R.call(e,n)&&k(t,n,e[n])})({text:""},{top:0,left:0,bottom:0,right:0,height:0,width:0});export{D as a,P as b,p as c,f as d,j as e,A as f,v as g,c as i,h as o,l as t,y as u};
