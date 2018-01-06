---
title: "Memasang Google reCAPTCHA di Halaman Web (Client-side)"
author: DeVoresyah
layout: post
date: 2018-01-06 22:35
categories: article
tags:
- Javascript
- Tutorial
---
<center>
![Google ReCaptcha](https://i0.wp.com/codeforgeek.com/wp-content/uploads/2014/12/banner2.png?resize=770%2C220&ssl=1)
</center>

Google reCaptcha biasanya digunakan untuk mengantisipasi Bot, ya. Karena biasanya orang-orang sering menggunakan Bot untuk registrasi akun secara masal dan otomatis, mengklaim reward dari faucet, dan masih banyak lagi. Selain itu, Google reCaptcha juga baik dipasang agar tidak ada data dalam jumlah besar masuk ke sistem. Maka dari itu Google reCaptcha biasa sering ditemui di halaman registrasi atau login.

<!--excerpt-->

Pada artikel ini hanya dari Client-side saja, maksudnya pemasangan pada halaman web dan proses verifikasi recaptcha pun dari Client-side dan bukan dari Server-side.

1. Silahkan masuk ke https://www.google.com/recaptcha/admin
1. Kemudian pada bagian "Register a new site" terdapat beberapa data yang harus diisi
	1. Pada bagian "Label" bisa diisi dengan domain web
	1. Kemudian pilih reCAPTCHA V2
	1. Isi domain web yang akan dipasangi google recaptcha pada bagian "Domains"
	1. Centang "Accept the reCAPTCHA Terms of Service."
1. Kemudian Register
1. Selanjutnya Anda akan diarahkan ke halaman panel web recaptcha Anda
1. Kemudian ikuti petunjuk pada bagian "Adding reCAPTCHA to your site"
1. Kemudian gunakan script berikut untuk memverifikasi captcha nya

```javascript
function verify(){
	var anti_bot = grecaptcha.getResponse();
	if (anti_bot.length == 0) {
		alert('ReCaptcha is Successfully Verified')
	} else {
		alert('ReCaptcha is Not Verified')
	}
}
```

<center>
<div class="ui vertical animated primary button" tabindex="0">
  <div class="visible content"><i class="fa fa-code"></i> Source Code</div>
  <div class="hidden content" onclick="window.open('https://gist.github.com/DeVoresyah/f9c90b4bc358877bdcb11d7827350542','_blank');">
  	<i class="fa fa-download"></i> Download
  </div>
</div>
</center>