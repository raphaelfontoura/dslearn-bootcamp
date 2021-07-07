package com.devsuperior.dslearn.entities;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Set;

@Getter @Setter
@NoArgsConstructor
@Entity
@Table(name = "tb_content")
public class Content extends Lesson{
    private String textContent;
    private String videoUri;

    public Content(Long id,
                   String title,
                   Integer position,
                   Section section,
                   String textContent,
                   String videoUri) {
        super(id, title, position, section);
        this.textContent = textContent;
        this.videoUri = videoUri;
    }

}
