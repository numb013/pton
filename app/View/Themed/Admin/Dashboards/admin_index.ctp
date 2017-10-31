<html>
  <head>
    <title>Index Page</title>
  </head>
  <body>
    <p>MySampleData Index View.</p>
    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
      <tr>
        <th>名言</th>
        <td><?php echo $this->Html->link('一覧リンク', array('controller' => 'Quotations', 'action' => 'index')); ?></td>
      </tr>
      <tr>
        <th>ジャンル</th>
        <td><?php echo $this->Html->link('一覧リンク', array('controller' => 'Genres', 'action' => 'index')); ?></td>
      </tr>
    <tr>
        <th>お問い合わせ</th>
        <td><?php echo $this->Html->link('一覧リンク', array('controller' => 'Cotracts', 'action' => 'index')); ?></td>
    </tr>
    </table>
  </body>
</html>
