<html>
  <head>
    <title>性格</title>
    <?php echo $this->Html->script( 'jquery-2.2.3.min.js'); ?>
    <link href="jquery.rateyo.min.css" rel="stylesheet" type="text/css">
  </head>
  <body>
      <h1>Add Pagedddddd</h1>
      <table class="table table-striped table-bordered table-hover" id="dataTables-example">
          <tr>
            <th>職業名</th>
            <td><?php echo $data['Quotation']['title']; ?></td>
            <?php echo $this->Form->hidden('Quotation.title', array('value' => $data['Quotation']['title'])); ?>
          </tr>
          <tr>
            <th>著者</th>
            <td><?php echo $data['Quotation']['author']; ?></td>
            <?php echo $this->Form->hidden('Quotation.author', array('value' => $data['Quotation']['author'])); ?>
          </tr>

        <tr>
          <td>好きなこと</td>
          <td>
            <?php if(!empty($data['Quotation']['item_genre'])):?>
              <?php $count = 0; ?>
              <?php foreach ($data['Quotation']['item_genre'] as $key => $value): ?>
                <?php if ($count == '0') {  echo ''; } else { echo '/'; } ; ?>
                <?php echo $genre[$value]; ?>
                <?php $count++ ; ?>
              <?php endforeach; ?>
            <?php endif; ?>
          </td>
        </tr>

          <tr>
            <th>画像</th>
            <td>
              <?php if(!empty($data['Image'])):?>
                <?php foreach ($data['Image'] as $key => $photo): ?>
                  <?php if(!empty($photo)):?>
                    <?php echo $this->Html->image($photo['Image']['url'] ,array('width' => '15%' )); ?>
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
            <th>テキスト</th>
            <td><?php echo $data['Quotation']['text']; ?></td>
            <?php echo $this->Form->hidden('Quotation.text', array('value' => $data['Quotation']['text'])); ?>
          </tr>
      </table>
    <?php echo $this->Html->link('一覧へ', array('controller' => 'Quotations', 'action' => 'index')); ?>
  </body>
</html>
