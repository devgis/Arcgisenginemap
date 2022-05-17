/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/

//>>built
define("dojo/store/JsonRest",["../_base/xhr","../_base/lang","../json","../_base/declare","./util/QueryResults"],function(e,g,l,f,m){return f("dojo.store.JsonRest",null,{constructor:function(b){this.headers={};f.safeMixin(this,b)},headers:{},target:"",idProperty:"id",ascendingPrefix:"+",descendingPrefix:"-",get:function(b,a){a=a||{};var d=g.mixin({Accept:this.accepts},this.headers,a.headers||a);return e("GET",{url:this.target+b,handleAs:"json",headers:d})},accepts:"application/javascript, application/json",
getIdentity:function(b){return b[this.idProperty]},put:function(b,a){a=a||{};var d="id"in a?a.id:this.getIdentity(b),c="undefined"!=typeof d;return e(c&&!a.incremental?"PUT":"POST",{url:c?this.target+d:this.target,postData:l.stringify(b),handleAs:"json",headers:g.mixin({"Content-Type":"application/json",Accept:this.accepts,"If-Match":!0===a.overwrite?"*":null,"If-None-Match":!1===a.overwrite?"*":null},this.headers,a.headers)})},add:function(b,a){a=a||{};a.overwrite=!1;return this.put(b,a)},remove:function(b,
a){a=a||{};return e("DELETE",{url:this.target+b,headers:g.mixin({},this.headers,a.headers)})},query:function(b,a){a=a||{};var d=g.mixin({Accept:this.accepts},this.headers,a.headers);if(0<=a.start||0<=a.count)d.Range=d["X-Range"]="items\x3d"+(a.start||"0")+"-"+("count"in a&&Infinity!=a.count?a.count+(a.start||0)-1:"");var c=-1<this.target.indexOf("?");b&&"object"==typeof b&&(b=(b=e.objectToQuery(b))?(c?"\x26":"?")+b:"");if(a&&a.sort){var k=this.sortParam;b+=(b||c?"\x26":"?")+(k?k+"\x3d":"sort(");for(c=
0;c<a.sort.length;c++){var f=a.sort[c];b+=(0<c?",":"")+(f.descending?this.descendingPrefix:this.ascendingPrefix)+encodeURIComponent(f.attribute)}k||(b+=")")}var h=e("GET",{url:this.target+(b||""),handleAs:"json",headers:d});h.total=h.then(function(){var a=h.ioArgs.xhr.getResponseHeader("Content-Range");return a&&(a=a.match(/\/(.*)/))&&+a[1]});return m(h)}})});