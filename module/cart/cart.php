
<?php

if (isset($_SESSION['cart'])) {
    if (isset($_POST['sbm'])) {
        if ($_SESSION) {
            
        }
        foreach ($_POST['quantity'] as $prd_id => $val) {
            $_SESSION['cart'][$prd_id] = $val;
        }
    }
    $arr = array();
    foreach ($_SESSION['cart'] as $prd_id => $qtt) {
        $arr[] = $prd_id;
    }
    $str_id = implode(", ", $arr);
    $sql = "SELECT * FROM product WHERE prd_id IN ($str_id)";
    $query = mysqli_query($conn, $sql);
?>
    <div id="my-cart">
        <div class="row">
            <div class="cart-nav-item col-lg-7 col-md-7 col-sm-12">Thông tin sản phẩm</div>
            <div class="cart-nav-item col-lg-2 col-md-2 col-sm-12">Tùy chọn</div>
            <div class="cart-nav-item col-lg-3 col-md-3 col-sm-12">Giá</div>
        </div>
        <form method="POST">
            <?php
            $totals = 0;
            while ($row = mysqli_fetch_array($query)) {
                $totals_price = $_SESSION['cart'][$row['prd_id']] * $row['prd_price'];
                $totals += $totals_price
            ?>
                <div class="cart-item row">
                    <div class="cart-thumb col-lg-7 col-md-7 col-sm-12">
                        <img class="img-fluid" src="admin/img/products/<?php echo $row['prd_image'] ?>">
                        <h4><?php echo $row['prd_name'] ?></h4>
                    </div>

                    <div class="cart-quantity col-lg-2 col-md-2 col-sm-12">
                        <input type="number" name="quantity[<?php echo $row['prd_id'] ?>]" id="quantity" class="form-control form-blue quantity" value="<?php echo $_SESSION['cart'][$row['prd_id']] ?>" min="1">
                    </div>
                    <div class="cart-price col-lg-3 col-md-3 col-sm-12"><b><?php echo number_format($totals_price) ?></b><a href="module/cart/del_cart.php?prd_id=<?php echo $row['prd_id'] ?>">Xóa</a></div>
                </div>
            <?php } ?>
            <div class="row">
                <div class="cart-thumb col-lg-7 col-md-7 col-sm-12">
                    <button id="update-cart" class="btn btn-success" type="submit" name="sbm">Cập nhật giỏ hàng</button>
                </div>
                <div class="cart-total col-lg-2 col-md-2 col-sm-12"><b>Tổng cộng:</b></div>
                <div class="cart-price col-lg-3 col-md-3 col-sm-12"><b><?php echo number_format($totals) ?></b></div>
            </div>
        </form>

    </div>
    <!--	End Cart	-->

    <!--	Customer Info	-->
    <?php
    if (isset($_POST['name']) && isset($_POST['phone']) && isset($_POST['mail']) && isset($_POST['add'])) {
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $email = $_POST['mail'];
        $add = $_POST['add'];

        $str_body = "";
        $str_body .= '
        <p>
            <b>Khách hàng:</b> ' . $name . '<br>
            <b>Điện thoại:</b> ' . $phone . '<br>
            <b>Địa chỉ:</b> ' . $add . '<br>
        </p>
   ';
        $str_body .= '
        <table border="1" cellspacing="0" cellpadding="10" bordercolor="#305eb3" width="100%">
	        <tr bgcolor="#305eb3">
    	        <td width="70%"><b><font color="#FFFFFF">Sản phẩm</font></b></td>
                <td width="10%"><b><font color="#FFFFFF">Số lượng</font></b></td>
                <td width="20%"><b><font color="#FFFFFF">Tổng tiền</font></b></td>
            </tr>
    ';
        $sql = "SELECT * FROM product WHERE prd_id IN ($str_id)";
        $query = mysqli_query($conn, $sql);
        $totals = 0;
        while ($row = mysqli_fetch_array($query)) {
            $totals_price = $_SESSION['cart'][$row['prd_id']] * $row['prd_price'];
            $totals += $totals_price;
            $str_body .= '
            <tr>
    	        <td width="70%">' . $row['prd_name'] . '</td>
                <td width="10%">' . $_SESSION['cart'][$row['prd_id']] . '</td>
                <td width="20%">' . number_format($totals_price) . ' đ</td>
            </tr>
        ';
        }
        $str_body .= '
            <tr>
                <td colspan="2" width="70%"></td>
                <td width="20%"><b><font color="#FF0000">' . number_format($totals) . ' đ</font></b></td>
            </tr>
        </table>
    ';
        $str_body .= '
        <p>
	        Cám ơn quý khách đã mua hàng tại Shop của chúng tôi, bộ phận giao hàng sẽ liên hệ với quý khách để xác nhận sau 5 phút kể từ khi đặt hàng thành công và chuyển hàng đến quý khách chậm nhất sau 24 tiếng.
        </p>
    ';
    }
    ?>


    <div id="customer">
        <form method="POST">
            <div class="row">
                <div id="customer-name" class="col-lg-4 col-md-4 col-sm-12">
                    <input placeholder="Họ và tên (bắt buộc)" type="text" name="name1" class="form-control" required>
                </div>
                <div id="customer-phone" class="col-lg-4 col-md-4 col-sm-12">
                    <input placeholder="Số điện thoại (bắt buộc)" type="text" name="phone" class="form-control" required>
                </div>
                <div id="customer-mail" class="col-lg-4 col-md-4 col-sm-12">
                    <input placeholder="Email (bắt buộc)" type="text" name="mail" class="form-control" required>
                </div>
                <div id="customer-add" class="col-lg-12 col-md-12 col-sm-12">
                    <input placeholder="Địa chỉ nhà riêng hoặc cơ quan (bắt buộc)" type="text" name="address1" class="form-control" required>
                </div>
                <button id="by-now" class="sbm" type="submit" name="sbm1" class="btn btn-primary"><b>Mua ngay</b>
                    <span>Giao hàng tận nơi siêu tốc</span></button>
            </div>
        </form>
    </div>
    <?php
    if (isset($_POST['sbm1'])) {
        $name = $_POST['name1'];
        $phone = $_POST['phone'];
        $mail = $_POST['mail'];
        $address = $_POST['address1'];
        date_default_timezone_set("Asia/Bangkok");
        $date = date("Y-n-d H:i:s");
        $sql_ord = "INSERT INTO bill(name1,phone,mail,address1,date1,totals_price)
                VALUES ('$name','$phone','$mail','$address','$date','$totals_price')";
        $query_ord = mysqli_query($conn, $sql_ord);
    }
    ?>
<?php
} else {
    echo '<div class="alert text-danger alert-danger mt-3">Giỏ hàng của bạn hiện tại không có sản phẩm nào!</div>';
}

?>
<!--	End Customer Info	-->