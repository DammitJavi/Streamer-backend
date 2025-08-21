package dev.javi.streamer.streamer_backend;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StreamerController {

    @GetMapping("/")
    public String Home(){
        return "This will be the home page";
    }

    
}
