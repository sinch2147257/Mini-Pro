
create database ianb;
use ianb;

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'admin');

-- -------------------------------------------------------

CREATE TABLE `allotment` (
  `address` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` varchar(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `bookingstatus`
--

INSERT INTO `allotment` (`address`, `gender`, `name`, `status`, `date`) VALUES
('kormangla', 'Female', 'Sammy', 'OnUse','2020-05-03');

INSERT INTO `allotment` (`address`, `gender`, `name`, `status`, `date`) VALUES
('madiwala', 'Male', 'Santhosh', 'Returned','2020-05-03');

INSERT INTO `allotment` (`address`, `gender`, `name`, `status`, `date`) VALUES
('kormangla', 'Female', 'Sageetha', 'OnUse','2020-05-03');

INSERT INTO `allotment` (`address`, `gender`, `name`, `status`, `date`) VALUES
('HSR', 'Male', 'Amit', 'OnUse','2020-05-03');


select * from allotment;



--
-- Indexes for table `bookingstatus`
--

Alter table `allotment` add column id int not null auto_increment Primary key;

ALTER TABLE `bookingstatus`
  ADD PRIMARY KEY (`email`,`category`,`type`,`roomWant`,`date`);

--
-- Indexes for table `category`
--


--
-- Constraints for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD CONSTRAINT `fk_01` FOREIGN KEY (`email`) REFERENCES `user` (`email`);
COMMIT;

CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `phone`, `password`) VALUES
('admin', 'admin@admin.com', '1', '1'),
('Sabit', 'iamsabit99@gmail.com', '01744248058', '1'),
('Sabit', 'st.sabit13@gmail.com', '01744248058', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
