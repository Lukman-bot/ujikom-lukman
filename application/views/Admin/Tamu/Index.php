<?php if ($this->session->flashdata('pesan')) : ?>
    <div class="alert alert-success">
        <?= $this->session->flashdata('pesan') ?>
    </div>
<?php endif ?>

<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <a href="<?= base_url('index.php/Admin/Tamu/Add') ?>">
                    <button class="btn btn-primary btn-md pull-right">
                        <li class="fa fa-plus"></li> Add Tamu
                    </button>
                </a>
            </div>
            <div class="box-body table-responsive">
                <table class="table table-hover" id="example1">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>NIK</th>
                            <th>Nama</th>
                            <th>Jenis Kelamin</th>
                            <th>Alamat</th>
                            <th>Nomor Telepon</th>
                            <th>Username</th>
                            <th>Member</th>
                            <th>Aktif</th>
                            <th>Photo</th>
                            <th>Option</th>
                        </tr>
                    </thead>
                    <?php
                        $no=1;
                        foreach($dataTamu as $tampilkan) {
                            echo "<tr>";
                                echo "<td>$no</td>";
                                echo "<td>$tampilkan->nik</td>";
                                echo "<td>$tampilkan->nama</td>";
                                echo "<td>$tampilkan->jeniskelamin</td>";
                                echo "<td>$tampilkan->alamat</td>";
                                echo "<td>$tampilkan->telepon</td>";
                                echo "<td>$tampilkan->username</td>";
                                echo "<td>$tampilkan->ismember</td>";
                                echo "<td>$tampilkan->is_active</td>";
                                echo "<td><img src=".base_url('upload/tamu/').$tampilkan->photo." width='100' ></td>";
                                echo "<td><a href=".base_url('index.php/Admin/Tamu/Ubah/').$tampilkan->idtamu."><button class='btn btn-primary btn-xs'><li class='fa fa-list'></li></button></a></td>";
                            echo "</tr>";
                            $no ++;
                        }
                    ?>
                </table>
            </div>
        </div>
    </div>
</div>