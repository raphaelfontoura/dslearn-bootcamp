package com.devsuperior.dslearn.services;

import com.devsuperior.dslearn.dto.NotificationDTO;
import com.devsuperior.dslearn.entities.Deliver;
import com.devsuperior.dslearn.entities.Notification;
import com.devsuperior.dslearn.entities.User;
import com.devsuperior.dslearn.repositories.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;

@Service
public class NotificationService {

    @Autowired
    private NotificationRepository repository;
    @Autowired
    private AuthService authService;

    @Transactional(readOnly = true)
    public Page<NotificationDTO> notificationsForCurrentUser(boolean unreadOnly, Pageable pageable) {
        User user = authService.authenticated();
        Page<Notification> notifications = repository.find(user, unreadOnly, pageable);
        return notifications.map(NotificationDTO::new);
    }

    @Transactional
    public void saveDeliverNotification(Deliver deliver) {
        Long sectionId = deliver.getLesson().getSection().getId();
        Long resourceId = deliver.getLesson().getSection().getResource().getId();
        Long offerId = deliver.getLesson().getSection().getResource().getOffer().getId();

        String route = String.format("/offers/%d/resources/%d/sections/%d",offerId,resourceId,sectionId);
        String text = deliver.getFeedback();
        Instant moment = Instant.now();
        User user = deliver.getEnrollment().getStudent();

        Notification notification = new Notification(null,text,moment,false,route,user);
        repository.save(notification);
    }
}
