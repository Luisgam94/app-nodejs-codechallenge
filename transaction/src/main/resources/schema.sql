CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    version BIGINT DEFAULT 0,
    transaction_external_id VARCHAR(255) NOT NULL,
    account_external_id_debit VARCHAR(255) NOT NULL,
    account_external_id_credit VARCHAR(255) NOT NULL,
    type VARCHAR(100) NOT NULL,
    status VARCHAR(100) NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    value DECIMAL(19,2)
);

-- Índice para búsquedas por transactionExternalId
CREATE INDEX IF NOT EXISTS idx_transaction_external_id ON transactions(transaction_external_id);

-- Índice para búsquedas y control de volumen por cuenta debitora
CREATE INDEX IF NOT EXISTS idx_account_external_id_debit ON transactions(account_external_id_debit);

