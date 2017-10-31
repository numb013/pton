<?php
/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

App::uses('AppController', 'Controller');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class PagesController extends AppController {
	public $uses = array('Quotation', 'Image');
        public $components = array('Search.Prg', 'Session', 'Master', 'Paginator');
/**
 * This controller does not use a model
 *
 * @var array
 */

	public function beforeFilter() {
		$this->set('title_for_layout', 'ポジティブをネガティブ');
	 parent::beforeFilter();
	 $this->Auth->allow('add', 'index', 'home', 'search', 'check_box', 'display');
	}

	/**
	 * Displays a view
	 *
	 * @return void
	 * @throws NotFoundException When the view file could not be found
	 *	or MissingViewException in debug mode.
	 */
		public function display() {
			$this->set('title_for_layout', 'ポジティブをネガティブ');
			$this->layout = "default";
//                        $status = array(
//                            'conditions' =>
//                             array(
//                               'delete_flag' => 0,
//                             ),
//                             'order' => array(
//                                     'created' => 'DESC',
//                             ),
//                            'recursive'  => 1
//                        );



                        $this->paginate = array(
                            'conditions' =>
                             array(
                               'delete_flag' => 0,
                             ),
                             'order' => array(
                                     'created' => 'DESC',
                             ),
                            'recursive'  => 1,
                            //'limit' => 4,
                        );                        


                        
                        
                        if (!empty($_GET["item_genre"])) {
                            $this->paginate['conditions'][0] = 'FIND_IN_SET('.$_GET["item_genre"].", item_genre)";
                        }



                        // 以下がデータベース関係
                        $this->Paginator->settings = $this->paginate;
                        $datas = $this->Paginator->paginate('Quotation');


                        //$datas = $this->Quotation->find('all', $status);
                        foreach ($datas as $key => $value) {
                            $datas[$key]['Quotation']['item_genre'] = explode(",", $value['Quotation']['item_genre']);
                        }
                        $this->_getCheckParameter();
                        $this->set('datas',$datas);
                        $this->render('home');
                }

/**
 * Displays a view
 *
 * @return void
 * @throws NotFoundException When the view file could not be found
 *	or MissingViewException in debug mode.
 */
	public function admin_display() {
		$path = func_get_args();

		$count = count($path);
		if (!$count) {
			return $this->redirect('/');
		}
		$page = $subpage = $title_for_layout = null;

		if (!empty($path[0])) {
			$page = $path[0];
		}
		if (!empty($path[1])) {
			$subpage = $path[1];
		}
		if (!empty($path[$count - 1])) {
			$title_for_layout = Inflector::humanize($path[$count - 1]);
		}
		$this->set(compact('page', 'subpage', 'title_for_layout'));

		try {
			$this->render(implode('/', $path));
		} catch (MissingViewException $e) {
			if (Configure::read('debug')) {
				throw $e;
			}
			throw new NotFoundException();
		}
	}

	public function _getSideContent() {
//		$status = array(
//			'fields' => array(
//				'Blog.id', 'Blog.title'
//			),
//			'conditions' =>
//			array(
//				'Blog.delete_flag' => 0
//			),
//			'recursive'  => -1
//		);
		$status = array(
		'conditions' => array(
			'image_flag' => '1',
                        'Blog.delete_flag' => 0
		),
		'limit' => 4,
		);
		// 以下がデータベース関係
		$side_content = $this->Blog->find('all', $status);
		$status = array(
			'conditions' =>
			array(
				'delete_flag' => 0
			),
                        'limit' => 4,
		);
		// 以下がデータベース関係
		$side_under_content = $this->Rss->find('all', $status);
                shuffle($side_content);
                $this->set(compact("side_content", 'side_under_content'));
        }        
	public function _getCheckParameter() {
		$genre = $this->Master->getGenre();
		$this->set(compact("genre"));
		return;
	}

    }
