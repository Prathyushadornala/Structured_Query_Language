USE jfs_58;
CREATE TABLE bank_accounts (
    account_id INT AUTO_INCREMENT,
    account_number CHAR(12) NOT NULL,
    account_holder_name VARCHAR(120) NOT NULL,
    account_type ENUM('SAVINGS', 'CURRENT', 'FIXED_DEPOSIT') NOT NULL,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    currency_code CHAR(3) NOT NULL DEFAULT 'INR',
    branch_name VARCHAR(100) NOT NULL,
    opened_date DATE NOT NULL,
    interest_rate DECIMAL(5,2) NOT NULL DEFAULT 0.00,
    overdraft_limit DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    account_status VARCHAR(20) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_account_id PRIMARY KEY (account_id),
    CONSTRAINT `uk_account_number` UNIQUE (account_number),
    CONSTRAINT `chk_balance_non_negative` CHECK (balance >= 0),
    CONSTRAINT `chk_overdraft_non_negative` CHECK (overdraft_limit >= 0),
    CONSTRAINT `chk_intrest_rate_range` CHECK (interest_rate BETWEEN 0.00 AND 100.00)
);
INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES ('10998976461', 'Kavya', 'SAVINGS', 50000.00, 'RCl', '2026-01-15', 5.0);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, overdraft_limit)
VALUES ('19752480056', 'Prathyusha', 'CURRENT', 2000.00, 'GUNTUR', '2026-03-22', 100.00);

INSERT INTO bank_accounts (account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES ('17654329075', 'Surya', 'FIXED_DEPOSIT', 30000.00, 'VIJAYAWADA', '2026-06-01', 8.12);

SELECT * FROM bank_accounts;
