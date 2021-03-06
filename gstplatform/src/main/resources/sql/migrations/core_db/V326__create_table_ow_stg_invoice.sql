CREATE TABLE `g_ow_stg_invoice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gstin` varchar(15) NOT NULL,
  `gstin_purchaser` varchar(15) NOT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `supplier_inv_no` varchar(50) DEFAULT NULL,
  `supplier_inv_date` date DEFAULT NULL,
  `supplier_inv_value` float(15,2) DEFAULT NULL,
  `supply_state_code` varchar(2) DEFAULT NULL,
  `order_no` varchar(30) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `etin` varchar(15) DEFAULT NULL,
  `invoice_id` bigint(15) NOT NULL DEFAULT '0',
  `receipt_state_code` varchar(2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `error_code` varchar(50) DEFAULT NULL,
  `error_descr` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_gowstginv_invid` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE `g_ow_stg_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(10) NOT NULL,
  `item_type` varchar(1) DEFAULT NULL,
  `item_code` varchar(10) DEFAULT NULL,
  `tax_value` double(15,2) DEFAULT NULL,
  `igst_rate` double(15,2) DEFAULT NULL,
  `igst_amount` double(15,2) DEFAULT NULL,
  `cgst_rate` double(15,2) DEFAULT NULL,
  `cgst_amount` double(15,2) DEFAULT NULL,
  `sgst_rate` double(15,2) DEFAULT NULL,
  `sgst_amount` double(15,2) DEFAULT NULL,
  `cess_rate` double(15,2) DEFAULT NULL,
  `cess_amount` double(15,2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `error_code` varchar(100) DEFAULT NULL,
  `error_descriptor` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gowstgitem_invid_idx` (`invoice_id`),
  CONSTRAINT `fk_gowstgitems_invid` FOREIGN KEY (`invoice_id`) REFERENCES `g_ow_stg_invoice` (`invoice_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT IGNORE INTO `m_permission` (`grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('organisation', 'CREATE_OUTWARDINV', 'OUTWARDINV', 'CREATE', 0);



INSERT IGNORE INTO `c_configuration` (`name`, `value`, `date_value`, `enabled`, `is_trap_door`) VALUES ('Pull-Details', '[{\"stype\":\"db\",\"ttype\":\"1\",\"db_url\":\"jdbc:mysql://localhost/gst-default\",\"username\":\"root\",\"password\":\"mysql\",\"tablename\":\"tablename\",\"ctablename\":\"ctablename\",\"gstin\":\"column1\",\"gstinPurchaser\":\"column2\",\"cName\":\"column3\",\"supplierInvNo\":\"column4\",\"supplierInvDate\":\"column5\",\"supplierInvValue\":\"column6\",\"supplyStateCode\":\"column7\",\"orderNo\":\"column8\",\"orderDate\":\"column9\",\"etin\":\"column10\",\"invoiceId\":\"column11\",\"receiptStateCode\":\"column12\",\"errorCode\":\"column13\",\"errorDescripter\":\"column14\",\"itemType\":\"column15\",\"itemCode\":\"column16\",\"taxValue\":\"column17\",\"igstRate\":\"column18\",\"igstAmount\":\"column19\",\"cgstRate\":\"column20\",\"cgstAmount\":\"column21\",\"sgstRate\":\"column22\",\"sgstAmount\":\"column23\",\"cessRate\":\"column24\",\"cessAmount\":\"column25\",\"cerrorCode\":\"column26\",\"cerrorDescriptor\":\"column27\"}]', '2017-06-01', '1', '0');


CREATE TABLE `tablename` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column1` varchar(15) NOT NULL,
  `column2` varchar(15) NOT NULL,
  `column3` varchar(50) DEFAULT NULL,
  `column4` varchar(50) DEFAULT NULL,
  `column5` date DEFAULT NULL,
  `column6` float(15,2) DEFAULT NULL,
  `column7` varchar(2) DEFAULT NULL,
  `column8` varchar(30) DEFAULT NULL,
  `column9` date DEFAULT NULL,
  `column10` varchar(15) DEFAULT NULL,
  `column11` bigint(15) DEFAULT NULL,
  `column12` varchar(2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `column13` varchar(50) DEFAULT NULL,
  `column14` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `ctablename` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(10) NOT NULL,
  `column15` varchar(1) DEFAULT NULL,
  `column16` varchar(10) DEFAULT NULL,
  `column17` double(15,2) DEFAULT NULL,
  `column18` double(15,2) DEFAULT NULL,
  `column19` double(15,2) DEFAULT NULL,
  `column20` double(15,2) DEFAULT NULL,
  `column21` double(15,2) DEFAULT NULL,
  `column22` double(15,2) DEFAULT NULL,
  `column23` double(15,2) DEFAULT NULL,
  `column24` double(15,2) DEFAULT NULL,
  `column25` double(15,2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `column26` varchar(100) DEFAULT NULL,
  `column27` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--ALTER TABLE `g_ow_stg_items` 
--DROP FOREIGN KEY `fk_gowstgitems_invid`;

--ALTER TABLE `g_ow_stg_invoice` 
--DROP INDEX `uk_gowstginv_invid` ;

INSERT IGNORE INTO `m_permission` (`grouping`, `code`, `entity_name`, `action_name`, `can_maker_checker`) VALUES ('company', 'CREATE_TEST', 'TEST', 'CREATE', 0);


