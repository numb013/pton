<html>
  <head>
    <title>Index Page</title>
    <?php echo $this->Html->script( 'jquery-2.2.3.min.js'); ?>
    <link href="jquery.rateyo.min.css" rel="stylesheet" type="text/css">
  </head>
  <body>
    <?php

//echo pr($related);
//echo pr($item_genres);


     ?>
    <h1>Add Page</h1>
    <?php echo $this->Form->create('Quotation', array('type' => 'file', 'url' => 'add')); ?>
    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
      <tr>
        <th>タイトル</th>
        <td>
          <?php echo $this->Form->input('title', array('label' => false, 'div' => false, 'style' => 'width:100%')); ?>
        </td>
      </tr>
      <tr>
        <th>著者</th>
        <td>
          <?php echo $this->Form->input('author', array('label' => false, 'div' => false, 'style' => 'width:100%')); ?>
        </td>
      </tr>

      <tr>
        <th>ジャンル</th>
        <td>
          <?php
            echo $this->Form->input('Quotation.item_genre', array(
                'type' => 'select',
                'label' => false,
                'div' => false,
                'multiple'=> 'checkbox',
                'options' => $genre,
            ));
          ?>
        </td>
      </tr>      

      <tr>
        <th>
           画像
        </th>
        <td id="txt">
          <?php echo $this->Form->input('Image.0', array('id' => 'idimage0', 'type' => 'file', 'label' => false, "class" => "imagclass")); ?>
            <span id="preview_area"></span>
        </td>
      </tr>
      <tr>
        <th></th>
        <td id="show">
        </td>
      </tr>
      <?php if(!empty($this->request->data['Image'])):?>
        <?php foreach ($this->request->data['Image'] as $key => $phot): ?>
          <tr>
            <th> 画像</th>
          <td>
            <?php  echo $this->Html->image($phot['url'] ,array('width' => '15%' )); ?>
            <?php echo $this->Form->input('Check.'.$key.'.photo', array(
              'id' => 'phpto'.$key,
              'onclick'=> "photodelete('phpto".$key."')",
              'type' => 'checkbox',
              'label' => '削除',
              'div' => false,
              'class' => 'phptos',
              'value' => $phot['url']
            )); ?>
          </td>
        </tr>
         <?php endforeach; ?>
       <?php endif;?>
      <tr>
        <th>説明文</th>
        <td><?php echo $this->Form->textarea('text', array('type' => 'text', 'label' => false, 'div' => false, 'rows' => 10, 'style' => 'width:100%')); ?></td>
      </tr>
    </table>
    <?php echo $this->Form->end('Submit'); ?>
    <?php echo $this->Html->link('一覧へ', array('controller' => 'Blogs', 'action' => 'admin_index')); ?>

    <script type="text/javascript">

      function photodelete(chkID){
        Myid=document.getElementById(chkID);
        if(Myid.checked == true){
          myRet = confirm("画像を削除してもいいですか？");
          if ( myRet == true ){
             Myid.parentNode.style.display = 'none';
          }　else {
            Myid.checked = false;
          }
        }
      }

      var todoNum = 1;

      function del(todoNum) {
        var photodel = 'Image' + todoNum;
        var dom_obj=document.getElementById(photodel);
        var dom_obj_parent=dom_obj.parentNode;
        dom_obj_parent.removeChild(dom_obj);
      }

     $('#idimage0').on('change', function(){ // 解説①
       var strFileInfo = $('#idimage0')[0].files[0]; // 解説②
       if(strFileInfo && strFileInfo.type.match('image.*')){ // 解説③
 
         $('#preview').remove();  // 解説④
         $('#preview_area').append('<img id="preview" width="300" />'); // 解説⑤
 
         fileReader = new FileReader(); // 解説⑥
         fileReader.onload = function(event){
           $('#preview').attr('src', event.target.result);
         }
 
         fileReader.readAsDataURL(strFileInfo); // 解説⑦
       }
     });
    </script>
  </body>
</html>
