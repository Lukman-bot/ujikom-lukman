<?php if ($this->session->flashdata('pesan')) : ?>
    <div class="alert alert-success">
        <?= $this->session->flashdata('pesan') ?>
    </div>
<?php endif ?>

<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <a href="<?= base_url() ?>index.php/Admin/Kamar/Add">
                    <button class="btn btn-primary btn-md pull-right">
                        <li class="fa fa-plus"></li> Tambah Kamar
                    </button>
                </a>
            </div>
            <div class="box-body table-responsive">
                <table class="table table-hover" id="example1">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nama Kamar</th>
                            <th>Harga Kamar</th>
                            <th>Jumlah Kamar</th>
                            <th>Tipe Kamar</th>
                            <th>Option</th>
                        </tr>
                    </thead>
                    <?php
                    $no = 1;
                    foreach ($datakamar as $tampilkan) :
                        ?>
                        <tr>
                            <td><?= $no ?></td>
                            <td><?= $tampilkan->namakamar ?></td>
                            <td><?= $tampilkan->harga ?></td>
                            <td><?= $tampilkan->jumlahqty ?></td>
                            <td><?= $tampilkan->tipekamar ?></td>
                            <td>
                                <a href="<?= base_url() ?>index.php/Admin/Kamar/Ubah/<?= $tampilkan->idkamar ?>"><button class="btn btn-primary btn-sm">
                                    <li class="fa fa-edit"></li>
                                </button></a>
                                <a href="<?= base_url() ?>index.php/Admin/Kamar/Detail/<?= $tampilkan->idkamar ?>">
                                    <button class="btn btn-warning btn-xs">
                                        <li class="fa fa-list"></li>
                                    </button>
                                </a>
                            </td>
                        </tr> 
                    <?php
                    $no++;
                    endforeach;
                    ?>
                </table>
            </div>
        </div>
    </div>

</div>