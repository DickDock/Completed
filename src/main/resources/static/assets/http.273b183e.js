var e=Object.defineProperty,t=(t,o,s)=>(((t,o,s)=>{o in t?e(t,o,{enumerable:!0,configurable:!0,writable:!0,value:s}):t[o]=s})(t,"symbol"!=typeof o?o+"":o,s),s);import{v as o}from"./element-plus.a4214889.js";import{a as s}from"./axios.39719cf4.js";const r=s.CancelToken;let n=[],a=e=>{for(let t in n)n[t].umet===e.url+"&"+e.method&&(n[t].cancel("已取消重复请求，请勿重复请求"),n.splice(t,1))};const c=new class{constructor(){t(this,"baseURL"),t(this,"timeout");const e=String("false");this.baseURL="true"==e?"/api/":"/","true"==e?(console.log("获取到的开发状态变量类型为： "+typeof e),console.log("获取到的开发状态为： "+e),console.log("最终URL为： "+this.baseURL)):(console.log("当前为生产环境！"),console.log("获取到的开发状态变量类型为： "+typeof e),console.log("获取到的开发状态为： "+e),console.log("最终URL为： "+this.baseURL)),this.timeout=3e3}getConfigParams(){return{baseURL:this.baseURL,timeout:this.timeout,headers:{}}}interceptors(e,t){e.interceptors.request.use((e=>{if(a(e),e.cancelToken=new r((t=>{n.push({umet:e.url+"&"+e.method,cancel:t})})),e.headers["Content-Type"]="application/json;charset=utf-8","get"===e.method&&e.params){let t=e.url+"?";for(const o of Object.keys(e.params)){const s=e.params[o],r=encodeURIComponent(o)+"=";if(null!=s)if("object"==typeof s)for(const e of Object.keys(s)){t+=encodeURIComponent(o+"["+e+"]")+"="+encodeURIComponent(s[e])+"&"}else t+=r+encodeURIComponent(s)+"&"}t=t.slice(0,-1),e.params={},e.url=t}return e}),(e=>Promise.reject(e))),e.interceptors.response.use((e=>{a(e.config);const t=e.data.code||200;let s=e.data.msg||"";switch(t){case"401":s="认证失败，无法访问系统资源";break;case"403":s="当前操作没有权限";break;case"404":s="访问资源不存在";break;case"default":s="系统未知错误，请反馈给管理员";break;default:s="未知错误，请联系管理员"}return 200===t?Promise.resolve(e.data):(o.error(s),Promise.reject(e.data))}),(e=>{console.log("err"+e);let{message:t}=e;return"Network Error"==t?t="后端接口连接异常":t.includes("timeout")?t="系统接口请求超时":t.includes("Request failed with status code")&&(t="系统接口"+t.substr(t.length-3)+"异常"),o.error({message:t,duration:5e3}),Promise.reject(e)}))}request(e){const t=s.create();return e=Object.assign(this.getConfigParams(),e),this.interceptors(t,e.url),t(e)}};export{c as h};
