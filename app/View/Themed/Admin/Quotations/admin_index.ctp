<?php echo $this->Form->create('Quotation', array('type' => 'file', 'url' => 'index')); ?>
<table class="table table-striped table-bordered table-hover" id="dataTables-example">
  <tr>
    <td>ジャンル</td>
    <td>
      <?php
        echo $this->Form->input('genre', array(
          'options' => $genre,
          'label' => false,
          'div' => false,
          'empty' => '選択してください'
        ));
       ?>
    </td>
  </tr>
  <tr>
    <td>タイトル</td>
    <td>
      <?php echo $this->Form->input('title', array('label' => false, 'div' => false)); ?>
    </td>
  </tr>
  <tr>
  <td>
    <?php echo $this->Form->end('検索'); ;?>
  </td>
  <td>
  </td>
  </tr>
</table>
    <?php echo $this->Html->link('新規作成', array('controller' => 'Quotations', 'action' => 'add')); ?>
    <?php echo $this->Paginator->counter(array(
      'format' => '<p>全{:count}件中/{:start}-{:end}件ヒット</p>'
    ));?>
    <div class="job-page">
      <?php
        echo $this->Paginator->first('<< ');
        echo $this->Paginator->numbers(
          array('separator' => '/','modulus'=>2));
        echo $this->Paginator->last(' >>');
      ?>
    </div>
    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
      <tr>
        <th>名言<?php echo $this->Paginator->sort('id');?></th>
        <th>著者</th>
        <th>画像</th>
        <th>詳細</th>
        <th>編集</th>
        <th>削除</th>
      </tr>
      <?php foreach ($datas as $data): ?>
      <tr>
          <td><?php echo $data['Quotation']['title']; ?></td>
          <td><?php echo $data['Quotation']['author']; ?></td>
          <td style=" width: 330px;"><?php echo $this->Html->image($data['Image'][0]['url'] ,array('width' => '20px' )); ?></td>
          <td><?php echo $this->Html->link('詳細', array('controller' => 'Quotations', 'action' => 'detail', $data['Quotation']['id'])); ?></td>
          <td><?php echo $this->Html->link('編集', array('controller' => 'Quotations', 'action' => 'edit', $data['Quotation']['id'])); ?></td>
          <td><?php echo $this->Html->link('削除', array('controller' => 'Quotations', 'action' => 'delete', $data['Quotation']['id'])); ?></td>
       </tr>
      <?php endforeach; ?>
    </table>
    <div class="job-page">
      <?php
        echo $this->Paginator->first('<< ');
        echo $this->Paginator->numbers(
          array('separator' => '/','modulus'=>2));
        echo $this->Paginator->last(' >>');
      ?>
    </div>
    <div class="job-page">

        
