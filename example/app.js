// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel();
win.add(label);
win.open();

// TODO: write your module tests here
var TiExtendView = require('be.k0suke.tiextendview');
Ti.API.info("module is => " + TiExtendView);

var scrollableView = Ti.UI.createScrollableView({
	views: [
		Ti.UI.createView({
			backgroundColor: 'red'
		}),
		Ti.UI.createView({
			backgroundColor: 'green'
		}),
		Ti.UI.createView({
			backgroundColor: 'blue'
		})
	],
	showPagingControl: true,
	pagingControlCurrentIndicatorColor: 'red',
	pagingControlIndicatorColor: 'green'
});
win.add(scrollableView);