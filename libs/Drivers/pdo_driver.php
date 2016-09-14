<?php

/**
 *  PDO MySQL数据驱动类
 */
class pdo_driver {
	/**
	 * 数据库链接句柄
	 */
	private $conn;

	/**
	 * 构造函数
	 *
	 * @param
	 *        	dbConfig 数据库配置
	 */
	public function __construct($dbConfig){
		$dsn = $dbConfig['pdo_driver'].':host=' . $dbConfig['host'] . ';dbname='.$dbConfig['database'];
		$this->conn = new PDO($dsn, $dbConfig['login'], $dbConfig['password']);
		$this->execute('SET NAMES UTF8;');
	}

	public function selectDB($databases){
	}

	/**
	 * 按SQL语句获取记录结果，返回数组
	 *
	 * @param
	 *        	sql 执行的SQL语句
	 */
	public function getQueryArrayResult($sql){
		$arrayResult = NULL;
		foreach ($this->execute($sql) as $row) {
			$arrayResult[] = $row;
		}
		return $arrayResult;
	}

	public function getQueryRowResult($sql){
		foreach ($this->execute($sql) as $row) {
		}
		return $row;
	}

	public function getQueryOneResult($sql){
		$result = array_values($this->getQueryRowResult($sql));
		return $result[0];
	}

	/**
	 * 返回当前插入记录的主键ID
	 */
	public function getInsertid(){
	}

	/**
	 * 格式化带limit的SQL语句
	 */
	public function setlimit($sql, $limit){
		return $sql . " LIMIT {$limit}";
	}

	/**
	 * 执行一个SQL语句
	 *
	 * @param
	 *        	sql 需要执行的SQL语句
	 */
	public function execute($sql){
		return $this->conn->query($sql);
	}

	/**
	 * 返回影响行数
	 */
	public function affected_rows(){
	}

	/**
	 * 获取数据表结构
	 *
	 * @param
	 *        	tbl_name 表名称
	 */
	public function getTableDescribe($tbl_name){
	}

	/**
	 * 析构函数 __destruct
	 */
	public function close(){
	}
}

