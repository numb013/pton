<div class="page-content">
        <h1 class="mb0"><?php echo $datas['Quotation']['title']; ?></h1>
        <p><?php echo $this->Html->image($datas['Image'][0]['Image']['url'] ,array('width' => '100%' )); ?></p>
        <p class="page_author"><?php echo "by:".$datas['Quotation']['author']; ?></p>

<?php
  //echo pr($datas);

?>


    <div class="fh5co-copy col-md-12  text-center detail_tex">
        <?php if (!empty($datas['write'])): ?>
          <?php foreach ($datas['write'] as $key => $value): ?>
            <div class='write_space'>
              <div class="write_img">
                <?php echo $this->Html->image('find_user.png', array('width' => '50', 'height' =>'50')); ?>
              </div>
              <div class='write_waku'>
                <ul class='write_title'>
                  <li>名前：<?php echo $value['WriteDown']['write_name']; ?></li>
                  <li>|</li>
                  <li><?php echo date("Y/m/d H:i", strtotime($value['WriteDown']['created'])); ?></li>
                  <li class="write_like">
                    <a href="javascript:void(0);" class='like_count plus' id="<?php echo $value['WriteDown']['id'];?>">
                    いいね : <span class="count"><?php echo $value['WriteDown']['like_count']; ?></span>
                    </a>
                  </li>
                </ul>
                <p class='write_text'>
                  <?php echo nl2br($value['WriteDown']['write_text']); ?>
                <p>
              </div>
            </div>
          <?php endforeach; ?>
        <?php endif; ?>
      </div>        


        
        
        
      <div class="fh5co-copy col-md-12  text-center detail_tex">
        <div class="rofession_text">
          <?php echo $this->Form->create('Quotation', array('type' => 'post', 'url' => 'write_post')); ?>
          <div class="col-md-12">
            <p style=color:red;>
              <?php
                if (!empty($error['name'][0])) {
                  echo $error['name'][0];
                };
              ?>
            </p>
            <div class="form-group">
                <?php echo $this->Form->input('name', array(
                'name' => 'write_name', 
                'type' => 'name', 
                'label' => false, 
                'div' => false, 
                'class' => 'form-name', 
                'placeholder' => "名前")
                ); ?>
            </div>
          </div>
          <div class="col-md-12">
            <p style=color:red;>
              <?php
                if (!empty($error['text'][0])) {
                  echo $error['text'][0];
                };
              ?>
            </p>
            <div class="form-group">

              <?php echo $this->Form->input('text', array(
              'name' => 'write_text', 
              'type' => 'textarea', 
              'rows' => 4, 
              'cols' => 50,
              'label' => false, 
              'div' => false, 
              'class' => 'form-text', 
              'placeholder' => "本文")
              ); ?>

            </div>
          </div>
          <div>
            <?php echo $this->Form->hidden('quotation_id', array('name' => 'quotation_id', 'value' => $datas['Quotation']['id'])); ?>
            <div class="set-btn">
              <?php echo $this->Form->button('ぶった切る', array('type' => 'button', 'label' => false, 'div' => false, 'class' => 'btn_write')); ?>
            </div>
          </div>
          <?php echo $this->Form->end(); ?>
        </div>
      </div>        

</div>

<script type="text/javascript">
  $('.like_count').click(function() {
    var data = { WriteDown: { id: $(this).attr('id'), class: $('.write_like').find('a').attr('class')} };
    var id = $(this).attr('id');
    console.log(JSON.stringify(data));
    $.ajax({
      type: 'POST',
      url: '/pton/WriteDowns/like_count',
      data: data,
      dataType: 'json',
      cache: false,
      success: function(data) {
        if (data.status) {

          if (data.action === 'plus') {
            var countid = "#" + id;
            var like = parseInt($(countid).find('span.count').text());
            var LikeCount = (like + 1);
            $(countid).find('span.count').text(LikeCount);
            $('div').find(countid).attr('class','like_count minus');
            //$(countid).css('color','#fff');
            //$(countid).css('background-color','#369840');
          } else {
            var countid = "#" + id;
            var like = parseInt($(countid).find('span.count').text());
            var LikeCount = (like - 1);
            $(countid).find('span.count').text(LikeCount);
            $('div').find(countid).attr('class','like_count plus');
            //$(countid).css('color','#369840');
            //$(countid).css('background-color','#fff');
          }
        }
      },
      error: function(XMLHttpRequest, textStatus, errorThrown) {
        console.log(errorThrown);
      }
    });
    return false;
  });



$('.btn_write').click(function() {
  var name = $('#QuotationDetailForm [name=write_name]').val();
  var text = $('#QuotationDetailForm [name=write_text]').val();
  if (name.length == 0) {
    var name = '匿名';
  }
  if ((name.length < 25) && (text.length < 140) && (text.length > 0)) {
    var data = { wirte_down: {quotation_id: $('#QuotationDetailForm [name=quotation_id]').val(), write_name: name, write_text: text, up_flag: '1'} };
    $.ajax({
      type: 'POST',
      url: '/pton/WriteDowns/write_post',
      data: data,
      dataType: 'json',
      cache: false,
      success: function(data) {
        location.reload(true)
      },
      error: function(XMLHttpRequest, textStatus, errorThrown) {
          console.log(textStatus);
          console.log(errorThrown);
      }
    });
    return false;
    } else {
      if (name.length > 25) {
        alert('名前は25文字まで');
      } else if (text.length > 140) {
        alert('本文は140本文まで');
      } else if (text.length <= 0) {
        alert('本文を入力してください');
      }
    }
  });





</script>
