package com.devsuperior.dslearn.entities;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@NoArgsConstructor
@Getter @Setter
@EqualsAndHashCode
@Entity
@Table(name = "tb_lesson")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Lesson implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private Integer position;

    @ManyToOne
    @JoinColumn(name = "section_id")
    private Section section;

    @ManyToMany
    @JoinTable(name = "tb_lessons_done",
        joinColumns = @JoinColumn(name = "lesson_id"),
        inverseJoinColumns = {
                @JoinColumn(name = "user_id"),
                @JoinColumn(name = "offer_id")
            })
    @Setter(AccessLevel.NONE)
    private Set<Enrollment> enrollmentsDone = new HashSet<>();

    @Setter(AccessLevel.NONE)
    @OneToMany(mappedBy = "lesson")
    private List<Deliver> deliveries = new ArrayList<>();

    public Lesson(Long id, String title, Integer position, Section section) {
        this.id = id;
        this.title = title;
        this.position = position;
        this.section = section;
    }
}
