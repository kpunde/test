package com.example.demo.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/v1/")
public class TestController {

    @GetMapping("test")
    public ResponseEntity<Map> getTestResponse(){
        Map<String, String> responseMap= new HashMap<>();
        responseMap.put("result", "Test is successful");
        return new ResponseEntity<>(responseMap, HttpStatus.OK);
    }
}
