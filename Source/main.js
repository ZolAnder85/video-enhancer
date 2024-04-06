const groupArray = document.querySelectorAll("[collapsible]");

for (const group of groupArray) {
	group.firstElementChild.addEventListener("click", event => {
		if (group.classList.contains("collapsed")) {
			group.classList.remove("collapsed");
		} else {
			group.classList.add("collapsed");
		}
		event.stopPropagation();
		event.preventDefault();
	});
}

const rowArray = document.querySelectorAll("[combined]");

for (const row of rowArray) {
	const slider = row.children[1];
	const numeric = row.children[2];
	slider.addEventListener("input", event => {
		numeric.value = slider.value;
	});
	numeric.addEventListener("input", event => {
		slider.value = numeric.value;
		numeric.value = slider.value;
	});
}

document.body.addEventListener("keydown", event => {
	if (event.key == "q") {
		if (event.metaKey) {
			GoTerminate();
		}
	}
	if (document.body == document.activeElement) {
		event.stopPropagation();
		event.preventDefault();
	}
});