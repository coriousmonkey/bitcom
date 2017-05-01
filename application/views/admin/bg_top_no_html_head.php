
		<!-- Start: page-top-outer -->
		<div id="page-top-outer">
			<!-- Start: page-top -->
			<div id="page-top">
				<div id="logo">
					<a href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>asset/images/logo-login2.png" height="70" alt="" border="0" /></a>
				</div>
				<div style="float:right; padding-top:70px; color:#FFFFFF; padding-right:30px;">
					<?php echo "Selamat Datang, <b>".$nama. "</b>. | "; ?>
						<script src="<?php echo base_url(); ?>asset/js/clock.js" type="text/javascript">
						</script>
						<span id="clock">
						</span>
				</div>
			</div>
		</div>
		<div class="nav-outer-repeat">
			<!-- start nav-outer -->
			<div class="nav-outer">
				<!-- start nav -->
				<div class="nav">
					<div class="table">
						<ul class="select">
							<li>
								<a href="<?php echo base_url(); ?>aksesroot"><b>Dashboard</b></a>
								<div class="select_sub">
									<ul class="sub">
										<li>
											<a href="<?php echo base_url(); ?>aksesroot/set_akun">Pengaturan Akun Admin</a>
										</li>
										<?php if($lvl=="spradmn"){ ?>
											<li>
												<a href="<?php echo base_url(); ?>aksesroot/tambah_admin">Tambah Akun Admin</a>
											</li>
											<?php } ?>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/set_banner">Pengaturan Banner</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/logout">Log Out</a>
												</li>
									</ul>
								</div>
								<!--[if lte IE 6]>
									</td>
									</tr>
									</table>
									</a>
								<![endif]-->
							</li>
						</ul>
						<div class="nav-divider">
							&nbsp;
						</div>
						<ul class="select">
							<li>
								<a href="#nogo"><b>Produk</b><!--[if IE 7]><!--></a>
							<!--<![endif]-->
							<!--[if lte IE 6]>
								<table>
									<tr>
										<td>
										<![endif]-->
										<div class="select_sub">
											<ul class="sub">
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/lihat_produk">Lihat Semua Produk</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/tambah_produk">Tambah Produk</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/lihat_kategori_produk">Lihat Semua Kategori Produk</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/tambah_kategori_produk">Tambah Kategori Produk</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/lihat_katalog">Lihat Katalog Produk</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/tambah_katalog">Tambah Katalog Produk</a>
												</li>
											</ul>
										</div>
										<!--[if lte IE 6]>
										</td>
									</tr>
								</table>
								</a>
							<![endif]-->
							</li>
						</ul>
						<div class="nav-divider">
							&nbsp;
						</div>
						<ul class="select">
							<li>
								<a href="#nogo"><b>Member & Testimonial</b><!--[if IE 7]><!--></a>
							<!--<![endif]-->
							<!--[if lte IE 6]>
								<table>
									<tr>
										<td>
										<![endif]-->
										<div class="select_sub">
											<ul class="sub">
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/lihat_semua_member">Lihat Semua Member</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/lihat_semua_testimonial">Lihat Semua Testimonial</a>
												</li>
											</ul>
										</div>
										<!--[if lte IE 6]>
										</td>
									</tr>
								</table>
								</a>
							<![endif]-->
							</li>
						</ul>
						<div class="nav-divider">
							&nbsp;
						</div>
						<ul class="select">
							<li>
								<a href="#nogo"><b>Intermezzo</b><!--[if IE 7]><!--></a>
							<!--<![endif]-->
							<!--[if lte IE 6]>
								<table>
									<tr>
										<td>
										<![endif]-->
										<div class="select_sub">
											<ul class="sub">
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/lihat_semua_intermezzo">Lihat Semua Intermezzo</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/tambah_intermezzo">Tambah Intermezzo</a>
												</li>
											</ul>
										</div>
										<!--[if lte IE 6]>
										</td>
									</tr>
								</table>
								</a>
							<![endif]-->
							</li>
						</ul>
						<div class="nav-divider">
							&nbsp;
						</div>
						<ul class="select">
							<li>
								<a href="#nogo"><b>Histori Transaksi</b><!--[if IE 7]><!--></a>
							<!--<![endif]-->
							<!--[if lte IE 6]>
								<table>
									<tr>
										<td>
										<![endif]-->
										<div class="select_sub">
											<ul class="sub">
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/transaksi_harian">Lihat Transaksi Harian</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/transaksi_bulanan">Lihat Transaksi Bulanan</a>
												</li>
												<li>
													<a href="<?php echo base_url(); ?>aksesroot/transaksi_tahunan">Lihat Transaksi Tahunan</a>
												</li>
											</ul>
										</div>
										<!--[if lte IE 6]>
										</td>
									</tr>
								</table>
								</a>
							<![endif]-->
							</li>
						</ul>
						<div class="nav-divider">
							&nbsp;
						</div>
						<div class="clear">
						</div>
					</div>
					<div class="clear">
					</div>
				</div>
				<!-- start nav -->
			</div>
			<div class="clear">
			</div>
			<!-- start nav-outer -->
		</div>
        <div style="width: 100%;background: url(<?php echo base_url() ?>asset/images/shared/nav/repeat.jpg) repeat-x;height: 39px;background-position-y: -37px;">
            <div class="nav" style="margin-left: 47px;">
                <div style="float: left;
                font-family: Arial;
                font-size: 12px;
                height: auto;
                position: relative;
                width: 100px;
                min-width: 100px;
                z-index: 500;
                margin-top: 10px;
                margin-left: 18px;
                font-weight: bold;" >
                <a href="<?php echo base_url() ?>ci2/index.php/gci/provinsi" style="color: white; text-decoration: none;">Provinsi</a>
                </div>
                <div style="float: left;position: relative;width: 1px;height: 100%;background-color: #73737b4d;"></div>
                <div style="float: left;
                font-family: Arial;
                font-size: 12px;
                height: auto;
                position: relative;
                width: 100px;
                min-width: 100px;
                z-index: 500;
                margin-top: 10px;
                margin-left: 18px;
                font-weight: bold;" >
                <a href="<?php echo base_url() ?>ci2/index.php/gci/kota" style="color: white; text-decoration: none;">Kota</a>
                </div>
                <div style="float: left;position: relative;width: 1px;height: 100%;background-color: #73737b4d;"></div>
                <div style="float: left;
                font-family: Arial;
                font-size: 12px;
                height: auto;
                position: relative;
                width: 100px;
                min-width: 100px;
                z-index: 500;
                margin-top: 10px;
                margin-left: 18px;
                font-weight: bold;" >
                <a href="<?php echo base_url() ?>ci2/index.php/gci/kurir" style="color: white; text-decoration: none;">Kurir</a>
                </div>
                <div style="float: left;position: relative;width: 1px;height: 100%;background-color: #73737b4d;"></div>
                <div style="float: left;
                font-family: Arial;
                font-size: 12px;
                height: auto;
                position: relative;
                width: 100px;
                min-width: 100px;
                z-index: 500;
                margin-top: 10px;
                margin-left: 18px;
                font-weight: bold;" >
                <a href="<?php echo base_url() ?>ci2/index.php/gci/biayakurir" style="color: white; text-decoration: none;">Biaya Transport</a>
                </div>
                <div style="float: left;position: relative;width: 1px;height: 100%;background-color: #73737b4d;"></div>
                <div style="float: left;
                font-family: Arial;
                font-size: 12px;
                height: auto;
                position: relative;
                width: 100px;
                min-width: 100px;
                z-index: 500;
                margin-top: 10px;
                margin-left: 18px;
                font-weight: bold;" >
                <a href="<?php echo base_url() ?>ci2/index.php/gci/product" style="color: white; text-decoration: none;">Produk Revisi</a>
                </div>
            </div>
        </div>
        
        
		<!-- start nav-outer-repeat................................................... END -->