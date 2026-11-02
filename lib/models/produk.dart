// Blueprint / Struktur Data (Model) untuk merepresentasikan entitas barang dagangan kasir
class Produk {
  // --- DEKLARASI VARIABEL ATRIBUT MODEL (PROPERTIES) ---
  final int id; // Kunci unik identitas produk (Immutable/Tetap)
  final String nama; // Nama barang dagangan
  final String kategori; // Kelompok kategori: Makanan / Minuman / Snack
  final double harga; // Harga jual satuan dalam Rupiah
  final int stok; // Sisa jumlah persediaan unit barang di toko
  final String gambarUrl; // Tautan URL foto produk dari internet
  final int diskonPersen; // Nilai promo potongan harga dalam persen

  // Konstruktor konstan: Membuat objek Produk baru dengan parameter wajib
  const Produk({
    required this.id,
    required this.nama,
    required this.kategori,
    required this.harga,
    required this.stok,
    required this.gambarUrl,
    this.diskonPersen = 0, // Nilai default 0 jika tidak ada promo diskon
  });
}

// --- DEKLARASI VARIABEL LIST KOLEKSI DATA DUMMY PRODUK ---
// Kumpulan objek produk untuk simulasi transaksi katalog kasir tanpa database
final List<Produk> daftarProdukDummy = [
  const Produk(
    id: 1,
    nama: 'Kopi Susu Gula Aren 250ml',
    kategori: 'Minuman',
    harga: 18000,
    stok: 24,
    gambarUrl: 'https://images.unsplash.com/photo-1541167760496-1628856ab772?w=300',
  diskonPersen: 20, // Menambahkan diskon promo 20% khusus produk ini
),
  const Produk(
    id: 2,
    nama: 'Roti Bakar Cokelat Keju',
    kategori: 'Makanan',
    harga: 15000,
    stok: 5, // Persediaan menipis/kritis (<= 5) -> Badge warna kuning
    gambarUrl: 'https://images.unsplash.com/photo-1584776296944-ab6fb57b0bdd?w=300',
  ),
  const Produk(
    id: 3,
    nama: 'Matcha Latte Ice',
    kategori: 'Minuman',
    harga: 22000,
    stok: 0, // Persediaan habis (== 0) -> Badge merah & tombol dinonaktifkan
    gambarUrl: 'https://images.unsplash.com/photo-1536256263959-770b48d82b0a?w=300',
  ),
  const Produk(
    id: 4,
    nama: 'Nasi Goreng Banjar Spesial',
    kategori: 'Makanan',
    harga: 25000,
    stok: 12, // Persediaan aman
    gambarUrl: 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=300',
    diskonPersen: 10, // Memiliki promo diskon 10%
  ),
  const Produk(
    id: 5,
    nama: 'Kentang Goreng Crispy',
    kategori: 'Snack',
    harga: 12000,
    stok: 18,
    gambarUrl: 'https://images.unsplash.com/photo-1576107232684-1279f3908594?w=300',
  ),
  const Produk(
    id: 6,
    nama: 'Air Mineral Botol 600ml',
    kategori: 'Minuman',
    harga: 5000,
    stok: 40,
    gambarUrl: 'https://images.unsplash.com/photo-1523362628745-0c100150b504?w=300',
  ),
];