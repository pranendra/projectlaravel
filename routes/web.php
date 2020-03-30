<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

//route CRUD
Route::get('/persediaanakhir','PersediaanAkhirController@index');
Route::get('/persediaanakhir/tambah','PersediaanAkhirController@tambah');
Route::post('/persediaanakhir/store','PersediaanAkhirController@store');
Route::get('/persediaanakhir/edit/{id}','PersediaanAkhirController@edit');
Route::post('/persediaanakhir/update','PersediaanAkhirController@update');
Route::get('/persediaanakhir/hapus/{id}','PersediaanAkhirController@hapus');
Route::get('/persediaanakhir/cari','PersediaanAkhirController@cari');