 <?php
 
 $nis = $_GET['id'];
 $sql = $koneksi->query("delete from tb_anggota where nis = '$nis'");

 if ($sql) {
 
 ?>
 
 
	<script type="text/javascript">
	alert("Data Berhasil Dihapus");
	window.location.href="?page=anggota";
	</script>
	
 <?php
 
 }
 
 ?>