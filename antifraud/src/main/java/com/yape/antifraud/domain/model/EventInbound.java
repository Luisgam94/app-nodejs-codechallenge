package com.yape.antifraud.domain.model;

import lombok.Getter;
import java.math.BigDecimal;

@Getter
public class EventInbound {
    private Long id;
    private String transactionExternalId;
    private BigDecimal value;
    private String status;
}

