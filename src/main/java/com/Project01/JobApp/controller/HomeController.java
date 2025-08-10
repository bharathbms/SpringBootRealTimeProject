package com.Project01.JobApp.controller;

import com.Project01.JobApp.service.JobService;
import com.Project01.JobApp.model.PostJob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private JobService service;

    @GetMapping({"/", "home"})
    public String home(){
        System.out.println("entering home");
        return "home";
    }

    @GetMapping("/addjob")
    public String addjob(){
        //service.addjob(m);
        return "addjob";
    }

    @PostMapping("/handleform")
    public String handleForm(PostJob postjob, Model m) {
        service.addjob(postjob);
        m.addAttribute("postjob", postjob);
        return "success";
    }

    @GetMapping({"/viewalljobs", "/viewalljob"})
    public String viewalljob(Model m){
       List<PostJob> view_jobs = service.getalljobs();
        m.addAttribute("jobs", view_jobs);
        System.out.println("nodjndwdeji");
        return "viewalljob";
    }

    @GetMapping("/searchjob")
    public String searchjob(@RequestParam(required = false) String title, String location, Model model) {

        System.out.println("dksnjdsbudbquwhui");
        List<PostJob> jobs;
        if (title == null || title.trim().isEmpty() ||
            location == null || location.trim().isEmpty()) {

            return "redirect:/home";
        } else {
            jobs = service.searchjobs(title, location);
        }

        model.addAttribute("jobs", jobs);

        return "searchjob";
    }


}
