fetch('api/books')
	.then(response => response.json())
	.then(books => printJson(books))
	.then(books => console.log(books))

function printJson(obj) {
	console.time('printJson');
	var pre = document.createElement('pre');
	pre.textContent = JSON.stringify(obj, null, '\t');
	document.body.innerHTML = '';
	document.body.appendChild(pre);
	console.timeEnd('printJson');
	return obj;
}