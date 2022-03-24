<?php if ($this->session->flashdata('pesan')) : ?>
    <div class="alert alert-success">
        <?= $this->session->flashdata('pesan') ?>
    </div>
<?php endif ?>

<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <a href="<?= base_url('index.php/Admin/FasilitasHotel/Add') ?>">
                    <button class="btn btn-primary btn-md pull-right">
                        <li class="fa fa-plus"></li> Add Fasilitas Hotel
                    </button>
                </a>
            </div>
            <div class="box-body table-responsive">
                <table class="table table-hover" id="example1">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Fasilitas</th>
                            <th>Picture</th>
                            <th>Option</th>
                        </tr>
                    </thead>
                    <?php
                        $no=1;
                        foreach($datafasilitashotel as $tampilkan) {
                            echo "<tr>";
                                echo "<td>$no</td>";
                                echo "<td>$tampilkan->namafasilitas</td>";
                                echo "<td><img src=".base_url('upload/hotel/').$tampilkan->picture." width='100' ></td>";
                                echo "<td><a href=".base_url('index.php/Admin/FasilitasHotel/Ubah/').$tampilkan->idfasilitas."><button class='btn btn-primary btn-xs'><li class='fa fa-list'></li></button></a></td>";
                            echo "</tr>";
                            $no ++;
                        }
                    ?>
                </table>
            </div>
        </div>
    </div>
</div>