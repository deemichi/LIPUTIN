        <p>Lengkapi Semua Kolom untuk <strong>Registrasi</strong></p>

        <form id="form" class="m-t" role="form" action="../register/process">
            <div class="form-group has-feedback">
                <input type="text" name="fusername" id="fusername" onkeyup="cekusername()" class="form-control" placeholder="Username Pilihan Anda" required="" data-error="Masukkan Username Anda.">
                <span class="help-block with-errors pull-right"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" name="ftokoname" class="form-control" placeholder="Nama Toko/Bisnis Anda" required="" data-error="Masukkan Nama Toko/Bisnis Anda.">
                <span class="help-block with-errors pull-right"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" name="fname" class="form-control" placeholder="Nama Anda" required="" data-error="Masukkan Nama Anda.">
                <span class="help-block with-errors pull-right"></span>
            </div>
            
            <div class="form-group has-feedback">
                <input type="text" name="phone" class="form-control" placeholder="Nomor HP Aktif" required="" data-error="Masukkan Nomor HP Aktif Anda.">
                <span class="help-block with-errors pull-right"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="email" name="email" class="form-control" placeholder="Email" required="" data-remote="../email" data-error="Format Email Salah atau Email sudah terdaftar">
                <span class="help-block with-errors pull-right"></span>
            </div>
            <!--
            <div class="form-group has-feedback">
                <input type="text" name="username" class="form-control" placeholder="Nama Pengguna" required="" data-remote="../username"
                       data-error="Pilih Nama Pengguna yang lain.">
                <span class="help-block with-errors pull-right"></span>
            </div>
            -->
            <div class="form-group has-feedback">
                <input type="password" name="password" id="password" data-minlength="6" class="form-control" placeholder="Kata Sandi" required="" data-error="Masukkan Kata Sandi.">
                <span class="help-block with-errors pull-right"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="confirm_password" class="form-control" placeholder="Konfirmasi Kata Sandi" required="" data-match="#password"
                       data-error="Ketik Ulang Password dengan Benar.">
                <span class="help-block with-errors pull-right"></span>
            </div>
            <input type="hidden" name="ref" value="">
                   
            <button type="submit" class="btn btn-primary block full-width">DAFTARKAN SAYA</button>
            <br/>

            <div class="register-feedback"></div>
            <a class="btn btn-success block full-width" href="<?php echo base_url(); ?>login">LOGIN</a>
        </form>
          
        
    </div>
</div>
<script>
    $(document).ready(function () {
        $('#form').validator().on('submit', function (e) {
            if (!e.isDefaultPrevented()) {
                var FORM = $(this);
                $.ajax({
                        url: FORM.attr('action'),
                        type: "POST",
                        data: FORM.serialize(),
                        dataType: "json",
                        cache: false,
                        beforeSend: function () {
                            $('.register-feedback').html('<div class="alert alert-success flat no-border no-margin"><h4><i class="fa fa-refresh"></i> Memproses...</h4>Silakan Tunggu, sedang diproses.</div>');
                        },
                        success: function (status) {
                            if (status.status == true) {
                                $('.register-feedback').html(status.msg);
                                window.setTimeout(function () {
                                    window.location.href = status.url
                                }, 3000);
                            } else {
                                $('.register-feedback').html(status.msg);
                            }
                        }
                    }
                );
            }
            return false;
        })
    });
    
    function cekusername(){
                    var re = /^\w+$/;
                    if (!re.test($('#fusername').val())) {
                        alert('Hanya boleh huruf, angka, dan underscore');
                        $('#username').val('');
                        return false;
                    }
                    
                    $.ajax({
                type: "POST",
                url: '../auth/cekusername/'+$('#fusername').val(),
                        success: function (data) {           
                   if(data == 'none'){
                      alert('Username sudah digunakan member lain.');
                        $('#fusername').val('');
                   }
                },
                error: function () {
                    $("div#msgs").html('<p class="error">Maaf sistem kami sedang maintenance. Silakan coba beberapa saat lagi</p>');
                }
                }); 
                return false;   
                }
</script>

