/*
YUI 3.15.0 (build 834026e)
Copyright 2014 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/

if (typeof __coverage__ === 'undefined') { __coverage__ = {}; }
if (!__coverage__['build/autocomplete-plugin/autocomplete-plugin.js']) {
   __coverage__['build/autocomplete-plugin/autocomplete-plugin.js'] = {"path":"build/autocomplete-plugin/autocomplete-plugin.js","s":{"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0,"10":0},"b":{"1":[0,0],"2":[0,0]},"f":{"1":0,"2":0},"fnMap":{"1":{"name":"(anonymous_1)","line":1,"loc":{"start":{"line":1,"column":31},"end":{"line":1,"column":50}}},"2":{"name":"ACListPlugin","line":27,"loc":{"start":{"line":27,"column":0},"end":{"line":27,"column":30}}}},"statementMap":{"1":{"start":{"line":1,"column":0},"end":{"line":48,"column":69}},"2":{"start":{"line":25,"column":0},"end":{"line":25,"column":22}},"3":{"start":{"line":27,"column":0},"end":{"line":36,"column":1}},"4":{"start":{"line":28,"column":4},"end":{"line":28,"column":35}},"5":{"start":{"line":31,"column":4},"end":{"line":33,"column":5}},"6":{"start":{"line":32,"column":6},"end":{"line":32,"column":27}},"7":{"start":{"line":35,"column":4},"end":{"line":35,"column":63}},"8":{"start":{"line":38,"column":0},"end":{"line":42,"column":3}},"9":{"start":{"line":44,"column":0},"end":{"line":44,"column":39}},"10":{"start":{"line":45,"column":0},"end":{"line":45,"column":39}}},"branchMap":{"1":{"line":31,"type":"if","locations":[{"start":{"line":31,"column":4},"end":{"line":31,"column":4}},{"start":{"line":31,"column":4},"end":{"line":31,"column":4}}]},"2":{"line":31,"type":"binary-expr","locations":[{"start":{"line":31,"column":8},"end":{"line":31,"column":22}},{"start":{"line":31,"column":26},"end":{"line":31,"column":49}}]}},"code":["(function () { YUI.add('autocomplete-plugin', function (Y, NAME) {","","/**","Binds an AutoCompleteList instance to a Node instance.","","@module autocomplete","@submodule autocomplete-plugin","**/","","/**","Binds an AutoCompleteList instance to a Node instance.","","@example","","    Y.one('#my-input').plug(Y.Plugin.AutoComplete, {","        source: 'select * from search.suggest where query=\"{query}\"'","    });","","    // You can now access the AutoCompleteList instance at Y.one('#my-input').ac","","@class Plugin.AutoComplete","@extends AutoCompleteList","**/","","var Plugin = Y.Plugin;","","function ACListPlugin(config) {","    config.inputNode = config.host;","","    // Render by default.","    if (!config.render && config.render !== false) {","      config.render = true;","    }","","    ACListPlugin.superclass.constructor.apply(this, arguments);","}","","Y.extend(ACListPlugin, Y.AutoCompleteList, {}, {","    NAME      : 'autocompleteListPlugin',","    NS        : 'ac',","    CSS_PREFIX: Y.ClassNameManager.getClassName('aclist')","});","","Plugin.AutoComplete     = ACListPlugin;","Plugin.AutoCompleteList = ACListPlugin;","","","}, '3.15.0', {\"requires\": [\"autocomplete-list\", \"node-pluginhost\"]});","","}());"]};
}
var __cov_uGnWz4sYhR$uDINn6A44dA = __coverage__['build/autocomplete-plugin/autocomplete-plugin.js'];
__cov_uGnWz4sYhR$uDINn6A44dA.s['1']++;YUI.add('autocomplete-plugin',function(Y,NAME){__cov_uGnWz4sYhR$uDINn6A44dA.f['1']++;__cov_uGnWz4sYhR$uDINn6A44dA.s['2']++;var Plugin=Y.Plugin;__cov_uGnWz4sYhR$uDINn6A44dA.s['3']++;function ACListPlugin(config){__cov_uGnWz4sYhR$uDINn6A44dA.f['2']++;__cov_uGnWz4sYhR$uDINn6A44dA.s['4']++;config.inputNode=config.host;__cov_uGnWz4sYhR$uDINn6A44dA.s['5']++;if((__cov_uGnWz4sYhR$uDINn6A44dA.b['2'][0]++,!config.render)&&(__cov_uGnWz4sYhR$uDINn6A44dA.b['2'][1]++,config.render!==false)){__cov_uGnWz4sYhR$uDINn6A44dA.b['1'][0]++;__cov_uGnWz4sYhR$uDINn6A44dA.s['6']++;config.render=true;}else{__cov_uGnWz4sYhR$uDINn6A44dA.b['1'][1]++;}__cov_uGnWz4sYhR$uDINn6A44dA.s['7']++;ACListPlugin.superclass.constructor.apply(this,arguments);}__cov_uGnWz4sYhR$uDINn6A44dA.s['8']++;Y.extend(ACListPlugin,Y.AutoCompleteList,{},{NAME:'autocompleteListPlugin',NS:'ac',CSS_PREFIX:Y.ClassNameManager.getClassName('aclist')});__cov_uGnWz4sYhR$uDINn6A44dA.s['9']++;Plugin.AutoComplete=ACListPlugin;__cov_uGnWz4sYhR$uDINn6A44dA.s['10']++;Plugin.AutoCompleteList=ACListPlugin;},'3.15.0',{'requires':['autocomplete-list','node-pluginhost']});