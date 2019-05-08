-- Then create a procedure called spSumAccount which shows the sum of all the
-- accounts in the table Account and the sum of all deposits/withdrawals from
-- AccountLog. This procedure will help you along the way to make sure the
-- deposits/withdrawals has happened correctly. The procedure should show 2000
-- from Account and 0 from AccountLog at this current state.

DROP PROCEDURE IF EXISTS spSumAccount;
DELIMITER //
CREATE PROCEDURE spSumAccount()
BEGIN
  DECLARE AccountSum DECIMAL;
  DECLARE AccountLogSum DECIMAL;
  SELECT IFNULL(SUM(balanceAccount), 0) FROM Account INTO AccountSum;
  SELECT IFNULL(SUM(amountAccountLog), 0) FROM AccountLog INTO AccountLogSum;

  SELECT AccountSum, AccountLogSum;
END //
DELIMITER ;