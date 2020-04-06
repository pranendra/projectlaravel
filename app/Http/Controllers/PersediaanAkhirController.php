<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PersediaanAkhirController extends Controller
{
    public function index()
    {
    	// mengambil data dari table persediaanakhir
		$persediaanakhir = DB::table('persediaanakhir')->paginate(15);
 
    	// mengirim data persediaanbarang ke view index
		return view('index',['persediaanakhir' => $persediaanakhir]);
	}
	
	// method untuk menampilkan view form tambah persediaanakhir
	public function tambah()
	{
 		// memanggil view tambah
		return view('tambah');
	}

	// method untuk insert data ke table persediaanakhir
	public function store(Request $request)
	{
		// insert data ke table persediaanakhir
		DB::table('persediaanakhir')->insert([
			'kode_barang' => $request->kode_barang,
			'nama_barang' => $request->nama_barang,
			'tanggal' => $request->tanggal,
			'harga_pokok' => $request->harga_pokok,
			'harga_jual' => $request->harga_jual,
			'jumlah_awal' => $request->jumlah_awal,
			'jumlah_penjualan' => $request->jumlah_penjualan,
			'jumlah_masuk' => $request->jumlah_masuk,
			'total' => $request->total
		]);

		// alihkan halaman ke halaman persediaanakhir
		return redirect('/persediaanakhir');
		
	}

	// method untuk edit data persediaanakhir
	public function edit($id_barang)
	{
		// mengambil data persediaanakhir berdasarkan id yang dipilih
		$persediaanakhir = DB::table('persediaanakhir')->where('id_barang',$id_barang)->get();

		// passing data persediaanakhir yang didapat ke view edit.blade.php
		return view('edit',['persediaanakhir' => $persediaanakhir]);
 
	}

	// update data persediaanakhir
	public function update(Request $request)
	{
		// update data persediaanakhir
		DB::table('persediaanakhir')->where('id_barang',$request->id_barang)->update([
			'kode_barang' => $request->kode_barang,
			'nama_barang' => $request->nama_barang,
			'tanggal' => $request->tanggal,
			'harga_pokok' => $request->harga_pokok,
			'harga_jual' => $request->harga_jual,
			'jumlah_awal' => $request->jumlah_awal,
			'jumlah_penjualan' => $request->jumlah_penjualan,
			'jumlah_masuk' => $request->jumlah_masuk,
			'total' => $request->total
	]);

	// alihkan halaman ke halaman persediaanakhir
	return redirect('/persediaanakhir');
	}

	// method untuk hapus data persediaanakhir
	public function hapus($id_barang)
	{
		// menghapus data persediaanakhir berdasarkan id yang dipilih
		DB::table('persediaanakhir')->where('id_barang',$id_barang)->delete();
		
		// alihkan halaman ke halaman persediaanakhir
		return redirect('/persediaanakhir');
	}

	public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table persediaanbarang sesuai pencarian data
		$persediaanakhir = DB::table('persediaanakhir')
		->where('nama_barang','like',"%".$cari."%")
		->paginate();
 
    		// mengirim data persediaanbarang ke view index
		return view('index',['persediaanakhir' => $persediaanakhir]);
 
	}
}