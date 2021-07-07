package com.devsuperior.dslearn.entities;

import com.devsuperior.dslearn.entities.enums.ResourceType;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@Entity
@Table(name = "tb_resource")
public class Resource implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;
    private Integer position;
    private String imgUri;
    private ResourceType type;

    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;

    @OneToMany(mappedBy = "resource")
    private List<Section> sections = new ArrayList<>();
}
