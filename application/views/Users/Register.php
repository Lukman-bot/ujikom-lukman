        <div class="row">
            <div class="col-md-12">
                <div class="card mb-4 mt-4 box-shadow">
                    <div class="card-body">
                        <h3 class="text-center">REGISTER</h3>
                        <form action="<?= base_url('index.php/Auth/Register') ?>" method="POST">
                            <div class="form-group">
                                <label>NIK</label>
                                <input type="text" name="nik" class="form form-control">
                            </div>
                            <div class="form-group">
                                <label>Nama</label>
                                <input type="text" name="nama" class="form form-control">
                            </div>
                            <div class="form-group">
                                <label>Jenis Kelamin</label>
                                <select name="jeniskelamin" id="jeniskelamin" class="form form-control">
                                    <option value="">-- Pilih Jenis Kelamin --</option>
                                    <option value="laki-laki">Laki-laki</option>
                                    <option value="perempuan">Perempuan</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Alamat</label>
                                <textarea name="alamat" id="" cols="30" rows="5" class="form form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Nomor Telepon</label>
                                <input type="number" name="telepon" class="form form-control">
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" name="username" class="form form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form form-control">
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input type="password" name="confpassword" class="form form-control">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-outline-primary btn-md">REGISTER</button>
                            </div>
                            Jika sudah mempunyai Account, silahkan untuk login <a href="<?= base_url('index.php/Auth/') ?>">di sini.!</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>