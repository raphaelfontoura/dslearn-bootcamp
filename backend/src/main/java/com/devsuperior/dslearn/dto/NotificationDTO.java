package com.devsuperior.dslearn.dto;

import com.devsuperior.dslearn.entities.Notification;
import com.devsuperior.dslearn.entities.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.io.Serializable;
import java.time.Instant;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
public class NotificationDTO implements Serializable {

    private Long id;
    private String text;
    private Instant moment;
    private Boolean read;
    private String route;
    private Long userId;

    public NotificationDTO(Notification entity) {
        id = entity.getId();
        text = entity.getText();
        moment = entity.getMoment();
        read = entity.getRead();
        route = entity.getRoute();
        userId = entity.getUser().getId();
    }
}
