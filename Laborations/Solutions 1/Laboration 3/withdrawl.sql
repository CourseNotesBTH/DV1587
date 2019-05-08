-- Verify that the procedure works, first by trying to withdraw
-- 60000 SEK (which should not work)and then 100 SEK (which should work).
-- Verify the contents to the tables with your spSumAccount you made earlier.
-- Next, we will create a stored procedure that will handle the withdrawal process
-- of a customer, spWithdraw. The procedure shall have two parameters, the account
-- number to withdraw money from and the amount of money to withdraw. spWithdraw
-- shall also make sure that it is impossible to withdraw more money than is
-- available in the account. This is done via an IF statement; if the account
-- balance is below 0 when a withdrawal is made it should rollback, otherwise it
-- will commit the transaction.

-- Verify that the procedure works, first by trying to withdraw 60000 SEK (which
-- should not work) and then 100 SEK (which should work). Verify the contents to
-- the tables with your spSumAccount you made earlier.

DROP PROCEDURE IF EXISTS spWithdraw;
DELIMITER //
CREATE PROCEDURE spWithdraw(AccountNumber INT, Amount DECIMAL)
BEGIN
  START TRANSACTION;
    UPDATE Account SET balanceAccount = balanceAccount - ABS(Amount) WHERE nrAccount = AccountNumber;
    IF (SELECT balanceAccount FROM Account WHERE nrAccount = AccountNumber) < 0 THEN
      ROLLBACK;
    END IF;
  COMMIT;
END //
DELIMITER ;