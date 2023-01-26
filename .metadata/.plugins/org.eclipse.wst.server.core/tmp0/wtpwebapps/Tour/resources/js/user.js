// uJoin submit event
function chkForm() {
	let idReg = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d~!@#$%^&*()+|=]{6,12}$/;	// 영문자, 숫자 1개이상 필수, 6~12글자
	let pwReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,20}$/;	// 영문자, 숫자, 특수기호 1개이상 필수, 8~20글자
	let nameReg = /^[가-힣]{2,6}$/;	// 한글만 가능, 2~6글자
	if (!joinFrm.id.value) {
		alert("아이디를 입력해주세요.");
		joinFrm.id.focus();
	} else if (!idReg.test(joinFrm.id.value)) {
		alert("아이디는 영문자+숫자로 6자리 이상을 사용하세요.");
		joinFrm.id.focus();
	} else if (!joinFrm.id.readOnly) {
		alert("ID 중복검사를 진행해주세요.");
		joinFrm.id.focus();
	} else if (!joinFrm.pw.value) {
		alert("비밀번호를 입력해주세요.");
		joinFrm.pw.focus();
	} else if (!pwReg.test(joinFrm.pw.value)) {
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~20자리를 사용하세요.");
		joinFrm.pw.focus();
	} else if (!joinFrm.chkpw.value) {
		alert("비밀번호를 한번 더 입력해주세요.");
		joinFrm.chkpw.focus();
	} else if (joinFrm.pw.value != joinFrm.chkpw.value) {
		alert("비밀번호를 확인해주세요.");
		joinFrm.chkpw.focus();
	} else if (!joinFrm.name.value) {
		alert("이름을 입력해주세요.");
		joinFrm.name.focus();
	} else if (!nameReg.test(joinFrm.name.value)) {
		alert("이름은 한글로 입력해주세요.");
		joinFrm.name.focus();
	} else if (!joinFrm.tel.value) {
		alert("전화번호를 입력해주세요.");
		joinFrm.tel.focus();
	} else if (joinFrm.tel.value.length < 11) {
		alert("전화번호는 - 없이 11자리로 입력해주세요.");
		joinFrm.tel.focus();
	} else {
		joinFrm.submit();
	}
}

// 뒤로가기 클릭 시 이벤트
function pageBack() {
	if (confirm("회원가입을 취소하시겠습니까?")) {
		history.back(-1);
	}
}

// uOption 버튼 이벤트
function chkOption(btn) {
	if (btn.value == "chkDrink") {
		if (frm.drink.value == 0) {
			frm.drink.value = 1;
			frm.chkDrink.style.backgroundColor = "white";
		} else {
			frm.drink.value = 0;
			frm.chkDrink.style.backgroundColor = "transparent";
		}
	} else if (btn.value == "chkToilet") {
		if (frm.toilet.value == 0) {
			frm.toilet.value = 1;
			frm.chkToilet.style.backgroundColor = "white";
		} else {
			frm.toilet.value = 0;
			frm.chkToilet.style.backgroundColor = "transparent";
		}
	} else if (btn.value == "chkMart") {
		if (frm.mart.value == 0) {
			frm.mart.value = 1;
			frm.chkMart.style.backgroundColor = "white";
		} else {
			frm.mart.value = 0;
			frm.chkMart.style.backgroundColor = "transparent";
		}
	}
}

// uLogin
// 아이디 / 비밀번호 입력여부 검사
function chkLogin() {
	if (frm.uid.value == "") {
		alert("아이디를 입력하세요.");
		frm.uid.focus();
	} else if (frm.upw.value == "") {
		alert("비밀번호를 입력하세요.")
		frm.upw.focus();
	} else {
		frm.submit();
	}
}
