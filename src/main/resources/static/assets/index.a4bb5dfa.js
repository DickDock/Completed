import{h as t}from"./http.273b183e.js";class e{static getUserList(){return t.request({url:"users",method:"GET"})}static updateUser(e){return t.request({url:"users",method:"PUT",data:e})}static delUser(e){return t.request({url:"users",method:"DELETE",data:e})}static getUserByPage(e,r){return t.request({url:"users/pages/"+e+"/"+r,method:"GET"})}static getCaptcha(){return t.request({url:"login/getCode",method:"GET"})}static login(e){return t.request({url:"login",method:"POST",data:e})}}export{e as u};
