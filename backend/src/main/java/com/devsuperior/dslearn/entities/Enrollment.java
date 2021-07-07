package com.devsuperior.dslearn.entities;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.time.Instant;

@Getter
@Setter
@NoArgsConstructor
@EqualsAndHashCode
@Entity
@Table(name = "tb_enrollment")
public class Enrollment implements Serializable {

    @EmbeddedId
    private EnrollmentPK id = new EnrollmentPK();

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant enrollMoment;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant refundMoment;
    private boolean available;
    private boolean onlyUpdate;

    public Enrollment(User user, Offer offer, Instant enrollMoment, Instant refundMoment, boolean available, boolean onlyUpdate) {
        id.setUser(user);
        id.setOffer(offer);
        this.enrollMoment = enrollMoment;
        this.refundMoment = refundMoment;
        this.available = available;
        this.onlyUpdate = onlyUpdate;
    }

    public User getStudent() {
        return id.getUser();
    }

    public void setStudent(User user) {
        id.setUser(user);
    }

    public Offer getOffer() {
        return id.getOffer();
    }

    public void setOffer(Offer offer) {
        id.setOffer(offer);
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Embeddable
    public class EnrollmentPK implements Serializable{
        @ManyToOne
        @JoinColumn(name = "user_id")
        private User user;
        @ManyToOne
        @JoinColumn(name = "offer_id")
        private Offer offer;
    }
}
