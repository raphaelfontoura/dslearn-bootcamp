package com.devsuperior.dslearn.dto;

import com.devsuperior.dslearn.entities.enums.DeliverStatus;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
public class DeliverDecisionDTO implements Serializable {
    private DeliverStatus status;
    private String feedback;
    private Integer correctCount;
}
