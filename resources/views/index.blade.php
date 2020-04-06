<!DOCTYPE html>
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

			<p>Cari Data Persediaan Akhir :</p>

			<div class="form-group">

			</div>
				<form action="./persediaanakhir/cari" method="GET">
					<input type="text" name="cari" placeholder="Cari Persediaan Akhir .." value="{{ old('cari') }}">
					<input type="submit" value="CARI">
				</form>
 
			<a href="./persediaanakhir/tambah"> + Tambah Persediaan Akhir</a>
	
			<br/>
			<br/>
 
			<table class="table table-bordered table-striped table-hover">
				<tr class ="bg-primary">
					<th>Kode Barang</th>
					<th>Nama Barang</th>
					<th>Tanggal</th>
					<th>Harga Pokok</th>
					<th>Harga Jual</th>
					<th>Jumlah Awal</th>
					<th>Jumlah Penjualan</th>
					<th>Jumlah Masuk</th>
            		<th>Total</th>
            		<th>Aksi</th>
				</tr>
				@foreach($persediaanakhir as $p)
				<tr>
					<td>{{ $p->kode_barang }}</td>
					<td>{{ $p->nama_barang }}</td>
					<td>{{ $p->tanggal }}</td>
					<td>{{ $p->harga_pokok }}</td>
            		<td>{{ $p->harga_jual }}</td>
            		<td>{{ $p->jumlah_awal }}</td>
            		<td>{{ $p->jumlah_penjualan }}</td>
            		<td>{{ $p->jumlah_masuk }}</td>
					<td>{{ $p->total }}</td>
					<td>
						<a href="./persediaanakhir/edit/{{ $p->id_barang }}">Edit</a>
						|
						<a onclick="return confirm('apakah anda yakin?')" href="./persediaanakhir/hapus/{{ $p->id_barang }}">Hapus</a>
					</td>
				</tr>
				@endforeach
			</table> 

			<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
			</div>
			Halaman : {{ $persediaanakhir->currentPage() }} <br/>
			Jumlah Data : {{ $persediaanakhir->total() }} <br/>
			Data Per Halaman : {{ $persediaanakhir->perPage() }} <br/>
 
 
			{{ $persediaanakhir->links() }}
		</div>
	</div>
	
</body>
</html>