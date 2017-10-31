<header id="fh5co-header" role="banner">
        <div class="container text-center">
                <div id="fh5co-logo">
                        <a href="/pton/"><img src="img/logo1.png" style="width:650px" alt="Present Free HTML5 Bootstrap Template"></a>
                </div>
        </div>
</header>
<!-- END #fh5co-header -->

<div class="container-fluid pt70 pb70">
        <div id="fh5co-projects-feed" class="fh5co-projects-feed clearfix masonry">
            <?php foreach ($datas as $key => $data): ?>
                <div class="fh5co-project masonry-brick">
                    <a href="/pton/quotations/detail/<?php echo $data['Quotation']['id']; ?>">
                        <?php echo $this->Html->image($data['Image'][0]['url'] ,array('width' => '100%' )); ?>
                        <h2><?php echo $data['Quotation']['title']; ?></h2>
                    </a>
                    <div class="top_list">
                        <ul class="topul">
                            <?php foreach ($data['Quotation']['item_genre'] as $key => $value): ?>
                                <li>
                                    <a href="/pton/pages?item_genre=<?php echo $value; ?>">
                                        <?php echo $genre[$value]; ?>
                                    </a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <div class="top_button">
                         <a href="/pton/quotations/detail/<?php echo $data['Quotation']['id']; ?>">名言を切る</a>
                    </div>
                </div>                                
            <?php endforeach; ?>
        </div>
        <!--END .fh5co-projects-feed-->
</div>
<!-- END .container-fluid -->