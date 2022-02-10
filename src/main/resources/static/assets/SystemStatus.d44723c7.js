import{o as e,p as a,j as s,q as t}from"./element-plus.c59191a8.js";import{_ as l}from"./index.39d41fcb.js";import{d,y as c,z as n,J as r,O as i,L as o,X as p,Q as m,H as u}from"./@vue.0dc290d0.js";import"./lodash.f5775797.js";import"./@vueuse.32d79aa1.js";import"./async-validator.5d25c98b.js";import"./@element-plus.902028f6.js";import"./@ctrl.2e36ce53.js";import"./@popperjs.7a88ba6a.js";import"./normalize-wheel-es.9a219a59.js";import"./vue-router.63697a0e.js";const v=d({name:"ioStatus",data:()=>({activeName:"first"}),methods:{handleClick(e,a){console.log(e,a)}}}),h={class:"mt-4 px-10"},f=r("div",{class:""},"网卡及硬盘",-1),b={class:"grid grid-cols-2 gap-16"},g={class:""},x=p("eth1"),k=p("eth2"),_=p("eth3"),w=p("eth4"),j={class:""},y=p("disk1"),C=p("disk2"),V=p("disk3"),N=p("disk4");var S=l(v,[["render",function(s,t,l,d,p,m){const u=e,v=a;return c(),n("div",h,[f,r("div",b,[r("div",g,[i(v,{modelValue:s.activeName,"onUpdate:modelValue":t[0]||(t[0]=e=>s.activeName=e),class:"disk-tabs",onTabClick:s.handleClick},{default:o((()=>[i(u,{label:"eth1",name:"first"},{default:o((()=>[x])),_:1}),i(u,{label:"eth2",name:"second"},{default:o((()=>[k])),_:1}),i(u,{label:"eth3",name:"third"},{default:o((()=>[_])),_:1}),i(u,{label:"eth4",name:"fourth"},{default:o((()=>[w])),_:1})])),_:1},8,["modelValue","onTabClick"])]),r("div",j,[i(v,{modelValue:s.activeName,"onUpdate:modelValue":t[1]||(t[1]=e=>s.activeName=e),class:"disk-tabs",onTabClick:s.handleClick},{default:o((()=>[i(u,{label:"disk1",name:"first"},{default:o((()=>[y])),_:1}),i(u,{label:"disk2",name:"second"},{default:o((()=>[C])),_:1}),i(u,{label:"disk3",name:"third"},{default:o((()=>[V])),_:1}),i(u,{label:"disk4",name:"fourth"},{default:o((()=>[N])),_:1})])),_:1},8,["modelValue","onTabClick"])])])])}]]);const T=d({name:"generalInformation"}),z={class:"mx-auto px-10"},U=r("div",{class:"mb-2"},[r("span",{class:""},"概览")],-1),q={class:"grid grid-cols-4 gap-4"},H={class:""},I=r("p",{class:"text-center text-2xl mb-2"},"进程总数",-1),J=r("p",{class:"text-center"},"2000",-1),L={class:""},O=r("p",{class:"text-center text-2xl mb-2"},"开放端口",-1),Q=r("p",{class:"text-center"},"2000",-1),X={class:""},A=r("p",{class:"text-center text-2xl mb-2"},"服务侦测",-1),B=r("p",{class:"text-center"},"2000",-1),D={class:""},E=r("p",{class:"text-center text-2xl mb-2"},"安全风险",-1),F=r("p",{class:"text-center"},"2000",-1);var G=l(T,[["render",function(e,a,t,l,d,p){const m=s;return c(),n("div",z,[U,r("div",q,[r("div",H,[i(m,{shadow:"hover"},{default:o((()=>[I,J])),_:1})]),r("div",L,[i(m,{shadow:"hover"},{default:o((()=>[O,Q])),_:1})]),r("div",X,[i(m,{shadow:"hover"},{default:o((()=>[A,B])),_:1})]),r("div",D,[i(m,{shadow:"hover"},{default:o((()=>[E,F])),_:1})])])])}]]);const K=d({name:"usageStatus"}),M=r("div",{class:"pl-10"},[r("span",{class:""},"状态")],-1),P={class:"grid grid-cols-4 gap-3 w-4/5 mx-auto mt-2"},R={class:""},W={class:""},Y={class:"percentage-value"},Z=r("div",{class:"mt-3"},[r("span",{class:"percentage-label"},"占用正常")],-1),$={class:""},ee={class:""},ae={class:"percentage-value"},se=r("div",{class:"mt-3"},[r("span",{class:"percentage-label"},"占用正常")],-1),te={class:""},le={class:""},de={class:"percentage-value"},ce=r("div",{class:"mt-3"},[r("span",{class:"percentage-label"},"占用正常")],-1),ne={class:""},re={class:""},ie={class:"percentage-value"},oe=r("div",{class:"mt-3"},[r("span",{class:"percentage-label"},"占用正常")],-1);var pe=l(K,[["render",function(e,a,s,l,d,p){const v=t;return c(),n(u,null,[M,r("div",P,[r("div",R,[i(v,{type:"dashboard",percentage:80,width:250,"stroke-width":24},{default:o((({percentage:e})=>[r("div",W,[r("span",Y,m(e)+"%",1)]),Z])),_:1})]),r("div",$,[i(v,{type:"dashboard",percentage:25,width:250,"stroke-width":24},{default:o((({percentage:e})=>[r("div",ee,[r("span",ae,m(e)+"%",1)]),se])),_:1})]),r("div",te,[i(v,{type:"dashboard",percentage:50,width:250,"stroke-width":24},{default:o((({percentage:e})=>[r("div",le,[r("span",de,m(e)+"%",1)]),ce])),_:1})]),r("div",ne,[i(v,{type:"dashboard",percentage:100,width:250,"stroke-width":24},{default:o((({percentage:e})=>[r("div",re,[r("span",ie,m(e)+"%",1)]),oe])),_:1})])])],64)}]]);const me=d({name:"SystemStatus"}),ue={class:""},ve=r("span",{class:"block text-4xl text-center"}," 系统使用率查看页面 ",-1),he={class:""},fe={class:""},be={class:""};var ge=l(me,[["render",function(e,a,s,t,l,d){const o=pe,p=G,m=S;return c(),n("div",ue,[ve,r("div",he,[i(o)]),r("div",fe,[i(p)]),r("div",be,[i(m)])])}]]);export{ge as default};
