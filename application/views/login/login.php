            <p>Silakan Masuk untuk ke Member Area</p>
            <p style="display:none"><strong>Disarankan Menggunakan Mozilla Firefox</strong></p>
            <form id="form" class="m-t" role="form" action="../login/process">
                <div class="form-group has-feedback">
                    <input type="email" name="email" class="form-control" placeholder="Email" required="" data-error="Masukkan Email">
                    <span class="help-block with-errors pull-right"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password" class="form-control" placeholder="Kata Sandi" required="" data-error="Masukkan Kata Sandi">
                    <input type="hidden" name="ref" value="">
                    <span class="help-block with-errors pull-right"></span>
                </div>
                <button type="submit" class="btn btn-primary block full-width">LOGIN</button>
                <br/>
                <div class="login-feedback"></div>
                <a class="btn btn-danger block full-width" href="lupa_password"><small>LUPA PASSWORD</small></a>
                <br/>
                <a class="btn btn-success block full-width" href="register">DAFTAR</a>
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
                                $('.login-feedback').html('<div class="alert alert-success flat no-border no-margin"><h4><i class="fa fa-refresh"></i> Memproses...</h4>Silakan Tunggu, sedang diproses.</div>');
                            },
                            success: function (status) {
                                if (status.is_authorized == true) {
                                    $('.login-feedback').html(status.msg);
                                    window.setTimeout(function () {
                                        window.location.href = status.url
                                    }, 3000);
                                } else {
                                    $('.login-feedback').html(status.msg);
                                }
                            }
                        }
                    );
                }
                return false;
            })
        });
   </script>