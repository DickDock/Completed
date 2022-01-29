var e=Object.defineProperty,a=(a,t,l)=>(((a,t,l)=>{t in a?e(a,t,{enumerable:!0,configurable:!0,writable:!0,value:l}):a[t]=l})(a,"symbol"!=typeof t?t+"":t,l),l);import{p as t,q as l,o as s,r as o,b as r,s as i,t as n,u as d,v as u,w as c,x as m,d as p,y as h}from"./element-plus.3435c50a.js";import{a as g}from"./axios.82d3905a.js";import{_ as b}from"./index.9b31cfa2.js";import{d as f,y as U,D,J as V,K as C,M as T,x as j,I as w,W as y}from"./@vue.2aa0bb16.js";import"./lodash.1a8f78a4.js";import"./@vueuse.e60a02c1.js";import"./async-validator.5d25c98b.js";import"./@ctrl.2e36ce53.js";import"./@element-plus.a5b9fe39.js";import"./@popperjs.7a88ba6a.js";import"./normalize-wheel-es.9a219a59.js";import"./vue-router.20936002.js";const _=g.CancelToken;let v=[],z=e=>{for(let a in v)v[a].umet===e.url+"&"+e.method&&(v[a].cancel("已取消重复请求，请勿重复请求"),v.splice(a,1))};const x=new class{constructor(){a(this,"baseURL"),a(this,"timeout");this.baseURL="http://127.0.0.1/",console.log("获取到的开发状态为： false"),console.log("最终URL为： "+this.baseURL),this.timeout=3e3}getConfigParams(){return{baseURL:this.baseURL,timeout:this.timeout,headers:{}}}interceptors(e,a){e.interceptors.request.use((e=>{if(z(e),e.cancelToken=new _((a=>{v.push({umet:e.url+"&"+e.method,cancel:a})})),e.headers["Content-Type"]="application/json;charset=utf-8","get"===e.method&&e.params){let t=e.url+"?";for(const l of Object.keys(e.params)){const s=e.params[l];var a=encodeURIComponent(l)+"=";if(null!=s)if("object"==typeof s)for(const e of Object.keys(s)){t+=encodeURIComponent(l+"["+e+"]")+"="+encodeURIComponent(s[e])+"&"}else t+=a+encodeURIComponent(s)+"&"}t=t.slice(0,-1),e.params={},e.url=t}return e}),(e=>Promise.reject(e))),e.interceptors.response.use((e=>{z(e.config);const a=e.data.code||200;let l=e.data.msg||"";switch(a){case"401":l="认证失败，无法访问系统资源";break;case"403":l="当前操作没有权限";break;case"404":l="访问资源不存在";break;case"default":l="系统未知错误，请反馈给管理员";break;default:l="未知错误，请联系管理员"}return 200===a?Promise.resolve(e.data):(t.error(l),Promise.reject(e.data))}),(e=>{console.log("err"+e);let{message:a}=e;return"Network Error"==a?a="后端接口连接异常":a.includes("timeout")?a="系统接口请求超时":a.includes("Request failed with status code")&&(a="系统接口"+a.substr(a.length-3)+"异常"),t.error({message:a,duration:5e3}),Promise.reject(e)}))}request(e){const a=g.create();return e=Object.assign(this.getConfigParams(),e),this.interceptors(a,e.url),a(e)}};class q{static getUserList(){return x.request({url:"users",method:"GET"})}static updateUser(e){return x.request({url:"users",method:"PUT",data:e})}static delUser(e){return x.request({url:"users",method:"DELETE",data:e})}static getUserByPage(e,a){return x.request({url:"users/pages/"+e+"/"+a,method:"GET"})}}const k=f({name:"UserList",mounted(){this.getAllUsers()},data:()=>({tableData:[],loading:!0,editTableData:[],search:"",editDialogVisible:!1,pageSize:10,paginationData:{records:[],current:1,total:0}}),methods:{handleEdit(e,a){this.editDialogVisible=!0,this.editTableData=a},handleDelete(e,a){q.delUser(a).then((a=>{1==a.status?(this.tableData.splice(e,1),t.success("用户删除成功")):t.error("用户删除失败")})).catch((e=>{t.error(e)}))},delUserStyle:({row:e})=>0==e.status?"text-red-400":"",getAllUsers(){q.getUserByPage(this.paginationData.current,this.pageSize).then((e=>{this.paginationData=e.data,this.loading=!this.loading})).catch((e=>{console.log("err"+e)}))},updateUserHandle(e){this.editDialogVisible=!1,e?q.updateUser(this.editTableData).then((e=>{1==e.status?t.success("用户信息修改成功"):t.error("用户信息修改失败")})).catch((e=>{t.error(e)})):t.info("取消修改")},switchChange(e){q.updateUser(e).then((e=>{1==e.status?t.success("修改成功"):(t.error("修改失败"),location.reload())})).catch((e=>{t.error("修改失败"),location.reload()}))},handleSizeChange(e){console.log(`${e} items per page`),this.pageSize=e,this.loading=!this.loading,this.getAllUsers()},handleCurrentChange(e){console.log(`current page: ${e}`),this.loading=!this.loading,this.getAllUsers()}}}),P={class:""},L=y("修改"),R=y("删除"),S={class:"dialog-footer"},E=y("取消"),I=y("确定");var N=b(k,[["render",function(e,a,t,g,b,f){const y=l,_=s,v=o,z=r,x=i,q=n,k=d,N=u,A=c,O=m,Q=p,$=h;return j(),U("div",P,[D((j(),V(q,{data:e.paginationData.records.filter((a=>!e.search||a.userName.toLowerCase().includes(e.search.toLowerCase()))),style:{width:"100%"},"row-class-name":e.delUserStyle},{default:C((()=>[T(y,{prop:"userName",label:"用户名"}),T(y,{prop:"registrationDate",label:"注册日期",sortable:""}),T(y,{label:"状态",width:"70"},{default:C((a=>[T(_,{modelValue:a.row.status,"onUpdate:modelValue":e=>a.row.status=e,onChange:t=>e.switchChange(a.row),"active-color":"#13ce66","inactive-color":"#ff4949"},null,8,["modelValue","onUpdate:modelValue","onChange"])])),_:1}),T(y,{prop:"email",label:"邮箱"}),T(y,{prop:"phone",label:"手机"}),T(y,{prop:"qq",label:"QQ"}),T(y,{label:"操作"},{header:C((()=>[T(v,{modelValue:e.search,"onUpdate:modelValue":a[0]||(a[0]=a=>e.search=a),size:"small",placeholder:"搜索用户名"},null,8,["modelValue"])])),default:C((a=>[T(z,{size:"small",onClick:t=>e.handleEdit(a.$index,a.row)},{default:C((()=>[L])),_:2},1032,["onClick"]),T(x,{"confirm-button-text":"确定",confirmButtonType:"text","cancel-button-text":"取消",title:"确认删除该用户吗",onConfirm:t=>e.handleDelete(a.$index,a.row)},{reference:C((()=>[T(z,{size:"small",type:"danger",class:"bg-red-400"},{default:C((()=>[R])),_:1})])),_:2},1032,["onConfirm"])])),_:1})])),_:1},8,["data","row-class-name"])),[[$,e.loading]]),T(A,{modelValue:e.editDialogVisible,"onUpdate:modelValue":a[9]||(a[9]=a=>e.editDialogVisible=a),title:"更新用户信息"},{footer:C((()=>[w("span",S,[T(z,{onClick:a[7]||(a[7]=a=>e.updateUserHandle(!1))},{default:C((()=>[E])),_:1}),T(z,{onClick:a[8]||(a[8]=a=>e.updateUserHandle(!0))},{default:C((()=>[I])),_:1})])])),default:C((()=>[T(N,{ref:"editDataForm",model:e.editTableData,"label-width":"80px"},{default:C((()=>[T(k,{label:"用户名"},{default:C((()=>[T(v,{modelValue:e.editTableData.userName,"onUpdate:modelValue":a[1]||(a[1]=a=>e.editTableData.userName=a)},null,8,["modelValue"])])),_:1}),T(k,{label:"注册日期"},{default:C((()=>[T(v,{modelValue:e.editTableData.registrationDate,"onUpdate:modelValue":a[2]||(a[2]=a=>e.editTableData.registrationDate=a),disabled:""},null,8,["modelValue"])])),_:1}),T(k,{label:"邮箱"},{default:C((()=>[T(v,{modelValue:e.editTableData.email,"onUpdate:modelValue":a[3]||(a[3]=a=>e.editTableData.email=a)},null,8,["modelValue"])])),_:1}),T(k,{label:"手机"},{default:C((()=>[T(v,{modelValue:e.editTableData.phone,"onUpdate:modelValue":a[4]||(a[4]=a=>e.editTableData.phone=a)},null,8,["modelValue"])])),_:1}),T(k,{label:"QQ"},{default:C((()=>[T(v,{modelValue:e.editTableData.qq,"onUpdate:modelValue":a[5]||(a[5]=a=>e.editTableData.qq=a)},null,8,["modelValue"])])),_:1}),T(k,{label:"状态"},{default:C((()=>[T(_,{modelValue:e.editTableData.status,"onUpdate:modelValue":a[6]||(a[6]=a=>e.editTableData.status=a),"inline-prompt":"","active-text":"启","inactive-text":"封"},null,8,["modelValue"])])),_:1})])),_:1},8,["model"])])),_:1},8,["modelValue"]),T(Q,null,{default:C((()=>[T(O,{currentPage:e.paginationData.current,"onUpdate:currentPage":a[10]||(a[10]=a=>e.paginationData.current=a),"page-sizes":[10,20,50,100,200,500],"page-size":e.pageSize,layout:"total, sizes, prev, pager, next, jumper",total:e.paginationData.total,"hide-on-single-page":!0,onSizeChange:e.handleSizeChange,onCurrentChange:e.handleCurrentChange},null,8,["currentPage","page-size","total","onSizeChange","onCurrentChange"])])),_:1})])}]]);export{N as default};
