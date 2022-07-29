package com.devsuperior.dslearn.services;

import com.devsuperior.dslearn.dto.DeliverDecisionDTO;
import com.devsuperior.dslearn.entities.Deliver;
import com.devsuperior.dslearn.observers.DeliverRevisionObserver;
import com.devsuperior.dslearn.repositories.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.LinkedHashSet;
import java.util.Set;

@Service
public class DeliverService {

    @Autowired
    private DeliverRepository repository;

    private Set<DeliverRevisionObserver> deliverRevisionObservers = new LinkedHashSet<>();

    @PreAuthorize("hasAnyRole('ADMIN','INSTRUCTOR')")
    @Transactional
    public void saveRavision(Long id, DeliverDecisionDTO dto) {
        Deliver deliver = repository.getById(id);
        deliver.setStatus(dto.getStatus());
        deliver.setFeedback(dto.getFeedback());
        deliver.setCorrectCount(dto.getCorrectCount());
        repository.save(deliver);
        for (DeliverRevisionObserver observer:
             deliverRevisionObservers) {
            observer.onSaveDeliver(deliver);
        }
    }

    public void subscribeDeliverRevisionObserver (DeliverRevisionObserver observer) {
        deliverRevisionObservers.add(observer);
    }
}