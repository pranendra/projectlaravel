<!DOCTYPE html>
<html>
<head>
	<title>Sistem Pengolahan Data Gudang Barang</title>
	<link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="card">
			<div class="card-body">

				<style type="text/css">
					.pagination li{
					float: left;
					list-style-type: none;
					margin:5px;
					}
				</style>
 
			<h3>Data Persediaan Akhir</h3>

			</div>
 
			<a href="./"> Kembali</a>
	
			<br/>
			<br/>
			<table class="table table-bordered table-striped table-hover">
			<form action="./store" method="post">
				{{ csrf_field() }}
				Kode Barang <input type="text" name="kode_barang" required="required"> <br/>
				Nama Barang <input type="text" name="nama_barang" required="required"> <br/>
				Tanggal <input type="date" name="tanggal" required="required"> <br/>
				Harga Pokok <input type="number" name="harga_pokok" required="required"> <br/>
				Harga Jual <input type="number" name="harga_jual" required="required"> <br/>
        		Jumlah Awal <input type="number" name="jumlah_awal" required="required"> <br/>
        		Jumlah Penjualan <input type="number" name="jumlah_penjualan" required="required"> <br/>
        		Jumlah Masuk <input type="number" name="jumlah_masuk" required="required"> <br/>
        		Total <input type="number" name="total" required="required"> <br/>
				<br>
				<input type="submit" value="Simpan Data" onclick="return confirm('apakah anda yakin?')">
				<br/>
			</form>
			</table>
			<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
			</div>
		</div>
	</div>
</body>
</html>