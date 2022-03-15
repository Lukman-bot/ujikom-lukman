<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?= base_url()?>_assets/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?= $this->session->userdata('namauser') ?></p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <?php
        $akses = $this->session->userdata('role');
        if ($akses == 'ADMIN') { ?>
          <li class="header">DASHBOARD</li>
          <li class="header">MASTER DATA</li>
          <!-- Optionally, you can add icons to the links -->
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/TipeKamar/"><i class="fa fa-link"></i> <span>Tipe Kamar</span></a></li>
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/FasilitasKamar/"><i class="fa fa-link"></i> <span>Fasilitas Kamar</span></a></li>
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/FasilitasHotel/"><i class="fa fa-link"></i> <span>Fasilitas Hotel</span></a></li>
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/Kamar/"><i class="fa fa-link"></i> <span>Kamar</span></a></li>
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/User/"><i class="fa fa-link"></i> <span>Users</span></a></li>
          <li class="header">MASTER TAMU</li>
          <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Data Tamu</span></a></li>
          <li class="header">TRANSAKSI</li>
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/Reservasi/"><i class="fa fa-link"></i> <span>Data Reservasi</span></a></li>
          <li class="header">LAPORAN</li>
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/Lapreservasi"><i class="fa fa-link"></i> <span>Lap. Reservasi</span></a></li>
          <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Lap. Tamu</span></a></li>
          <li class="header">PROFILE</li>
          <li class="header">SIGN OUT</li>
        <?php } 
        ?>
        <?php 
          if ($akses == 'RECEPTIONIST') { ?>
          <li class="header">TRANSAKSI</li>
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/Reservasi/"><i class="fa fa-link"></i> <span>Data Reservasi</span></a></li>
          <li class="header">LAPORAN</li>
          <li class="active"><a href="<?= base_url() ?>index.php/Admin/Lapreservasi"><i class="fa fa-link"></i> <span>Lap. Reservasi</span></a></li>
          <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Lap. Tamu</span></a></li>
          <li class="header">PROFILE</li>
          <li class="header">SIGN OUT</li>
        <?php } 
        ?>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>