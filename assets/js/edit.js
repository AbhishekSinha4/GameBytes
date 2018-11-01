var editButtons=document.querySelectorAll(".edit");
for(var i=0;i<editButtons.length;i++){
	editButtons[i].addEventListener("click",edit);
}
function edit(){
	document.querySelector("#"+this.id.split('_')[1]).style.display="block";
	document.querySelector("#old_"+this.id.split('_')[1]).style.display="none";
	this.removeEventListener("click",edit);
	this.textContent="Cancel";
	this.addEventListener("click",cancel);
}
function cancel(){
	document.querySelector("#"+this.id.split('_')[1]).style.display="none";
	document.querySelector("#old_"+this.id.split('_')[1]).style.display="block";
	this.removeEventListener("click",cancel);
	this.textContent="Edit";
	this.addEventListener("click",edit);
}