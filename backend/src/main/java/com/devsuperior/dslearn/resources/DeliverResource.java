package com.devsuperior.dslearn.resources;

import com.devsuperior.dslearn.dto.DeliverDecisionDTO;
import com.devsuperior.dslearn.services.DeliverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/deliveries")
public class DeliverResource {

    @Autowired
    private DeliverService service;

    @PutMapping(value = "/{id}")
    public ResponseEntity<Void> updateDeliver(@PathVariable Long id, @RequestBody DeliverDecisionDTO dto) {
        service.saveRavision(id,dto);
        return ResponseEntity.noContent().build();
    }
}
