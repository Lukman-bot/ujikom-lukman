<?php if ($this->session->flashdata('pesan')) : ?>
    <div class="alert alert-success">
        <?= $this->session->flashdata('pesan') ?>
    </div>
<?php endif ?>
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header">
                <a href="<?= base_url() ?>index.php/Admin/FasilitasKamar/" class="btn btn-warning btn-sm pull-right">Kembali</a>
            </div>
            <div class="box-body">
                <form action="<?= base_url() ?>index.php/Admin/FasilitasKamar/Add" method="POST">
                <div class="form-group">
                    <label>Fasilitas Kamar</label>
                    <input type="text" class="form form-control" name="fasilitaskamar">
                    <div class="text-danger"><?= form_error('fasilitaskamar') ?></div>
                </div>
                <div class="form-group">
                    <label>Icon</label>
                    <input type="text" class="form form-control" name="icon">
                    <div class="text-danger"><?= form_error('icon') ?></div>
                </div>
                <div class="form-group">
                    <label>Status Aktif</label>
                    <select name="is_active" id="is_active" class="form form-control">
                        <option value="">-- STATUS AKTIF --</option>
                        <option value="Yes">YES</option>
                        <option value="No">NO</option>
                    </select>
                    <div class="text-danger"><?= form_error('is_active') ?></div>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary btn-md" type="submit">SIMPAN</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>