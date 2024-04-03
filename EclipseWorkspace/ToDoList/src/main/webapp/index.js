function deleted() {
	alert("Task Completed");
};
function change(p) {
	document.getElementById("td" + p).classList.remove("danger");
	document.getElementById("td" + p).classList.add("success");
}
function deleted(p) {
	document.getElementById("td" + p).classList.remove("success");
	document.getElementById("td" + p).classList.add("successd");
}
