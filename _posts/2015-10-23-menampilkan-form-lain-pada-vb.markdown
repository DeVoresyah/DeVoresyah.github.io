---
layout: post
title:  "Menampilkan Form Lain Pada Visual Basic"
date:   2015-10-23 21:15
categories: article
tags:
- Visual Basic
---
<img class="ui centered big image" src="/img/article/menampilkan-form-lain-pada-vb.png"/>
<p>Didalam Visual Basic, kita bisa menggunakan sebuah perintah untuk memanggil form lain dari suatu form. Misalnya terdapat 2 form yaitu form1 dan form2, secara default form1 yang pertama muncul. Kemudian ingin membuat fungsi untuk memunculkan form2 dari form1, bisa dilakukan dengan tombol maupun saat form1 terbuka.</p>

<p>Mari kita coba buat aplikasi sederhana untuk memanggil form lain, siapkan komponen-komponen yang harus ada di bawah ini</p>

<!--excerpt-->

<h3 class="ui header">Komponen :</h3>
<ul class="ui list">
	<li>1 Timer</li>
	<li>1 ProgressBar</li>
	<li>1 Button</li>
	<li>1 Label</li>
</ul>

<p>Tambah komponen di atas ke dalam form pada project visual basic Anda dan atur tata letak sesuai keinginan. Contohnya seperti pada gambar berikut : <br/> <img class="ui centered medium image" src="/img/article/01/tata-letak.png"/></p>

<p>Ubah pengaturan <code>Timer</code> pada <b>Properties</b> menjadi :</p>
<div class="ui grid">
<div class="six wide column">
<table class="ui basic table">
	<tbody>
		<tr>
			<td>Enabled</td>
			<td>False</td>
		</tr>
		<tr>
			<td>Interval</td>
			<td>100</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<br/>
<p>Klik 2x pada <code>Button1</code> sehingga muncul form codenya, kemudian masukkan kode berikut :
<pre>Timer1.Start()</pre>
Sehingga fungsi dari button menjadi seperti ini :
<pre>
Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    Timer1.Start()
End Sub
</pre>
</p>

<p>Lalu klik 2x pada <code>Timer1</code>, ubah agar menjadi :
<pre>
Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
    If ProgressBar1.Value < ProgressBar1.Maximum Then
        'Jika Value dari progressbar belum mencapai value maximum
        'Maka jalankan perintah ini
        Label1.Text = "Loading ..." 'Text dari Label1 Diubah
        ProgressBar1.Increment(+1) 'Value dari progress bar terus ditambah
    ElseIf ProgressBar1.Value = ProgressBar1.Maximum Then
        'Jika Value dari progressbar telah mencapai value maximum
        'Maka jalankan perintah ini
        Label1.Text = "Loading Selesai" 'Text dari Label1 Diubah
        Timer1.Stop() 'Timer1 dihentikan agar tidak berulang lagi
    End If
End Sub
</pre>
</p>

<p>Sekarang coba test aplikasinya dengan debugging, klik tombol nya untuk memluai progressbar agar berjalan. Saya sudah menyediakan contoh Source Codenya yang dapat diunduh gratis dibawah ini.</p>
<center>
<div class="ui vertical animated primary button" tabindex="0">
  <div class="visible content"><i class="fa fa-code"></i> Source Code</div>
  <div class="hidden content" onclick="window.open('http://links4btc.blogspot.com/p/go.html?url=IGh0dHA6Ly9nb28uZ2wvVWEwWWdC','_blank');">
  	<i class="fa fa-download"></i> Download
  </div>
</div>
</center>