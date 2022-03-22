<?php if ($this->session->flashdata('pesan')) : ?>
    <div class="alert alert-success">
        <?= $this->session->flashdata('pesan') ?>
    </div>
<?php endif ?>
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <a href="<?= base_url() ?>index.php/Admin/TipeKamar/" class="btn btn-warning btn-sm pull-right">Kembali</a>
            </div>
            <div class="box-body">
                <form action="<?= base_url() ?>index.php/Admin/TipeKamar/Ubah/<?= $id ?>" method="POST">
                <?php
                    foreach($datatipekamar as $tampilkan) :
                ?>
                    <div class="form-group">
                        <label>Tipe Kamar</label>
                        <input type="text" class="form form-control" name="tipekamar" value="<?= $tampilkan->tipekamar ?>">
                        <div class="text-danger"><?= form_error('tipekamar') ?></div>
                    </div>
                    <div class="form-group">
                        <label>Status Aktif</label>
                        <select name="is_active" id="is_active" class="form form-control" value="<?= $tampilkan->is_active ?>">
                            <option value="Yes">YES</option>
                            <option value="No">NO</option>
                        </select>
                        <div class="text-danger"><?= form_error('is_active') ?></div>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary btn-md" type="submit">PERBAHARUI</button>
                    </div>
                <?php
                endforeach;
                ?>
                </form>
            </div>
        </div>
    </div>
</div>