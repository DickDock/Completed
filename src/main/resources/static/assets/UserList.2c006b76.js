import{w as e,n as a,b as t,r as l,x as o,y as s,A as i,u as n,B as r,C as d,D as u,v as c,c as p,F as m}from"./element-plus.edbf3a7c.js";import{u as h}from"./index.7727baca.js";import{_ as g}from"./index.5c077b51.js";import{d as b,c as f,a as D,O as V,L as C,F as U,K as w,I as T,o as S,Y as _}from"./@vue.964ef732.js";import"./@vueuse.20c26a78.js";import"./async-validator.5d25c98b.js";import"./@element-plus.df81abcd.js";import"./lodash-es.96156c96.js";import"./@ctrl.2e36ce53.js";import"./@popperjs.7a88ba6a.js";import"./normalize-wheel-es.9a219a59.js";import"./axios.39719cf4.js";import"./http.0a08065f.js";import"./vue-router.23e5c7e6.js";const x=b({name:"UserList",mounted(){this.getAllUsers()},data:()=>({loading:!0,editTableData:[],search:"",editDialogVisible:!1,pageSize:10,paginationData:{records:[],current:1,total:0},multipleSelection:[]}),methods:{removeRows(){e.confirm("您正在执行批量删除用户操作，该操作执行后无法撤销，是否继续？","提示",{confirmButtonText:"继续执行",cancelButtonText:"取消操作",type:"warning"}).then((()=>{const e=[];for(let a=0;a<this.multipleSelection.length;a++){const t=this.multipleSelection[a].id;e.push(t)}h.removeBatchById(e).then((e=>{1==e.status?a.success(e.msg):a.error(e.msg)}))}))},handleSelectionChange(e){this.multipleSelection=e,console.log(this.multipleSelection.length)},handleEdit(e,a){this.editDialogVisible=!0,this.editTableData=a},handleDelete(e,t){h.delUser(t).then((t=>{1==t.status?(this.tableData.splice(e,1),a.success("用户删除成功"),this.$router.go(0)):a.error("用户删除失败")})).catch((e=>{a.error(e)}))},delUserStyle:({row:e})=>0==e.status?"text-red-400":"",getAllUsers(){h.getUserByPage(this.paginationData.current,this.pageSize).then((e=>{console.log(e.data),this.paginationData=e.data,this.loading=!this.loading})).catch((e=>{console.log("err"+e)}))},updateUserHandle(e){this.editDialogVisible=!1,console.log(this.editTableData),e?h.updateUser(this.editTableData).then((e=>{1==e.status?a.success("用户信息修改成功"):a.error("用户信息修改失败")})).catch((e=>{a.error(e)})):a.info("取消修改")},switchChange(e){h.updateUser(e).then((e=>{1==e.status?a.success("修改成功"):(a.error("修改失败"),location.reload())})).catch((e=>{a.error("修改失败"),location.reload()}))},handleSizeChange(e){console.log(`${e} items per page`),this.pageSize=e,this.loading=!this.loading,this.getAllUsers()},handleCurrentChange(e){console.log(`current page: ${e}`),this.loading=!this.loading,this.getAllUsers()}}}),j=_("批量删除"),z={class:""},v=_("修改"),y=_("删除"),B={class:"dialog-footer"},q=_("取消"),k=_("确定");var A=g(x,[["render",function(e,a,h,g,b,_){const x=t,A=l,$=o,L=s,N=i,P=n,Q=r,F=d,H=u,E=c,I=p,R=m;return S(),f(T,null,[D("div",null,[V(x,{type:"danger",size:"small",onClick:a[0]||(a[0]=a=>e.removeRows())},{default:C((()=>[j])),_:1})]),D("div",z,[U((S(),w(P,{data:e.paginationData.records.filter((a=>!e.search||a.userName.toLowerCase().includes(e.search.toLowerCase()))),style:{width:"100%"},"empty-text":"数据加载中","row-class-name":e.delUserStyle,onSelectionChange:e.handleSelectionChange},{default:C((()=>[V(A,{type:"selection",width:"55"}),V(A,{prop:"userName",label:"用户名"}),V(A,{prop:"createTime",label:"注册日期",sortable:""}),V(A,{label:"状态",width:"70"},{default:C((a=>[V($,{modelValue:a.row.status,"onUpdate:modelValue":e=>a.row.status=e,onChange:t=>e.switchChange(a.row),"active-color":"#13ce66","inactive-color":"#ff4949"},null,8,["modelValue","onUpdate:modelValue","onChange"])])),_:1}),V(A,{prop:"email",label:"邮箱"}),V(A,{prop:"phone",label:"手机"}),V(A,{prop:"qq",label:"QQ"}),V(A,{label:"操作"},{header:C((()=>[V(L,{modelValue:e.search,"onUpdate:modelValue":a[1]||(a[1]=a=>e.search=a),size:"small",placeholder:"搜索用户名"},null,8,["modelValue"])])),default:C((a=>[V(x,{size:"small",onClick:t=>e.handleEdit(a.$index,a.row)},{default:C((()=>[v])),_:2},1032,["onClick"]),V(N,{"confirm-button-text":"确定",confirmButtonType:"text","cancel-button-text":"取消",title:"确认删除该用户吗",onConfirm:t=>e.handleDelete(a.$index,a.row)},{reference:C((()=>[V(x,{size:"small",type:"danger",class:"bg-red-400"},{default:C((()=>[y])),_:1})])),_:2},1032,["onConfirm"])])),_:1})])),_:1},8,["data","row-class-name","onSelectionChange"])),[[R,e.loading]]),V(H,{modelValue:e.editDialogVisible,"onUpdate:modelValue":a[10]||(a[10]=a=>e.editDialogVisible=a),title:"更新用户信息"},{footer:C((()=>[D("span",B,[V(x,{onClick:a[8]||(a[8]=a=>e.updateUserHandle(!1))},{default:C((()=>[q])),_:1}),V(x,{onClick:a[9]||(a[9]=a=>e.updateUserHandle(!0))},{default:C((()=>[k])),_:1})])])),default:C((()=>[V(F,{ref:"editDataForm",model:e.editTableData,"label-width":"80px"},{default:C((()=>[V(Q,{label:"用户名"},{default:C((()=>[V(L,{modelValue:e.editTableData.userName,"onUpdate:modelValue":a[2]||(a[2]=a=>e.editTableData.userName=a)},null,8,["modelValue"])])),_:1}),V(Q,{label:"邮箱"},{default:C((()=>[V(L,{modelValue:e.editTableData.email,"onUpdate:modelValue":a[3]||(a[3]=a=>e.editTableData.email=a)},null,8,["modelValue"])])),_:1}),V(Q,{label:"手机"},{default:C((()=>[V(L,{modelValue:e.editTableData.phone,"onUpdate:modelValue":a[4]||(a[4]=a=>e.editTableData.phone=a)},null,8,["modelValue"])])),_:1}),V(Q,{label:"QQ"},{default:C((()=>[V(L,{modelValue:e.editTableData.qq,"onUpdate:modelValue":a[5]||(a[5]=a=>e.editTableData.qq=a)},null,8,["modelValue"])])),_:1}),V(Q,{label:"密码"},{default:C((()=>[V(L,{modelValue:e.editTableData.passWord,"onUpdate:modelValue":a[6]||(a[6]=a=>e.editTableData.passWord=a),placeholder:"为空不修改密码",type:"password"},null,8,["modelValue"])])),_:1}),V(Q,{label:"状态"},{default:C((()=>[V($,{modelValue:e.editTableData.status,"onUpdate:modelValue":a[7]||(a[7]=a=>e.editTableData.status=a),"inline-prompt":"","active-text":"启","inactive-text":"封"},null,8,["modelValue"])])),_:1})])),_:1},8,["model"])])),_:1},8,["modelValue"]),V(I,{justify:"center"},{default:C((()=>[V(E,{currentPage:e.paginationData.current,"onUpdate:currentPage":a[11]||(a[11]=a=>e.paginationData.current=a),"page-sizes":[10,20,50,100,200,500],"page-size":e.pageSize,layout:"total, sizes, prev, pager, next, jumper",total:e.paginationData.total,"hide-on-single-page":!0,onSizeChange:e.handleSizeChange,onCurrentChange:e.handleCurrentChange},null,8,["currentPage","page-size","total","onSizeChange","onCurrentChange"])])),_:1})])],64)}]]);export{A as default};
