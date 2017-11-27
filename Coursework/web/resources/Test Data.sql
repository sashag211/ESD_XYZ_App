INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('n-duran', 'Nathan Duran', '8 Guinea Lane, Bristol, BS16 2HB', '1983-09-13', '2016-01-01', 'APPROVED', 0);

INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('t-fisher', 'Tom Fisher', '123 Place Rd, Bristol, B1 4BS', '1994-10-20', '2016-01-26', 'APPLIED', 10);

INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('m-mouse', 'Mickey Mouse', '12 Disney Rd, Magic Kingdom, M1 2CK', '1950-10-20', '2016-08-26', 'APPLIED', 10);

INSERT INTO `Members` (`id`, `name`, `address`, `dob`, `dor`, `status`, `balance`) VALUES
('a-curtain', 'Annet Curtain', '45 New Rd, Bath, BA1 5LY', '1988-12-20', '2015-09-26', 'APPROVED', 0);



INSERT INTO `users` (`id`, `password`, `status`) VALUES
('n-duran', '123', 'APPROVED');

INSERT INTO `users` (`id`, `password`, `status`) VALUES
('t-fisher', 'asd', 'APPLIED');

INSERT INTO `users` (`id`, `password`, `status`) VALUES
('m-mouse', 'qwe', 'APPLIED');

INSERT INTO `users` (`id`, `password`, `status`) VALUES
('a-curtain', 'zxc', 'APPROVED');

INSERT INTO `users` (`id`, `password`, `status`) VALUES
('admin', 'admin', 'ADMIN');


INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('n-duran', '2016-4-05', 'Because Reasons', 'APPROVED', 105);

INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('a-curtain', '2016-2-03', 'Because Reasons', 'SUBMITTED', 80);

INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('a-curtain', '2016-2-03', 'Because Reasons', 'SUBMITTED', 50);

INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('me-aydin', '2016-5-02', 'Because Reasons', 'APPROVED', 120);

INSERT INTO `Claims` (`mem_id`, `date`, `rationale`, `status`, `amount`) VALUES
('me-aydin', '2016-11-03', 'Because Reasons', 'APPROVED', 90);


INSERT INTO `payments` (`mem_id`, `type_of_payment`, `amount`, `date`) VALUES
('n-duran', 'CARD', 10, '2016-01-04');

INSERT INTO `payments` (`mem_id`, `type_of_payment`, `amount`, `date`) VALUES
('a-curtain', 'CARD', 10, '2016-10-01');

INSERT INTO `payments` (`mem_id`, `type_of_payment`, `amount`, `date`) VALUES
('m-mouse', 'CARD', 10, '2016-9-01');