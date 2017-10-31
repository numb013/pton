<html>
  <head>
    <title>Index Page</title>
  </head>
  <body>
      <h1>Edit Page</h1>
    <p>MySampleData Edit Form.</p>
    <?php echo $this->Form->create('Quotation', array('type' => 'file', 'url' => 'edit_regist')); ?>
     <?php echo $this->Form->input('id'); ?>
      <table class="table table-striped table-bordered table-hover" id="dataTables-example">
          <tr>
            <th>名言</th>
            <td><?php echo $data['Quotation']['title']; ?></td>
            <?php echo $this->Form->hidden('Quotation.title', array('value' => $data['Quotation']['title'])); ?>
          </tr>
          <tr>
            <th>著者</th>
            <td><?php echo $data['Quotation']['author']; ?></td>
            <?php echo $this->Form->hidden('Quotation.author', array('value' => $data['Quotation']['author'])); ?>
          </tr>
            <tr>
            <th>ジャンル</th>
            <td>
              <?php if(!empty($data['Quotation']['item_genre'])):?>
                <?php foreach ($data['Quotation']['item_genre'] as $key => $value): ?>
                  <?php echo '/'; ?>
                  <?php echo $genre[$value]; ?>
                  <?php echo $this->Form->hidden('item_genre][]', array('value' => $value)); ?>
                <?php endforeach; ?>
              <?php endif; ?>
            </td>
          </tr>
          <tr>
            <td>画像</td>
            <td>
              <?php if(!empty($data['Image'])):?>
                <?php foreach ($data['Image'] as $key => $photo): ?>
                  <?php if(!empty($photo)):?>
                    <?php echo $this->Html->image($photo['url'] ,array('width' => '15%' )); ?>
                    <?php //echo $this->Html->image("top/comp25.jpg", array('width' => '15%')); ?>
                    <?php if (!empty($photo['name'])):?>
                      <?php echo $this->Form->hidden('Image.'.$key.'.Image.name', array('value' => $photo['name'])); ?>
                      <?php echo $this->Form->hidden('Image.'.$key.'.Image.type', array('value' => $photo['type'])); ?>
                      <?php echo $this->Form->hidden('Image.'.$key.'.Image.tmp_name', array('value' => $photo['tmp_name'])); ?>
                      <?php echo $this->Form->hidden('Image.'.$key.'.Image.error', array('value' => $photo['error'])); ?>
                      <?php echo $this->Form->hidden('Image.'.$key.'.Image.size', array('value' => $photo['size'])); ?>
                      <?php echo $this->Form->hidden('Image.'.$key.'.Image.url', array('value' => $photo['url'])); ?>
                    <?php endif; ?>
                  <?php else: ?>
                    なし
                  <?php endif; ?>
                <?php endforeach; ?>
              <?php else: ?>
                なし
              <?php endif; ?>
            </td>
          </tr>
          <tr>
            <th>説明文</th>
            <td><?php echo $data['Quotation']['text']; ?></td>
            <?php echo $this->Form->hidden('Quotation.text', array('value' => $data['Quotation']['text'])); ?>
          </tr>
      </table>

    <?php
      if (!empty($data['Check'])) {
        foreach ($data['Check'] as $key => $CheckPhoto) {
          echo $this->Form->hidden('photo_dele.'.$key, array('value' => $CheckPhoto['photo']));
        }
      }
    ?>
    <div class="btn-area">
            <div class="btn gray-b">
                    <?php echo $this->Form->submit('戻る', array('name' => 'back', 'type' => 'submit', 'label' => false, 'div' => false)); ?>
            </div>
            <div class="btn">
                    <?php echo $this->Form->submit('登録', array('name' => 'regist', 'type' => 'submit', 'label' => false, 'div' => false)); ?>
            </div>
        </div>
    <?php echo $this->Html->link('一覧', array('controller' => 'Quotations', 'action' => 'admin_index')); ?>
  </body>
</html>
