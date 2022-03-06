import{n as e,o as a,i as s,p as t}from"./element-plus.a4214889.js";import{_ as l}from"./index.cb9da8cc.js";import{d as c,o as d,c as i,a as n,O as r,L as o,Z as p,Q as m,I as u}from"./@vue.29674ac9.js";import"./@vueuse.841c8c19.js";import"./async-validator.5d25c98b.js";import"./@element-plus.d61064a3.js";import"./lodash-es.96156c96.js";import"./@ctrl.2e36ce53.js";import"./@popperjs.7a88ba6a.js";import"./normalize-wheel-es.9a219a59.js";import"./axios.39719cf4.js";import"./vue-router.9e388f4a.js";const v=c({name:"ioStatus",data:()=>({activeName:"first"}),methods:{handleClick(e,a){console.log(e,a)}}}),h={class:"mt-4 px-10"},f=n("div",{class:""},"网卡及硬盘",-1),b={class:"grid grid-cols-2 gap-16"},g={class:""},x=p("eth1"),k=p("eth2"),_=p("eth3"),w=p("eth4"),j={class:""},C=p("disk1"),y=p("disk2"),V=p("disk3"),N=p("disk4");var S=l(v,[["render",function(s,t,l,c,p,m){const u=e,v=a;return d(),i("div",h,[f,n("div",b,[n("div",g,[r(v,{modelValue:s.activeName,"onUpdate:modelValue":t[0]||(t[0]=e=>s.activeName=e),class:"disk-tabs",onTabClick:s.handleClick},{default:o((()=>[r(u,{label:"eth1",name:"first"},{default:o((()=>[x])),_:1}),r(u,{label:"eth2",name:"second"},{default:o((()=>[k])),_:1}),r(u,{label:"eth3",name:"third"},{default:o((()=>[_])),_:1}),r(u,{label:"eth4",name:"fourth"},{default:o((()=>[w])),_:1})])),_:1},8,["modelValue","onTabClick"])]),n("div",j,[r(v,{modelValue:s.activeName,"onUpdate:modelValue":t[1]||(t[1]=e=>s.activeName=e),class:"disk-tabs",onTabClick:s.handleClick},{default:o((()=>[r(u,{label:"disk1",name:"first"},{default:o((()=>[C])),_:1}),r(u,{label:"disk2",name:"second"},{default:o((()=>[y])),_:1}),r(u,{label:"disk3",name:"third"},{default:o((()=>[V])),_:1}),r(u,{label:"disk4",name:"fourth"},{default:o((()=>[N])),_:1})])),_:1},8,["modelValue","onTabClick"])])])])}]]);const T=c({name:"generalInformation"}),I={class:"mx-auto px-10"},U=n("div",{class:"mb-2"},[n("span",{class:""},"概览")],-1),z={class:"grid grid-cols-4 gap-4"},L={class:""},O=n("p",{class:"text-center text-2xl mb-2"},"进程总数",-1),Q=n("p",{class:"text-center"},"2000",-1),Z={class:""},q=n("p",{class:"text-center text-2xl mb-2"},"开放端口",-1),A=n("p",{class:"text-center"},"2000",-1),B={class:""},D=n("p",{class:"text-center text-2xl mb-2"},"服务侦测",-1),E=n("p",{class:"text-center"},"2000",-1),F={class:""},G=n("p",{class:"text-center text-2xl mb-2"},"安全风险",-1),H=n("p",{class:"text-center"},"2000",-1);var J=l(T,[["render",function(e,a,t,l,c,p){const m=s;return d(),i("div",I,[U,n("div",z,[n("div",L,[r(m,{shadow:"hover"},{default:o((()=>[O,Q])),_:1})]),n("div",Z,[r(m,{shadow:"hover"},{default:o((()=>[q,A])),_:1})]),n("div",B,[r(m,{shadow:"hover"},{default:o((()=>[D,E])),_:1})]),n("div",F,[r(m,{shadow:"hover"},{default:o((()=>[G,H])),_:1})])])])}]]);const K=c({name:"usageStatus"}),M=n("div",{class:"pl-10"},[n("span",{class:""},"状态")],-1),P={class:"grid grid-cols-4 gap-3 w-4/5 mx-auto mt-2"},R={class:""},W={class:""},X={class:"percentage-value"},Y=n("div",{class:"mt-3"},[n("span",{class:"percentage-label"},"占用正常")],-1),$={class:""},ee={class:""},ae={class:"percentage-value"},se=n("div",{class:"mt-3"},[n("span",{class:"percentage-label"},"占用正常")],-1),te={class:""},le={class:""},ce={class:"percentage-value"},de=n("div",{class:"mt-3"},[n("span",{class:"percentage-label"},"占用正常")],-1),ie={class:""},ne={class:""},re={class:"percentage-value"},oe=n("div",{class:"mt-3"},[n("span",{class:"percentage-label"},"占用正常")],-1);var pe=l(K,[["render",function(e,a,s,l,c,p){const v=t;return d(),i(u,null,[M,n("div",P,[n("div",R,[r(v,{type:"dashboard",percentage:80,width:250,"stroke-width":24},{default:o((({percentage:e})=>[n("div",W,[n("span",X,m(e)+"%",1)]),Y])),_:1})]),n("div",$,[r(v,{type:"dashboard",percentage:25,width:250,"stroke-width":24},{default:o((({percentage:e})=>[n("div",ee,[n("span",ae,m(e)+"%",1)]),se])),_:1})]),n("div",te,[r(v,{type:"dashboard",percentage:50,width:250,"stroke-width":24},{default:o((({percentage:e})=>[n("div",le,[n("span",ce,m(e)+"%",1)]),de])),_:1})]),n("div",ie,[r(v,{type:"dashboard",percentage:100,width:250,"stroke-width":24},{default:o((({percentage:e})=>[n("div",ne,[n("span",re,m(e)+"%",1)]),oe])),_:1})])])],64)}]]);const me=c({name:"SystemStatus"}),ue={class:""},ve=n("span",{class:"block text-4xl text-center"}," 系统使用率查看页面 ",-1),he={class:""},fe={class:""},be={class:""};var ge=l(me,[["render",function(e,a,s,t,l,c){const o=pe,p=J,m=S;return d(),i("div",ue,[ve,n("div",he,[r(o)]),n("div",fe,[r(p)]),n("div",be,[r(m)])])}]]);export{ge as default};