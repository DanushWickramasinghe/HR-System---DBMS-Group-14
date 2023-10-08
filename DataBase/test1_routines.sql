-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `employee_by_department`
--

DROP TABLE IF EXISTS `employee_by_department`;
/*!50001 DROP VIEW IF EXISTS `employee_by_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_by_department` AS SELECT 
 1 AS `ID`,
 1 AS `Employee Name`,
 1 AS `Department`,
 1 AS `Email`,
 1 AS `Joined Date`,
 1 AS `Employee Type`,
 1 AS `Employee Status`,
 1 AS `Paygrade`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employee_and_supervisor`
--

DROP TABLE IF EXISTS `employee_and_supervisor`;
/*!50001 DROP VIEW IF EXISTS `employee_and_supervisor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_and_supervisor` AS SELECT 
 1 AS `Employee ID`,
 1 AS `Employee Name`,
 1 AS `Employee Department`,
 1 AS `Employee Type`,
 1 AS `Supervisor ID`,
 1 AS `Supervisor Name`,
 1 AS `Supervisor Department`,
 1 AS `Supervisor Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `average_salary_by_department`
--

DROP TABLE IF EXISTS `average_salary_by_department`;
/*!50001 DROP VIEW IF EXISTS `average_salary_by_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `average_salary_by_department` AS SELECT 
 1 AS `department`,
 1 AS `total_employees`,
 1 AS `avg_salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `leaves_by_department`
--

DROP TABLE IF EXISTS `leaves_by_department`;
/*!50001 DROP VIEW IF EXISTS `leaves_by_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `leaves_by_department` AS SELECT 
 1 AS `id`,
 1 AS `department`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employee_grouping`
--

DROP TABLE IF EXISTS `employee_grouping`;
/*!50001 DROP VIEW IF EXISTS `employee_grouping`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_grouping` AS SELECT 
 1 AS `user_Id`,
 1 AS `Department`,
 1 AS `Employee type`,
 1 AS `Employee Status`,
 1 AS `Paygrade`,
 1 AS `Employee Matrial Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `employee_by_department`
--

/*!50001 DROP VIEW IF EXISTS `employee_by_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_by_department` AS select `employee`.`user_Id` AS `ID`,concat(`employee`.`firstname`,' ',`employee`.`lastname`) AS `Employee Name`,`department`.`Name` AS `Department`,`employee`.`email` AS `Email`,`employee`.`Joined_date` AS `Joined Date`,`emptype`.`type` AS `Employee Type`,`empstatus`.`status` AS `Employee Status`,`paygrade`.`paygrade` AS `Paygrade` from ((((`employee` join `department`) join `emptype`) join `empstatus`) join `paygrade`) where ((`employee`.`department` = `department`.`ID`) and (`employee`.`type` = `emptype`.`ID`) and (`employee`.`empStatus` = `empstatus`.`ID`) and (`employee`.`paygrade` = `paygrade`.`ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_and_supervisor`
--

/*!50001 DROP VIEW IF EXISTS `employee_and_supervisor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_and_supervisor` AS select `emp`.`employee_id` AS `Employee ID`,concat(`emp`.`employee_firstname`,' ',`emp`.`employee_lastname`) AS `Employee Name`,`emp_department`.`Name` AS `Employee Department`,`emp_type`.`type` AS `Employee Type`,`emp`.`supervisor_id` AS `Supervisor ID`,concat(`employee`.`firstname`,' ',`employee`.`lastname`) AS `Supervisor Name`,`sup_department`.`Name` AS `Supervisor Department`,`sup_type`.`type` AS `Supervisor Type` from ((((((select `employee`.`ID` AS `employee_id`,`employee`.`firstname` AS `employee_firstname`,`employee`.`lastname` AS `employee_lastname`,`employee`.`department` AS `emp_department`,`employee`.`type` AS `emp_type`,`supervisor`.`Sup_Id` AS `supervisor_id` from (`employee` join `supervisor` on((`employee`.`ID` = `supervisor`.`Emp_Id`)))) `emp` join `employee` on((`emp`.`supervisor_id` = `employee`.`ID`))) join `department` `emp_department` on((`emp`.`emp_department` = `emp_department`.`ID`))) join `emptype` `emp_type` on((`emp`.`emp_type` = `emp_type`.`ID`))) join `department` `sup_department` on((`sup_department`.`ID` = `employee`.`department`))) join `emptype` `sup_type` on((`sup_type`.`ID` = `employee`.`type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `average_salary_by_department`
--

/*!50001 DROP VIEW IF EXISTS `average_salary_by_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average_salary_by_department` AS select `department`.`Name` AS `department`,count(`employee`.`ID`) AS `total_employees`,round(avg(`employee`.`salary`),2) AS `avg_salary` from (`employee` join `department`) where (`employee`.`department` = `department`.`ID`) group by `department`.`Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `leaves_by_department`
--

/*!50001 DROP VIEW IF EXISTS `leaves_by_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `leaves_by_department` AS select `leave`.`id` AS `id`,`department`.`Name` AS `department`,`leave`.`Date` AS `Date` from ((`leave` join `employee`) join `department`) where ((`employee`.`ID` = `leave`.`emp_ID`) and (`employee`.`department` = `department`.`ID`) and (`leave`.`status` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_grouping`
--

/*!50001 DROP VIEW IF EXISTS `employee_grouping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_grouping` AS select `employee`.`user_Id` AS `user_Id`,`department`.`Name` AS `Department`,`emptype`.`type` AS `Employee type`,`empstatus`.`status` AS `Employee Status`,`paygrade`.`paygrade` AS `Paygrade`,`maritalstatus`.`status` AS `Employee Matrial Status` from (((((`employee` join `department`) join `emptype`) join `empstatus`) join `paygrade`) join `maritalstatus`) where ((`employee`.`department` = `department`.`ID`) and (`employee`.`type` = `emptype`.`ID`) and (`employee`.`empStatus` = `empstatus`.`ID`) and (`employee`.`paygrade` = `paygrade`.`ID`) and (`employee`.`maritalStatus` = `maritalstatus`.`ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'test1'
--

--
-- Dumping routines for database 'test1'
--
/*!50003 DROP FUNCTION IF EXISTS `available_leaves` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `available_leaves`(`empId` INT) RETURNS int
    DETERMINISTIC
begin
    declare max_count INT;
    declare cur_count INT;
    select num_leaves into max_count from paygrade join employee on employee.paygrade = paygrade.ID where employee.ID = empId;
    select leave_count into cur_count from employee where employee.ID = empId;
    return max_count - cur_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 12:40:59
