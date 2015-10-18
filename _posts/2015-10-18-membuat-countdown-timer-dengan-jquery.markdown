---
layout: post
title:  "Membuat Countdown Timer Dengan jQuery"
date:   2015-10-18 17:30:00
categories: article
tags:
- jQuery
- Javascript
---
<img class="ui centered big image" src="/img/article/countdown-timer-with-jquery.png"/>
<p>Sudah tidak asing lagi dengan jQuery, yang membantu programmer untuk menggunakan fungsi javascript dengan mudah. Kali ini saya ingin membagikan tutorial untuk membuat <b>waktu hitung mundur</b> menggunakan jQuery. Countdown timer biasanya digunakan pada situs-situs berbagi file yang mengharuskan pengunjungnya menunggu beberapa detik sebelum dapat mengunduh file yang diinginkan, dan masih banyak hal lain yang dapat dilakukan dengan countdown timer ini.</p>

<h3 class="ui header">Bahan :</h3>
<ul class="ui list">
	<li><a href="https://github.com/DeVoresyah/Countdown-Timer-With-Button-jQuery/blob/master/component.css">component.css</a></li>
	<li><a href="https://github.com/DeVoresyah/Countdown-Timer-With-Button-jQuery/blob/master/timer.min.js">timer.min.js</a></li>
</ul>

<p>Bila 2 file diatas sudah didownload jangan lupa untuk memanggil javascriptnya di atas <code>&lt;/head&gt;</code> :</p>
<pre>&lt;script src=&quot;/timer.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;</pre>
<p>Kemudian untuk css bisa melalui internal ataupun external sama saja. Mari kita lanjutkan, untuk fungsi <b>CountDown</b> nya bisa dipasang pada halaman yang akan diberikan perhitungan mundurnya.</p>
<pre>&lt;script type=&#039;text/javascript&#039;&gt;
//&lt;![CDATA[
var seconds = 10; // Berapa detik waktu mundurnya
function generate() { // Nama fungsi countdownnya
var id;
id = setInterval(function () {
if (seconds &lt; 1){
clearInterval(id);

// Perintah yang akan dijalankan
// apabila waktu sudah habis

}else {
btn.style.display = &quot;none&quot;;
menunggu.style.display = &quot;inline&quot;;
document.getElementById(&#039;tunggu&#039;).innerHTML = --seconds;
}
}, 1000);}
//]]&gt;
&lt;/script&gt;
&lt;button onclick=&quot;generate()&quot; id=&quot;btn&quot;&gt;Download&lt;/button&gt;
&lt;div id=&quot;menunggu&quot;&gt;File otomatis terunduh dalam &lt;b&gt;&lt;span id=&quot;tunggu&quot;&gt;&lt;/span&gt; detik&lt;/b&gt;&lt;/div&gt;</pre>
<p>Semoga dapat membantu apa yang sedang Anda cari, dan apabila ada kendala silahkan tinggalkan di komentar agar saya dapat menjawabnya.</p>