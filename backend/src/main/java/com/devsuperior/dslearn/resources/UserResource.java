package com.devsuperior.dslearn.resources;

import com.devsuperior.dslearn.dto.UserDTO;
import com.devsuperior.dslearn.services.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/users")
@Api(tags = "UserResource")
public class UserResource {

    @Autowired
    private UserService service;

    @GetMapping(value = "/{userId}")
    @ApiOperation("Return user by id")
    public ResponseEntity<UserDTO> findById(@PathVariable Long userId) {
        UserDTO userDTO = service.findById(userId);
        return ResponseEntity.ok().body(userDTO);
    }

}
