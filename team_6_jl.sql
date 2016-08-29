-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: team_6_jl
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `diabetes_involved_disease_table`
--

DROP TABLE IF EXISTS `diabetes_involved_disease_table`;
/*!50001 DROP VIEW IF EXISTS `diabetes_involved_disease_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `diabetes_involved_disease_table` (
  `DOID` tinyint NOT NULL,
  `Disease_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `diabetes_table`
--

DROP TABLE IF EXISTS `diabetes_table`;
/*!50001 DROP VIEW IF EXISTS `diabetes_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `diabetes_table` (
  `Targeted_Disease` tinyint NOT NULL,
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL,
  `Sequence_Length` tinyint NOT NULL,
  `Alternative_Name` tinyint NOT NULL,
  `HGNC_ID` tinyint NOT NULL,
  `Approved_Symbol` tinyint NOT NULL,
  `Chromosomal_Location` tinyint NOT NULL,
  `Phenotype_MIM_No` tinyint NOT NULL,
  `DOID` tinyint NOT NULL,
  `Disease_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `disease_ontology`
--

DROP TABLE IF EXISTS `disease_ontology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease_ontology` (
  `DOID` int(11) NOT NULL,
  `Disease_Name` varchar(45) NOT NULL,
  `Definition` varchar(125) NOT NULL,
  `Relationship` varchar(45) NOT NULL,
  PRIMARY KEY (`DOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_ontology`
--

LOCK TABLES `disease_ontology` WRITE;
/*!40000 ALTER TABLE `disease_ontology` DISABLE KEYS */;
INSERT INTO `disease_ontology` VALUES (1441,'spinocerebellar ataxia','A spinocerebellar degeneration that is characterized by degeneration of the cerebellum leading to loss of muscle coordination','is_a spinocerebellar degeneration'),(1520,'colon carcinoma','A colon cancer that has_material_basis_in abnormally proliferating cells derives_from epithelial cells. ','is_a colon cancer'),(1612,'breast cancer','A thoracic cancer that originates in the mammary gland. ','is_a thoracic cancer'),(2843,'long QT syndrome','An autosomal genetic disease that is characterized by delayed repolarization of the heart following a heartbeat increases the','is_a autosomal genetic disease'),(3753,'Hermansky-Pudlak syndrome','An autosomal recessive disease characterized by oculocutaneous albinism, bleeding problems due to platelet storage pool defec','is_a autosomal recessive disease'),(3883,'Lynch syndrome','An autosomal dominant disease that is characterized by \nand has_material_basis_in mutation of mismatch repair genes that incr','is_a autosomal dominant disease'),(4535,'hypotrichosis','A hair disease that is characterized by sparse hair on the scalp resulting from abnormal hair follicle development and has_ma','is_a hair disease'),(9256,'colorectal cancer','A large intestine cancer that is located_in the colon and/or located_in the rectum. ','is_a large intestine cancer'),(9352,'type 2 diabetes mellitus','A diabetes mellitus that involves high blood glucose resulting from cells fail to use insulin properly. ','is_a diabetes mellitus'),(9744,'type 1 diabetes mellitus','A diabetes mellitus that results from the bodys failure to produce insulin and has_material_basis_in autoimmune destruction o','is_a diabetes mellitus'),(10588,'  adrenoleukodystrophy','A leukodystrophy that disrupts the breakdown of very-long-chain fatty acids resulting in progressive brain damage, failure of','is_a leukodystrophy'),(12120,'pulmonary alveolar proteinosis','A lung disease that is characterized by abnormal accumulation of surfactant occurs within the alveoli, interfering with gas e','is_a lung disease'),(12387,'nephrogenic diabetes insipidus','An impaired renal function disease characterized by a complete or partial resistance of the kidneys to vasopressin (ADH).','is_a impaired renal function disease'),(13317,'hyperinsulinemic hypoglycemia','A carbohydrate metabolic disorder that involves low blood glucose resulting from an excess of insulin. ','is_a carbohydrate metabolic disorder'),(50524,'maturity-onset diabetes of the young','A genetic disease that has_material_basis_in mutations in the MODY genes disrupting insulin production. ','is_a genetic disease'),(50545,'  visceral heterotaxy','A physical disorder characterized by the abnormal distribution of the major visceral organs within the chest and abdomen.','is_a physical disorder'),(50570,'congenital disorder of glycosylation type I','A congenital disorder of glycosylation involve disrupted synthesis of the lipid-linked oligosaccharide precursor.','is_a congenital disorder of glycosylation'),(50585,'  congenital generalized lipodystrophy','','is_a lipodystrophy'),(50730,'coenzyme Q10 deficiency disease','  A mitochondrial metabolism disease that is characterized by a deficiency of CoQ10 resulting from reduced biosynthesis. ','is_a mitochondrial metabolism disease'),(50877,'pancreatic agenesis','A pancreas disease that is characterized by the failure of the pancreas to develop prior to birth. ','is_a pancreas disease'),(60063,'X-linked sideroblastic anemia','','is_a sideroblastic anemia'),(60174,'  GABA aminotransferase deficiency','A gamma-amino butyric acid metabolism disorder that is characterized by a defect in the gene coding for gamma-aminobutyrate t','is_a gamma-amino butyric acid metabolism diso'),(60229,'Baraitser-Winter syndrome','  A syndrome characterized by distinctive facial features including hypertelorism, large eyelid openings, ptosis, high-arched','is_a syndrome'),(60334,'transient neonatal diabetes mellitus','A neonatal diabetes mellitus characterized by hyperglycemia during the neonatal period that remits during infancy but recurs ','is_a neonatal diabetes mellitus'),(148050,'KBG syndrome','A syndrome that is characterized by short stature, moderate to severe degrees of mental retardation, developmental abnormalit','is_a syndrome'),(203800,'Alstrom syndrome','An autosomal recessive disease that is characterized by multiorgan dysfunction. The key features are childhood obesity, blind','is_a autosomal recessive disease'),(612551,'focal segmental glomerulosclerosis','','is_a glomerulosclerosis');
/*!40000 ALTER TABLE `disease_ontology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `distinct_phynotype_table`
--

DROP TABLE IF EXISTS `distinct_phynotype_table`;
/*!50001 DROP VIEW IF EXISTS `distinct_phynotype_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `distinct_phynotype_table` (
  `Phenotype_MIM_No` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `distinct_protein_table`
--

DROP TABLE IF EXISTS `distinct_protein_table`;
/*!50001 DROP VIEW IF EXISTS `distinct_protein_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `distinct_protein_table` (
  `UniProtKB_Entry` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `drug`
--

DROP TABLE IF EXISTS `drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drug` (
  `PharmGKB_Drug_ID` varchar(45) NOT NULL,
  `Drug_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`PharmGKB_Drug_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug`
--

LOCK TABLES `drug` WRITE;
/*!40000 ALTER TABLE `drug` DISABLE KEYS */;
INSERT INTO `drug` VALUES ('PA10892','gliclazide'),('PA134308647','rosuvastatin'),('PA150595617','platinum'),('PA448785','carbamazepine'),('PA448803','carboplatin'),('PA449014','cisplatin'),('PA449285','diazoxide'),('PA449381','dobutamine'),('PA449383','docetaxel'),('PA449782','glibenclamide'),('PA451846','valproic acid');
/*!40000 ALTER TABLE `drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_compound_relationship`
--

DROP TABLE IF EXISTS `drug_compound_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drug_compound_relationship` (
  `PharmGKB_Drug_ID` varchar(45) NOT NULL,
  `PubChem_CID` int(11) NOT NULL,
  PRIMARY KEY (`PharmGKB_Drug_ID`,`PubChem_CID`),
  KEY `fk_Drug_has_PubChem_Compound_PubChem_Compound1_idx` (`PubChem_CID`),
  KEY `fk_Drug_has_PubChem_Compound_Drug1_idx` (`PharmGKB_Drug_ID`),
  CONSTRAINT `fk_Drug_has_PubChem_Compound_Drug1` FOREIGN KEY (`PharmGKB_Drug_ID`) REFERENCES `drug` (`PharmGKB_Drug_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Drug_has_PubChem_Compound_PubChem_Compound1` FOREIGN KEY (`PubChem_CID`) REFERENCES `pubchem_compound` (`PubChem_CID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_compound_relationship`
--

LOCK TABLES `drug_compound_relationship` WRITE;
/*!40000 ALTER TABLE `drug_compound_relationship` DISABLE KEYS */;
INSERT INTO `drug_compound_relationship` VALUES ('PA448785',2554),('PA449285',3019),('PA451846',3121),('PA10892',3475),('PA449782',3488),('PA449381',36811),('PA448803',38904),('PA449383',148124),('PA449014',441203),('PA134308647',6439133);
/*!40000 ALTER TABLE `drug_compound_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_generic_name`
--

DROP TABLE IF EXISTS `drug_generic_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drug_generic_name` (
  `PharmGKB_Drug_ID` varchar(45) NOT NULL,
  `Generic_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`PharmGKB_Drug_ID`,`Generic_Name`),
  KEY `fk_Drug_Generic_Name_Drug1_idx` (`PharmGKB_Drug_ID`),
  CONSTRAINT `fk_Drug_Generic_Name_Drug1` FOREIGN KEY (`PharmGKB_Drug_ID`) REFERENCES `drug` (`PharmGKB_Drug_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_generic_name`
--

LOCK TABLES `drug_generic_name` WRITE;
/*!40000 ALTER TABLE `drug_generic_name` DISABLE KEYS */;
INSERT INTO `drug_generic_name` VALUES ('PA10892','gliclazide'),('PA134308647','rosuvastatin'),('PA150595617','platinum'),('PA448785','carbamazepine'),('PA448803','carboplatin'),('PA449014','cisplatin'),('PA449285','diazoxide'),('PA449381','dobutamine'),('PA449383','docetaxel'),('PA449782','glibenclamide'),('PA451846','valproic acid');
/*!40000 ALTER TABLE `drug_generic_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_trade_name`
--

DROP TABLE IF EXISTS `drug_trade_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drug_trade_name` (
  `PharmGKB_Drug_ID` varchar(45) NOT NULL,
  `Trade_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`PharmGKB_Drug_ID`,`Trade_Name`),
  KEY `fk_Drug_Trade_Name_Drug1_idx` (`PharmGKB_Drug_ID`),
  CONSTRAINT `fk_Drug_Trade_Name_Drug1` FOREIGN KEY (`PharmGKB_Drug_ID`) REFERENCES `drug` (`PharmGKB_Drug_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_trade_name`
--

LOCK TABLES `drug_trade_name` WRITE;
/*!40000 ALTER TABLE `drug_trade_name` DISABLE KEYS */;
INSERT INTO `drug_trade_name` VALUES ('PA10892','Diamicron'),('PA10892','Diamicron MR'),('PA134308647','Astende'),('PA134308647','Cirantan'),('PA448785','Apo-Carbamazepine'),('PA448785','Atretol'),('PA448803','Paraplatin'),('PA448803','Paraplatin-AQ'),('PA449014','Abiplatin'),('PA449014','Biocisplatinum'),('PA449285','Dizoxide'),('PA449285','Eudemine'),('PA449381','Dobutamina [INN-Spanish]'),('PA449381','Dobutamine Hcl'),('PA449383','Taxotere'),('PA449782','Abbenclamide'),('PA449782','Adiab'),('PA451846','Alti-Valproic'),('PA451846','Avugane');
/*!40000 ALTER TABLE `drug_trade_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `full_table`
--

DROP TABLE IF EXISTS `full_table`;
/*!50001 DROP VIEW IF EXISTS `full_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `full_table` (
  `Targeted_Disease` tinyint NOT NULL,
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL,
  `Sequence_Length` tinyint NOT NULL,
  `Alternative_Name` tinyint NOT NULL,
  `HGNC_ID` tinyint NOT NULL,
  `Approved_Symbol` tinyint NOT NULL,
  `Chromosomal_Location` tinyint NOT NULL,
  `Phenotype_MIM_No` tinyint NOT NULL,
  `DOID` tinyint NOT NULL,
  `Disease_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `gene`
--

DROP TABLE IF EXISTS `gene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene` (
  `HGNC_ID` int(11) NOT NULL,
  `Approved_Symbol` varchar(45) NOT NULL,
  `URL_HGNC_ID` varchar(125) NOT NULL,
  `Approved_Name` varchar(125) NOT NULL,
  `Chromosomal_Location` varchar(125) NOT NULL,
  PRIMARY KEY (`HGNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gene`
--

LOCK TABLES `gene` WRITE;
/*!40000 ALTER TABLE `gene` DISABLE KEYS */;
INSERT INTO `gene` VALUES (23,'ABAT ','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=23','4-aminobutyrate aminotransferase ','16p13.2'),(33,'ABCA3','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=33','ATP-binding cassette, sub-family A (ABC1), member 3','16p13.3 '),(59,'ABCC8','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=59','ATP-binding cassette, sub-family C (CFTR/MRP), member 8','11p15.1'),(61,'ABCD1','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=61','ATP-binding cassette, sub-family D (ALD), member 1','Xq28'),(132,'ACTB ','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=132','actin, beta ','7p22 '),(174,'ACVR2B','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=174','activin A receptor, type IIB ','3p22 '),(325,'AGPAT2','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=325','1-acylglycerol-3-phosphate O-acyltransferase 2','9q34.3'),(379,'AKAP9','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=379','A kinase (PRKA) anchor protein 9','7q21-q22'),(391,'AKT1','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=391','v-akt murine thymoma viral oncogene homolog 1','14q32.33'),(397,'ALAS2','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=397','5-aminolevulinate synthase 2','Xp11.21'),(428,'ALMS1','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=428','Alstrom syndrome protein 1','2p13.1'),(566,'AP3B1','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=566','adaptor-related protein complex 3, beta 1 subunit','5q14.1'),(618,'APOL1','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=618','apolipoprotein L, 1','22q13.1'),(634,'AQP2','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=634','aquaporin 2 (collecting duct)','12q12-q13'),(897,'AVPR2','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=897','arginine vasopressin receptor 2','Xq28'),(4195,'GCK','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=4195','glucokinase (hexokinase 4)','7p15.3-p15.1'),(4392,'GNAS','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=4392','GNAS complex locus','20q13.2-q13.3'),(5024,'HNF4A','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=5024','hepatocyte nuclear factor 4, alpha','20q13.12'),(5329,'IAPP','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=5329','islet amyloid polypeptide','12p12.1'),(6081,'INS','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=6081','insulin','11p15.5'),(6107,'PDX1','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=6107','pancreatic and duodenal homeobox 1','13q12.1'),(6257,'KCNJ11','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=6257','potassium channel, inwardly rectifying subfamily J, member 11','11p15.1'),(8822,'PEA15','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=8822','phosphoprotein enriched in astrocytes 15','1q21.1'),(11529,'EPCAM','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=11529','epithelial cell adhesion molecule','2p21'),(11621,'HNF1A','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=11621','HNF1 homeobox A','12q24.31'),(11630,'HNF1B','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=11630','HNF1 homeobox B','17q12'),(15672,'ALG9','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=15672','ALG9, alpha-1,2-mannosyltransferase','11q23'),(15718,'APCDD1','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=15718','adenomatosis polyposis coli down-regulated 1','18p11.21'),(16812,'ADCK3 ','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=16812','aarF domain containing kinase 3','1q42.11 '),(19706,'ADAMTSL4 ','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=19706','ADAMTS-like 4 ','1q21.2 '),(21316,'ANKRD11','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=21316','ankyrin repeat domain 11','16q24.3'),(23093,'SLC16A11','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=23093','solute carrier family 16, member 11','17p13.2'),(24933,'C19orf80','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=24933','chromosome 19 open reading frame 80','19p13.2'),(31037,'SLC16A13','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=31037','solute carrier family 16, member 13','17p13.1');
/*!40000 ALTER TABLE `gene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gene_drug_relationship`
--

DROP TABLE IF EXISTS `gene_drug_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene_drug_relationship` (
  `PharmGKB_Drug_ID` varchar(45) NOT NULL,
  `PharmGKB_Gene_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`PharmGKB_Drug_ID`,`PharmGKB_Gene_ID`),
  KEY `fk_Drug_has_PharmGKB_PharmGKB1_idx` (`PharmGKB_Gene_ID`),
  KEY `fk_Drug_has_PharmGKB_Drug1_idx` (`PharmGKB_Drug_ID`),
  CONSTRAINT `fk_Drug_has_PharmGKB_Drug1` FOREIGN KEY (`PharmGKB_Drug_ID`) REFERENCES `drug` (`PharmGKB_Drug_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Drug_has_PharmGKB_PharmGKB1` FOREIGN KEY (`PharmGKB_Gene_ID`) REFERENCES `pharmgkb` (`PharmGKB_Gene_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gene_drug_relationship`
--

LOCK TABLES `gene_drug_relationship` WRITE;
/*!40000 ALTER TABLE `gene_drug_relationship` DISABLE KEYS */;
INSERT INTO `gene_drug_relationship` VALUES ('PA449014','PA175'),('PA449381','PA175'),('PA449285','PA217'),('PA449782','PA217'),('PA451846','PA24372'),('PA10892','PA24395'),('PA449782','PA24395'),('PA448803','PA24684'),('PA449014','PA24684'),('PA150595617','PA24920'),('PA448785','PA29349'),('PA449383','PA29349'),('PA134308647','PA36380');
/*!40000 ALTER TABLE `gene_drug_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `gene_location_table`
--

DROP TABLE IF EXISTS `gene_location_table`;
/*!50001 DROP VIEW IF EXISTS `gene_location_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `gene_location_table` (
  `HGNC_ID` tinyint NOT NULL,
  `Chromosomal_Location` tinyint NOT NULL,
  `Targeted_Disease` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `gene_synonym`
--

DROP TABLE IF EXISTS `gene_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene_synonym` (
  `HGNC_ID` int(11) NOT NULL,
  `Synonym` varchar(125) NOT NULL,
  PRIMARY KEY (`HGNC_ID`,`Synonym`),
  KEY `fk_Gene_Synonym_Gene1_idx` (`HGNC_ID`),
  CONSTRAINT `fk_Gene_Synonym_Gene1` FOREIGN KEY (`HGNC_ID`) REFERENCES `gene` (`HGNC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gene_synonym`
--

LOCK TABLES `gene_synonym` WRITE;
/*!40000 ALTER TABLE `gene_synonym` DISABLE KEYS */;
INSERT INTO `gene_synonym` VALUES (23,'4-aminobutyrate transaminase'),(23,'GABAT'),(33,'ABC-C,EST111653,LBM180'),(59,'ABC36'),(59,'HHF1'),(59,'HI'),(59,'MRP8'),(59,'PHHI'),(59,'sulfonylurea receptor (hyperinsulinemia)'),(59,'SUR1'),(59,'TNDM2'),(61,'adrenoleukodystrophy'),(61,'ALDP'),(61,'AMN'),(174,'ActR-IIB'),(325,'LPAAT-beta'),(325,'lysophosphatidic acid acyltransferase,beta'),(379,'A-kinase anchor protein,350kDa'),(379,'A-kinase anchoring protein 450'),(379,'AKAP120-like protein'),(379,'AKAP350'),(379,'AKAP450'),(379,'AKAP9-BRAF fusion protein'),(379,'Centrosome- and golgi-localized protein kinase N-associated protein'),(379,'CG-NAP'),(379,'HYPERION'),(379,'KIAA0803'),(379,'LQT11'),(379,'MU-RMS-40.16A'),(379,'PPP1R45'),(379,'PRKA9'),(379,'protein kinase A anchoring protein 9'),(379,'protein phosphatase 1,regulatory subunit 45'),(379,'YOTIAO'),(391,'AKT'),(391,'PKB'),(391,'PRKBA'),(391,'RAC'),(397,'sideroblastic/hypochromic anemia'),(428,'KIAA0328'),(566,'ADTB3A'),(566,'HPS2'),(618,'22q13.1'),(897,'nephrogenic diabetes insipidus'),(897,'V2R'),(4195,'HK4'),(4392,'GNASXL'),(4392,'GPSA'),(4392,'NESP'),(4392,'NESP55'),(4392,'SCG6'),(4392,'secretogranin VI'),(4392,'SgVI'),(5024,'HNF4'),(5024,'NR2A1'),(5329,'AMYLIN'),(5329,'DAP'),(5329,'IAP'),(6107,'IDX-1'),(6107,'MODY4'),(6107,'PDX-1'),(6107,'somatostatin transcription factor 1'),(6107,'STF-1'),(6257,'potassium inwardly-rectifying channel,subfamily J,member 11'),(8822,'HMAT1'),(8822,'homolog of mouse MAT-1 oncogene'),(8822,'HUMMAT1H'),(8822,'MAT1'),(8822,'MAT1H'),(8822,'PEA-15'),(8822,'PED'),(8822,'Phosphoprotein enriched in astrocytes,15kD'),(11529,'17-1A'),(11529,'323/A3'),(11529,'CD326'),(11529,'CO-17A'),(11529,'EGP-2'),(11529,'EGP34'),(11529,'EGP40'),(11529,'Ep-CAM'),(11529,'ESA'),(11529,'GA733-2'),(11529,'HEA125'),(11529,'KS1/4'),(11529,'KSA'),(11529,'Ly74'),(11529,'MH99'),(11529,'MK-1'),(11529,'MOC31'),(11529,'TACST-1'),(11529,'TROP1'),(11621,'HNF1'),(11621,'LFB1'),(11630,'HNF1beta'),(11630,'LFB3'),(11630,'MODY5'),(11630,'VHNF1'),(15672,'dol-P-Man dependent alpha-1,2-mannosyltransferase'),(15672,'dolichyl-P-Man:Man(6)GlcNAc(2)-PP-dolichol alpha-1,2-mannosyltransferase'),(15672,'dolichyl-P-Man:Man(8)GlcNAc(2)-PP-dolichol alpha-1,2-mannosyltransferase'),(15718,'B7323'),(16812,'coenzyme Q8 homolog (yeast)'),(16812,'COQ8'),(16812,'SCAR9'),(19706,'DKFZP434K1772'),(21316,'LZ16'),(21316,'T13'),(23093,'FLJ90193'),(23093,'MCT11'),(23093,'monocarboxylic acid transporter 11'),(24933,'ANGPTL8'),(24933,'betatrophin'),(24933,'lipasin'),(24933,'RIFL'),(24933,'TD26'),(31037,'MCT13'),(31037,'monocarboxylic acid transporter 13');
/*!40000 ALTER TABLE `gene_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `gene_td_table`
--

DROP TABLE IF EXISTS `gene_td_table`;
/*!50001 DROP VIEW IF EXISTS `gene_td_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `gene_td_table` (
  `HGNC_ID` tinyint NOT NULL,
  `URL_HGNC_ID` tinyint NOT NULL,
  `Approved_Symbol` tinyint NOT NULL,
  `Chromosomal_Location` tinyint NOT NULL,
  `Targeted_Disease` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pancreas_disease_involved_disease_table`
--

DROP TABLE IF EXISTS `pancreas_disease_involved_disease_table`;
/*!50001 DROP VIEW IF EXISTS `pancreas_disease_involved_disease_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `pancreas_disease_involved_disease_table` (
  `DOID` tinyint NOT NULL,
  `Disease_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pancreas_disease_table`
--

DROP TABLE IF EXISTS `pancreas_disease_table`;
/*!50001 DROP VIEW IF EXISTS `pancreas_disease_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `pancreas_disease_table` (
  `Targeted_Disease` tinyint NOT NULL,
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL,
  `Sequence_Length` tinyint NOT NULL,
  `Alternative_Name` tinyint NOT NULL,
  `HGNC_ID` tinyint NOT NULL,
  `Approved_Symbol` tinyint NOT NULL,
  `Chromosomal_Location` tinyint NOT NULL,
  `Phenotype_MIM_No` tinyint NOT NULL,
  `DOID` tinyint NOT NULL,
  `Disease_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pharmgkb`
--

DROP TABLE IF EXISTS `pharmgkb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pharmgkb` (
  `PharmGKB_Gene_ID` varchar(45) NOT NULL,
  `HGNC_ID` int(11) NOT NULL,
  PRIMARY KEY (`PharmGKB_Gene_ID`),
  KEY `fk_PharmGKB_Gene1_idx` (`HGNC_ID`),
  CONSTRAINT `fk_PharmGKB_Gene1` FOREIGN KEY (`HGNC_ID`) REFERENCES `gene` (`HGNC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmgkb`
--

LOCK TABLES `pharmgkb` WRITE;
/*!40000 ALTER TABLE `pharmgkb` DISABLE KEYS */;
INSERT INTO `pharmgkb` VALUES ('PA24372',23),('PA24378',33),('PA24395',59),('PA24396',61),('PA24457',132),('PA24495',174),('PA24622',325),('PA24673',379),('PA24684',391),('PA24689',397),('PA24721',428),('PA24857',566),('PA24904',618),('PA24920',634),('PA25189',897),('PA28610',4195),('PA175',4392),('PA29349',5024),('PA29579',5329),('PA201',6081),('PA162399173',6107),('PA217',6257),('PA33166',8822),('PA35493',11529),('PA36380',11621),('PA162391083',11630),('PA134887582',15672),('PA24876',15718),('PA25999',16812),('PA134879921',19706),('PA134861925',21316),('PA134976903',23093),('PA166048965',24933),('PA134991782',31037);
/*!40000 ALTER TABLE `pharmgkb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `phenotype_protein_table`
--

DROP TABLE IF EXISTS `phenotype_protein_table`;
/*!50001 DROP VIEW IF EXISTS `phenotype_protein_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `phenotype_protein_table` (
  `Phenotype_MIM_No` tinyint NOT NULL,
  `UniPro_Disease_Name` tinyint NOT NULL,
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `protein`
--

DROP TABLE IF EXISTS `protein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protein` (
  `UniProtKB_Entry` varchar(45) NOT NULL,
  `HGNC_ID` int(11) NOT NULL,
  `Protein_Name` varchar(45) NOT NULL,
  `Item_No` int(11) NOT NULL,
  `Data_Collected_by` varchar(45) NOT NULL,
  `Targeted_Disease` varchar(45) NOT NULL,
  `URL_UniProtKB_Entry` varchar(125) NOT NULL,
  `Sequence_Length` int(11) NOT NULL,
  `Mass` int(11) NOT NULL,
  `UniProt_Gene_Name` varchar(125) NOT NULL,
  PRIMARY KEY (`UniProtKB_Entry`),
  KEY `fk_Protein_Gene1_idx` (`HGNC_ID`),
  CONSTRAINT `fk_Protein_Gene1` FOREIGN KEY (`HGNC_ID`) REFERENCES `gene` (`HGNC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protein`
--

LOCK TABLES `protein` WRITE;
/*!40000 ALTER TABLE `protein` DISABLE KEYS */;
INSERT INTO `protein` VALUES ('O00203',566,'AP-3 complex subunit beta-1',18,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/O00203',1094,121320,'AP3B1'),('O14791',618,'Apolipoprotein L1',20,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/O14791',398,43974,'APOL1'),('O15120',325,'1-acyl-sn-glycerol-3-phosphate acyltransferas',11,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/O15120',278,30914,'AGPAT2'),('P01308',6081,'Insulin',31,'j.li','diabetes','http://www.uniprot.org/uniprot/P01308',110,11981,'INS'),('P10997',5329,'Islet amyloid polypeptide',21,'j.li','diabetes','http://www.uniprot.org/uniprot/P10997',89,9806,'IAPP'),('P16422',11529,'Epithelial cell adhesion molecule',3,'s.chen','colon cancer','http://www.uniprot.org/uniprot/P16422',314,34932,'EPCAM'),('P20823',11621,'Hepatocyte nuclear factor 1-alpha',28,'j.li','diabetes','http://www.uniprot.org/uniprot/P20823',631,67356,'HNF1A'),('P22557',397,'5-aminolevulinate synthase, erythroid-specifi',14,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/P22557',587,64633,'ALAS2'),('P30518',897,'Vasopressin V2 receptor',27,'j.li','diabetes','http://www.uniprot.org/uniprot/P30518',371,40279,'AVPR2'),('P31749',391,'RAC-alpha serine/threonine-protein kinase',1,'s.chen','colon cancer','http://www.uniprot.org/uniprot/P31749',480,55686,'AKT1'),('P33897',61,'ATP-binding cassette sub-family D member 1',7,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/P33897',745,82937,'ABCD1, ALD'),('P35557',4195,'Glucokinase',34,'j.li','diabetes','http://www.uniprot.org/uniprot/P35557',465,52191,'GCK'),('P35680',11630,'Hepatocyte nuclear factor 1-beta',29,'j.li','diabetes','http://www.uniprot.org/uniprot/P35680',557,61324,'HNF1B'),('P41181',634,'Aquaporin-2',25,'j.li','diabetes','http://www.uniprot.org/uniprot/P41181',271,28837,'AQP2'),('P41235',5024,'Hepatocyte nuclear factor 4-alpha',36,'j.li','diabetes','http://www.uniprot.org/uniprot/P41235',474,52785,'HNF4A'),('P52945',6107,'Pancreas/duodenum homeobox protein 1',32,'j.li','diabetes','http://www.uniprot.org/uniprot/P52945',283,30771,'PDX1'),('P60709',132,'Actin, cytoplasmic 1',6,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/P60709',375,41737,'ACTB'),('P80404',23,'4-aminobutyrate aminotransferase, mitochondri',4,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/P80404',500,56439,'ABAT, GABAT'),('P84996',4392,'Protein ALEX',2,'s.chen','colon cancer','http://www.uniprot.org/uniprot/P84996',626,67948,'GNAS'),('Q09428',59,'ATP-binding cassette sub-family C member 8',23,'j.li','diabetes','http://www.uniprot.org/uniprot/Q09428',1581,176992,'ABCC8'),('Q13705',174,'Activin receptor type-2B',8,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q13705',512,57724,'ACVR2B'),('Q14654',6257,'ATP-sensitive inward rectifier potassium chan',24,'j.li','diabetes','http://www.uniprot.org/uniprot/Q14654',390,43541,'KCNJ11'),('Q15121',8822,'Astrocytic phosphoprotein PEA-15',22,'j.li','diabetes','http://www.uniprot.org/uniprot/Q15121',130,15040,'PEA15'),('Q6UB99',21316,'Ankyrin repeat domain-containing protein 11',17,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q6UB99',2663,297913,'ANKRD11'),('Q6UXH0',24933,'Angiopoietin-like protein 8',30,'j.li','diabetes','http://www.uniprot.org/uniprot/Q6UXH0',198,22105,'C19orf80'),('Q6UY14',19706,'ADAMTS-like protein 4',9,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q6UY14',1074,116545,'ADAMTSL4, TSRC1, PP1396, UNQ2803/PRO34012'),('Q7RTY0',31037,'Monocarboxylate transporter 13',26,'j.li','diabetes','http://www.uniprot.org/uniprot/Q7RTY0',426,44992,'SLC16A13'),('Q8J025',15718,'Protein APCDD1',19,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q8J025',514,58797,'APCDD1'),('Q8NCK7',23093,'Monocarboxylate transporter 11',33,'j.li','diabetes','http://www.uniprot.org/uniprot/Q8NCK7',471,47791,'SLC16A11'),('Q8NI60',16812,'Atypical kinase ADCK3, mitochondrial',10,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q8NI60',647,71950,'ADCK3, CABC1, PP265'),('Q8TCU4',428,'Alstrom syndrome protein 1',16,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q8TCU4',4167,460965,'ALMS1'),('Q99758',33,'ATP-binding cassette sub-family A member 3',5,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q99758',1704,191362,'ABCA3, ABC3'),('Q99996',379,'A-kinase anchor protein 9',12,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q99996',3911,453667,'AKAP1'),('Q9H6U8',15672,'Alpha-1,2-mannosyltransferase ALG9',15,'x.zhu','Pancreas Disease','http://www.uniprot.org/uniprot/Q9H6U8',611,69863,'ALG9');
/*!40000 ALTER TABLE `protein` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `protein_disease_table`
--

DROP TABLE IF EXISTS `protein_disease_table`;
/*!50001 DROP VIEW IF EXISTS `protein_disease_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `protein_disease_table` (
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL,
  `DOID` tinyint NOT NULL,
  `Disease_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `protein_do_table`
--

DROP TABLE IF EXISTS `protein_do_table`;
/*!50001 DROP VIEW IF EXISTS `protein_do_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `protein_do_table` (
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL,
  `DOID` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `protein_synonym`
--

DROP TABLE IF EXISTS `protein_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protein_synonym` (
  `UniProtKB_Entry` varchar(45) NOT NULL,
  `Alternative_Name` varchar(125) NOT NULL,
  PRIMARY KEY (`UniProtKB_Entry`,`Alternative_Name`),
  KEY `fk_Protein_Synonym_Protein1_idx` (`UniProtKB_Entry`),
  CONSTRAINT `fk_Protein_Synonym_Protein1` FOREIGN KEY (`UniProtKB_Entry`) REFERENCES `protein` (`UniProtKB_Entry`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protein_synonym`
--

LOCK TABLES `protein_synonym` WRITE;
/*!40000 ALTER TABLE `protein_synonym` DISABLE KEYS */;
INSERT INTO `protein_synonym` VALUES ('O00203','Adaptor protein complex AP-3 subunit beta-1'),('O00203','Adaptor-related protein complex 3 subunit beta-1'),('O00203','Beta-3A-adaptin'),('O00203','Clathrin assembly protein complex 3 beta-1 large chain'),('O14791','Apolipoprotein L'),('O14791','Apolipoprotein L-I'),('O15120','1-acylglycerol-3-phosphate O-acyltransferase 2'),('O15120','Lysophosphatidic acid acyltransferase beta'),('P10997','Amylin Diabetes-associated peptide'),('P20823','Liver-specific transcription factor LF-B1'),('P20823','Transcription factor 1'),('P22557','5-aminolevulinic acid synthase 2'),('P22557','Delta-ALA synthase 2'),('P22557','Delta-aminolevulinate synthase 2'),('P30518','Antidiuretic hormone receptor'),('P30518','AVPR V2'),('P30518','Renal-type arginine vasopressin receptor'),('P31749','Protein kinase B'),('P31749','Protein kinase B alpha'),('P31749','Proto-oncogene c-Akt'),('P31749','RAC-PK-alpha'),('P33897','Adrenoleukodystrophy protein'),('P35557','Hexokinase type IV'),('P35557','Hexokinase-4'),('P35557','Hexokinase-D'),('P35680','Homeoprotein LFB3'),('P35680','Transcription factor 2'),('P35680','Variant hepatic nuclear factor 1'),('P41181','ADH water channel'),('P41181','Aquaporin-CD'),('P41181','Collecting duct water channel protein'),('P41181','WCH-CD'),('P41235','Nuclear receptor subfamily 2 group A member 1'),('P41235','Transcription factor 14'),('P41235','Transcription factor HNF-4'),('P52945','Glucose-sensitive factor'),('P52945','Insulin promoter factor 1'),('P52945','Insulin upstream factor 1'),('P52945','Islet/duodenum homeobox-1'),('P52945','Somatostatin-transactivating factor 1'),('P60709','Beta-actin'),('P80404','(S)-3-amino-2-methylpropionate transaminase'),('P80404','GABA aminotransferase'),('P80404','Gamma-amino-N-butyrate transaminase'),('P80404','L-AIBAT'),('Q09428','Sulfonylurea receptor 1'),('Q13705','Activin receptor type IIB'),('Q14654','IKATP'),('Q14654','Inward rectifier K(+) channel Kir6.2'),('Q14654','inwardly rectifying subfamily J member 11'),('Q14654','Potassium channel'),('Q15121','15 kDa phosphoprotein enriched in astrocytes'),('Q15121','Phosphoprotein enriched in diabetes'),('Q6UB99','Ankyrin repeat-containing cofactor 1'),('Q6UXH0','Betatrophin'),('Q6UXH0','Lipasin'),('Q6UXH0','Refeeding-induced fat and liver protein'),('Q6UY14','Thrombospondin repeat-containing protein 1'),('Q7RTY0','Solute carrier family 16 member 13'),('Q8J025','Adenomatosis polyposis coli down-regulated 1 protein'),('Q8NCK7','Solute carrier family 16 member 11'),('Q8NI60','aarF domain-containing protein kinase 3'),('Q8NI60','Chaperone activity of bc1 complex-like'),('Q99758','ABC-C transporter'),('Q99758','ATP-binding cassette transporter 3'),('Q99996','A-kinase anchor protein 350 kDa'),('Q99996','A-kinase anchor protein 450 kDa'),('Q99996','Centrosome- and Golgi-localized PKN-associated protein'),('Q99996','Protein hyperion'),('Q99996','Protein kinase A-anchoring protein 9'),('Q99996','Protein yotiao'),('Q9H6U8','Asparagine-linked glycosylation protein 9 homolog'),('Q9H6U8','Disrupted in bipolar disorder protein 1'),('Q9H6U8','Dol-P-Man:Man(6)GlcNAc(2)-PP-Dol alpha-1,2-mannosyltransferase'),('Q9H6U8','Dol-P-Man:Man(8)GlcNAc(2)-PP-Dol alpha-1,2-mannosyltransferase');
/*!40000 ALTER TABLE `protein_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `protein_synonym_table`
--

DROP TABLE IF EXISTS `protein_synonym_table`;
/*!50001 DROP VIEW IF EXISTS `protein_synonym_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `protein_synonym_table` (
  `UniProtKB_Entry` tinyint NOT NULL,
  `Protein_Name` tinyint NOT NULL,
  `Alternative_Name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pubchem_compound`
--

DROP TABLE IF EXISTS `pubchem_compound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubchem_compound` (
  `PubChem_CID` int(11) NOT NULL,
  `Molecular_Formular` varchar(45) NOT NULL,
  PRIMARY KEY (`PubChem_CID`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pubchem_compound`
--

LOCK TABLES `pubchem_compound` WRITE;
/*!40000 ALTER TABLE `pubchem_compound` DISABLE KEYS */;
INSERT INTO `pubchem_compound` VALUES (2554,'C15H12N2O'),(3019,'C8H7ClN2O2S'),(3121,'C8H16O2'),(3475,'C15H21N3O3S'),(3488,'C23H28ClN3O5S'),(36811,'C18H23NO3'),(38904,'C6H14N2O4Pt'),(148124,'C43H53NO14'),(441203,'Cl2H6N2Pt+2'),(6439133,'C22H28FN3O6S');
/*!40000 ALTER TABLE `pubchem_compound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniprot_omim_do_relationship`
--

DROP TABLE IF EXISTS `uniprot_omim_do_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniprot_omim_do_relationship` (
  `UniProtKB_Entry` varchar(45) NOT NULL,
  `Phenotype_MIM_No` int(11) NOT NULL,
  `DOID` int(11) NOT NULL,
  PRIMARY KEY (`UniProtKB_Entry`,`Phenotype_MIM_No`,`DOID`),
  KEY `fk_UniPort_OMIM_DO_Relationship_Disease_Ontology1_idx` (`DOID`),
  CONSTRAINT `fk_UniPort_OMIM_DO_Relationship_Disease_Ontology1` FOREIGN KEY (`DOID`) REFERENCES `disease_ontology` (`DOID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_UniPort_OMIM_DO_Relationship_UniProt_OMIM_Relationship1` FOREIGN KEY (`UniProtKB_Entry`, `Phenotype_MIM_No`) REFERENCES `uniprot_omim_relationship` (`UniProtKB_Entry`, `Phenotype_MIM_No`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniprot_omim_do_relationship`
--

LOCK TABLES `uniprot_omim_do_relationship` WRITE;
/*!40000 ALTER TABLE `uniprot_omim_do_relationship` DISABLE KEYS */;
INSERT INTO `uniprot_omim_do_relationship` VALUES ('Q8NI60',612016,1441),('P31749',114500,1520),('P84996',114500,1520),('P31749',114480,1612),('Q99996',611820,2843),('O00203',608233,3753),('P16422',613244,3883),('Q8J025',605389,4535),('P31749',114500,9256),('P84996',114500,9256),('P41235',125853,9352),('P52945',125853,9352),('Q6UXH0',125853,9352),('Q7RTY0',125853,9352),('Q8NCK7',125853,9352),('P01308',125852,9744),('P20823',612520,9744),('Q6UXH0',222100,9744),('P33897',300100,10588),('Q99758',610921,12120),('P30518',304800,12387),('P41181',125800,12387),('P35557',602485,13317),('P80404',256450,13317),('Q09428',256450,13317),('Q14654',601820,13317),('P01308',613370,50524),('P20823',600496,50524),('P35557',125851,50524),('P35680',137920,50524),('P41235',125850,50524),('P52945',606392,50524),('Q13705',613751,50545),('Q9H6U8',608776,50570),('O15120',608594,50585),('Q8NI60',612016,50730),('P52945',260370,50877),('P22557',300751,60063),('P80404',613163,60174),('P60709',243310,60229),('Q09428',610374,60334),('Q14654',610582,60334),('Q6UB99',148050,148050),('Q8TCU4',203800,203800),('O14791',612551,612551);
/*!40000 ALTER TABLE `uniprot_omim_do_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniprot_omim_relationship`
--

DROP TABLE IF EXISTS `uniprot_omim_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniprot_omim_relationship` (
  `UniProtKB_Entry` varchar(45) NOT NULL,
  `Phenotype_MIM_No` int(11) NOT NULL,
  `UniPro_Disease_Name` varchar(125) NOT NULL,
  PRIMARY KEY (`UniProtKB_Entry`,`Phenotype_MIM_No`),
  KEY `fk_UniProt_OMIM_Relationship_Protein_idx` (`UniProtKB_Entry`),
  CONSTRAINT `fk_UniProt_OMIM_Relationship_Protein` FOREIGN KEY (`UniProtKB_Entry`) REFERENCES `protein` (`UniProtKB_Entry`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniprot_omim_relationship`
--

LOCK TABLES `uniprot_omim_relationship` WRITE;
/*!40000 ALTER TABLE `uniprot_omim_relationship` DISABLE KEYS */;
INSERT INTO `uniprot_omim_relationship` VALUES ('O00203',608233,'Hermansky-Pudlak syndrome 2 (HPS2)'),('O14791',612551,'Focal segmental glomerulosclerosis 4 (FSGS4)'),('O15120',608594,'Congenital generalized lipodystrophy 1 (CGL1)'),('P01308',125852,'Diabetes mellitus, insulin-dependent, 2 (IDDM2)'),('P01308',606176,'Diabetes mellitus, permanent neonatal (PNDM)'),('P01308',613370,'Maturity-onset diabetes of the young 10 (MODY10)'),('P01308',616214,'Hyperproinsulinemia (HPRI)'),('P16422',613244,'Hereditary non-polyposis colorectal cancer 8 (HNPCC8)'),('P20823',142330,'Hepatic adenomas familial (HEPAF)'),('P20823',600496,'Maturity-onset diabetes of the young 3 (MODY3)'),('P20823',612520,'Diabetes mellitus, insulin-dependent, 20 (IDDM20)'),('P22557',300751,'Anemia, sideroblastic, X-linked (XLSA)'),('P30518',300539,'Nephrogenic syndrome of inappropriate antidiuresis (NSIAD)'),('P30518',304800,'Diabetes insipidus, nephrogenic, X-linked (XNDI)'),('P31749',114480,'Breast cancer (BC)'),('P31749',114500,'Colorectal cancer (CRC)'),('P33897',300100,'Adrenoleukodystrophy (ALD)'),('P35557',125851,'Maturity-onset diabetes of the young 2 (MODY2)'),('P35557',602485,'Familial hyperinsulinemic hypoglycemia 3 (HHF3)'),('P35680',137920,'Renal cysts and diabetes syndrome (RCAD)'),('P41181',125800,'Diabetes insipidus, nephrogenic, autosomal (ANDI)'),('P41235',125850,'Maturity-onset diabetes of the young 1 (MODY1)'),('P41235',125853,'Diabetes mellitus, non-insulin-dependent (NIDDM)'),('P41235',616026,'Fanconi renotubular syndrome 4 with maturity-onset diabetes of the young (FRTS4)'),('P52945',125853,'Diabetes mellitus, non-insulin-dependent (NIDDM)'),('P52945',260370,'Pancreatic agenesis 1 (PAGEN1）'),('P52945',606392,'Maturity-onset diabetes of the young 4 (MODY4)'),('P60709',243310,'Baraitser-Winter syndrome 1 (BRWS1)'),('P80404',256450,'Familial hyperinsulinemic hypoglycemia 1 (HHF1)'),('P80404',613163,'GABA transaminase deficiency (GABATD)'),('P84996',114500,'Colorectal cancer (CRC)'),('P84996',139320,'GNAS hyperfunction (GNASHYP)'),('P84996',603233,'Pseudohypoparathyroidism 1B (PHP1B)'),('Q09428',240800,'Leucine-induced hypoglycemia (LIH)'),('Q09428',256450,'Familial hyperinsulinemic hypoglycemia 1 (HHF1)'),('Q09428',606176,'Diabetes mellitus, permanent neonatal (PNDM)'),('Q09428',610374,'Transient neonatal diabetes mellitus 2(TNDM2)'),('Q13705',613751,'Heterotaxy, visceral, 4, autosomal (HTX4)'),('Q14654',601820,'Familial hyperinsulinemic hypoglycemia 2 (HHF2)'),('Q14654',606176,'Diabetes mellitus, permanent neonatal (PNDM)'),('Q14654',610582,'Transient neonatal diabetes mellitus 3 (TNDM3)'),('Q6UB99',148050,'KBG syndrome (KBGS)'),('Q6UXH0',125853,'Diabetes mellitus, non-insulin-dependent (NIDDM)'),('Q6UXH0',222100,'Diabetes mellitus, insulin-dependent (IDDM)'),('Q6UY14',225100,'Ectopia lentis 2, isolated, autosomal recessive (ECTOL2)'),('Q6UY14',225200,'Ectopia lentis et pupillae (ECTOLP)'),('Q7RTY0',125853,'Diabetes mellitus, non-insulin-dependent (NIDDM)'),('Q8J025',605389,'Hypotrichosis 1 (HYPT1)'),('Q8NCK7',125853,'Diabetes mellitus, non-insulin-dependent (NIDDM)'),('Q8NI60',612016,'Coenzyme Q10 deficiency, primary, 4 (COQ10D4)'),('Q8TCU4',203800,'Alstrom syndrome (ALMS)'),('Q99758',610921,'Pulmonary surfactant metabolism dysfunction 3 (SMDP3)'),('Q99996',611820,'Long QT syndrome 11 (LQT11)'),('Q99996',615970,'Alpha-fetoprotein, hereditary persistence (HPAFP)'),('Q9H6U8',608776,'Congenital disorder of glycosylation 1L (CDG1L)');
/*!40000 ALTER TABLE `uniprot_omim_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `diabetes_involved_disease_table`
--

/*!50001 DROP TABLE IF EXISTS `diabetes_involved_disease_table`*/;
/*!50001 DROP VIEW IF EXISTS `diabetes_involved_disease_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `diabetes_involved_disease_table` AS select distinct `diabetes_table`.`DOID` AS `DOID`,`diabetes_table`.`Disease_Name` AS `Disease_Name` from `diabetes_table` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `diabetes_table`
--

/*!50001 DROP TABLE IF EXISTS `diabetes_table`*/;
/*!50001 DROP VIEW IF EXISTS `diabetes_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `diabetes_table` AS select `p`.`Targeted_Disease` AS `Targeted_Disease`,`p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`p`.`Protein_Name` AS `Protein_Name`,`p`.`Sequence_Length` AS `Sequence_Length`,group_concat(distinct `ps`.`Alternative_Name` separator ',') AS `Alternative_Name`,`g`.`HGNC_ID` AS `HGNC_ID`,`g`.`Approved_Symbol` AS `Approved_Symbol`,`g`.`Chromosomal_Location` AS `Chromosomal_Location`,`m`.`Phenotype_MIM_No` AS `Phenotype_MIM_No`,`dod`.`DOID` AS `DOID`,`diso`.`Disease_Name` AS `Disease_Name` from (((((`protein` `p` join `gene` `g` on((`p`.`HGNC_ID` = `g`.`HGNC_ID`))) left join `protein_synonym` `ps` on((`p`.`UniProtKB_Entry` = `ps`.`UniProtKB_Entry`))) join `uniprot_omim_relationship` `m` on((`p`.`UniProtKB_Entry` = `m`.`UniProtKB_Entry`))) join `uniprot_omim_do_relationship` `dod` on(((`m`.`UniProtKB_Entry` = `dod`.`UniProtKB_Entry`) and (`m`.`Phenotype_MIM_No` = `dod`.`Phenotype_MIM_No`)))) join `disease_ontology` `diso` on((`dod`.`DOID` = `diso`.`DOID`))) where (`p`.`Targeted_Disease` = 'diabetes') group by `p`.`UniProtKB_Entry` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `distinct_phynotype_table`
--

/*!50001 DROP TABLE IF EXISTS `distinct_phynotype_table`*/;
/*!50001 DROP VIEW IF EXISTS `distinct_phynotype_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `distinct_phynotype_table` AS select distinct `diabetes_table`.`Phenotype_MIM_No` AS `Phenotype_MIM_No` from `diabetes_table` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `distinct_protein_table`
--

/*!50001 DROP TABLE IF EXISTS `distinct_protein_table`*/;
/*!50001 DROP VIEW IF EXISTS `distinct_protein_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `distinct_protein_table` AS select distinct `diabetes_table`.`UniProtKB_Entry` AS `UniProtKB_Entry` from `diabetes_table` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `full_table`
--

/*!50001 DROP TABLE IF EXISTS `full_table`*/;
/*!50001 DROP VIEW IF EXISTS `full_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `full_table` AS (select `p`.`Targeted_Disease` AS `Targeted_Disease`,`p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`p`.`Protein_Name` AS `Protein_Name`,`p`.`Sequence_Length` AS `Sequence_Length`,group_concat(distinct `ps`.`Alternative_Name` separator ',') AS `Alternative_Name`,`g`.`HGNC_ID` AS `HGNC_ID`,`g`.`Approved_Symbol` AS `Approved_Symbol`,`g`.`Chromosomal_Location` AS `Chromosomal_Location`,`m`.`Phenotype_MIM_No` AS `Phenotype_MIM_No`,`dod`.`DOID` AS `DOID`,`diso`.`Disease_Name` AS `Disease_Name` from (((((`protein` `p` join `gene` `g` on((`p`.`HGNC_ID` = `g`.`HGNC_ID`))) left join `protein_synonym` `ps` on((`p`.`UniProtKB_Entry` = `ps`.`UniProtKB_Entry`))) join `uniprot_omim_relationship` `m` on((`p`.`UniProtKB_Entry` = `m`.`UniProtKB_Entry`))) join `uniprot_omim_do_relationship` `dod` on(((`m`.`UniProtKB_Entry` = `dod`.`UniProtKB_Entry`) and (`m`.`Phenotype_MIM_No` = `dod`.`Phenotype_MIM_No`)))) join `disease_ontology` `diso` on((`dod`.`DOID` = `diso`.`DOID`))) where (`p`.`Targeted_Disease` = 'diabetes') group by `p`.`UniProtKB_Entry`) union all (select `p`.`Targeted_Disease` AS `Targeted_Disease`,`p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`p`.`Protein_Name` AS `Protein_Name`,`p`.`Sequence_Length` AS `Sequence_Length`,group_concat(distinct `ps`.`Alternative_Name` separator ',') AS `group_concat(distinct ps.Alternative_Name)`,`g`.`HGNC_ID` AS `HGNC_ID`,`g`.`Approved_Symbol` AS `Approved_Symbol`,`g`.`Chromosomal_Location` AS `Chromosomal_Location`,`m`.`Phenotype_MIM_No` AS `Phenotype_MIM_No`,`dod`.`DOID` AS `DOID`,`diso`.`Disease_Name` AS `Disease_Name` from (((((`protein` `p` join `gene` `g` on((`p`.`HGNC_ID` = `g`.`HGNC_ID`))) left join `protein_synonym` `ps` on((`p`.`UniProtKB_Entry` = `ps`.`UniProtKB_Entry`))) join `uniprot_omim_relationship` `m` on((`p`.`UniProtKB_Entry` = `m`.`UniProtKB_Entry`))) join `uniprot_omim_do_relationship` `dod` on(((`m`.`UniProtKB_Entry` = `dod`.`UniProtKB_Entry`) and (`m`.`Phenotype_MIM_No` = `dod`.`Phenotype_MIM_No`)))) join `disease_ontology` `diso` on((`dod`.`DOID` = `diso`.`DOID`))) where (`p`.`Targeted_Disease` = 'Pancreas Disease') group by `p`.`UniProtKB_Entry`) union all (select `p`.`Targeted_Disease` AS `Targeted_Disease`,`p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`p`.`Protein_Name` AS `Protein_Name`,`p`.`Sequence_Length` AS `Sequence_Length`,group_concat(distinct `ps`.`Alternative_Name` separator ',') AS `group_concat(distinct ps.Alternative_Name)`,`g`.`HGNC_ID` AS `HGNC_ID`,`g`.`Approved_Symbol` AS `Approved_Symbol`,`g`.`Chromosomal_Location` AS `Chromosomal_Location`,`m`.`Phenotype_MIM_No` AS `Phenotype_MIM_No`,`dod`.`DOID` AS `DOID`,`diso`.`Disease_Name` AS `Disease_Name` from (((((`protein` `p` join `gene` `g` on((`p`.`HGNC_ID` = `g`.`HGNC_ID`))) left join `protein_synonym` `ps` on((`p`.`UniProtKB_Entry` = `ps`.`UniProtKB_Entry`))) join `uniprot_omim_relationship` `m` on((`p`.`UniProtKB_Entry` = `m`.`UniProtKB_Entry`))) join `uniprot_omim_do_relationship` `dod` on(((`m`.`UniProtKB_Entry` = `dod`.`UniProtKB_Entry`) and (`m`.`Phenotype_MIM_No` = `dod`.`Phenotype_MIM_No`)))) join `disease_ontology` `diso` on((`dod`.`DOID` = `diso`.`DOID`))) where (`p`.`Targeted_Disease` = 'Colon Cancer') group by `p`.`UniProtKB_Entry`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gene_location_table`
--

/*!50001 DROP TABLE IF EXISTS `gene_location_table`*/;
/*!50001 DROP VIEW IF EXISTS `gene_location_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gene_location_table` AS select `p`.`HGNC_ID` AS `HGNC_ID`,`p`.`Chromosomal_Location` AS `Chromosomal_Location`,`ps`.`Targeted_Disease` AS `Targeted_Disease` from (`gene` `p` join `protein` `ps` on((`p`.`HGNC_ID` = `ps`.`HGNC_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gene_td_table`
--

/*!50001 DROP TABLE IF EXISTS `gene_td_table`*/;
/*!50001 DROP VIEW IF EXISTS `gene_td_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gene_td_table` AS select `p`.`HGNC_ID` AS `HGNC_ID`,`p`.`URL_HGNC_ID` AS `URL_HGNC_ID`,`p`.`Approved_Symbol` AS `Approved_Symbol`,`p`.`Chromosomal_Location` AS `Chromosomal_Location`,`ps`.`Targeted_Disease` AS `Targeted_Disease` from (`gene` `p` join `protein` `ps` on((`p`.`HGNC_ID` = `ps`.`HGNC_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pancreas_disease_involved_disease_table`
--

/*!50001 DROP TABLE IF EXISTS `pancreas_disease_involved_disease_table`*/;
/*!50001 DROP VIEW IF EXISTS `pancreas_disease_involved_disease_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pancreas_disease_involved_disease_table` AS select distinct `pancreas_disease_table`.`DOID` AS `DOID`,`pancreas_disease_table`.`Disease_Name` AS `Disease_Name` from `pancreas_disease_table` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pancreas_disease_table`
--

/*!50001 DROP TABLE IF EXISTS `pancreas_disease_table`*/;
/*!50001 DROP VIEW IF EXISTS `pancreas_disease_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pancreas_disease_table` AS select `p`.`Targeted_Disease` AS `Targeted_Disease`,`p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`p`.`Protein_Name` AS `Protein_Name`,`p`.`Sequence_Length` AS `Sequence_Length`,group_concat(distinct `ps`.`Alternative_Name` separator ',') AS `Alternative_Name`,`g`.`HGNC_ID` AS `HGNC_ID`,`g`.`Approved_Symbol` AS `Approved_Symbol`,`g`.`Chromosomal_Location` AS `Chromosomal_Location`,`m`.`Phenotype_MIM_No` AS `Phenotype_MIM_No`,`dod`.`DOID` AS `DOID`,`diso`.`Disease_Name` AS `Disease_Name` from (((((`protein` `p` join `gene` `g` on((`p`.`HGNC_ID` = `g`.`HGNC_ID`))) left join `protein_synonym` `ps` on((`p`.`UniProtKB_Entry` = `ps`.`UniProtKB_Entry`))) join `uniprot_omim_relationship` `m` on((`p`.`UniProtKB_Entry` = `m`.`UniProtKB_Entry`))) join `uniprot_omim_do_relationship` `dod` on(((`m`.`UniProtKB_Entry` = `dod`.`UniProtKB_Entry`) and (`m`.`Phenotype_MIM_No` = `dod`.`Phenotype_MIM_No`)))) join `disease_ontology` `diso` on((`dod`.`DOID` = `diso`.`DOID`))) where (`p`.`Targeted_Disease` = 'Pancreas Disease') group by `p`.`UniProtKB_Entry` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `phenotype_protein_table`
--

/*!50001 DROP TABLE IF EXISTS `phenotype_protein_table`*/;
/*!50001 DROP VIEW IF EXISTS `phenotype_protein_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `phenotype_protein_table` AS select `p`.`Phenotype_MIM_No` AS `Phenotype_MIM_No`,`p`.`UniPro_Disease_Name` AS `UniPro_Disease_Name`,`p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`ps`.`Protein_Name` AS `Protein_Name` from (`uniprot_omim_relationship` `p` join `protein` `ps` on((`p`.`UniProtKB_Entry` = `ps`.`UniProtKB_Entry`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `protein_disease_table`
--

/*!50001 DROP TABLE IF EXISTS `protein_disease_table`*/;
/*!50001 DROP VIEW IF EXISTS `protein_disease_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `protein_disease_table` AS select `p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`p`.`Protein_Name` AS `Protein_Name`,`p`.`DOID` AS `DOID`,`pd`.`Disease_Name` AS `Disease_Name` from (`protein_do_table` `p` join `disease_ontology` `pd` on((`p`.`DOID` = `pd`.`DOID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `protein_do_table`
--

/*!50001 DROP TABLE IF EXISTS `protein_do_table`*/;
/*!50001 DROP VIEW IF EXISTS `protein_do_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `protein_do_table` AS select `p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`p`.`Protein_Name` AS `Protein_Name`,`ps`.`DOID` AS `DOID` from (`protein` `p` join `uniprot_omim_do_relationship` `ps` on((`p`.`UniProtKB_Entry` = `ps`.`UniProtKB_Entry`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `protein_synonym_table`
--

/*!50001 DROP TABLE IF EXISTS `protein_synonym_table`*/;
/*!50001 DROP VIEW IF EXISTS `protein_synonym_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `protein_synonym_table` AS select `p`.`UniProtKB_Entry` AS `UniProtKB_Entry`,`p`.`Protein_Name` AS `Protein_Name`,`ps`.`Alternative_Name` AS `Alternative_Name` from (`protein` `p` join `protein_synonym` `ps` on((`p`.`UniProtKB_Entry` = `ps`.`UniProtKB_Entry`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-09 16:12:02
