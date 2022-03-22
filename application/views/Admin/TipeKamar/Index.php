<?php if ($this->session->flashdata('pesan')) : ?>
    <div class="alert alert-success">
        <?= $this->session->flashdata('pesan') ?>
    </div>
<?php endif ?>

<div class="row">
    <div class="col-md-12">
        <div class="box"> 
            <div class="box-header with-border">
                <h3 class="box-title">Tipe Kamar</h3>
                <a href="<?= base_url('index.php/Admin/TipeKamar/Add') ?>">
                    <button class="btn btn-primary btn-md pull-right">
                        <li class="fa fa-plus"> </li> Add Tipe Kamar
                    </button>
                </a>
            </div>
            <div class="box-body table-responsive">
                <table class="table table-hover" id="example1">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Tipe Kamar</th>
                            <th>Status Aktif</th>
                            <th>Option</th>
                        </tr>
                    </thead>
                    <?php
                    $no =1;
                        foreach ($datatipekamar as $tampilkan) {
                            echo "<tr>";
                            echo "<td>$no</td>";
                            echo "<td>$tampilkan->tipekamar</td>";
                            echo "<td>$tampilkan->is_active</td>";
                            echo "<td><a href=".base_url().'index.php/Admin/TipeKamar/Ubah/'.$tampilkan->idtipekamar."><button class='btn btn-primary btn-xs'>Ubah</button></a></td>";
                            echo "</tr>";
                            $no++;
                        }
                        ?>

                </table>
            </div>
        </div>
    </div>

</div>