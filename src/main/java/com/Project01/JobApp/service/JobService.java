package com.Project01.JobApp.service;

import com.Project01.JobApp.model.PostJob;
import com.Project01.JobApp.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepo repo;

    public void addjob(PostJob postjob){
        repo.addjob(postjob);
    }

    public List<PostJob> getalljobs(){
        return repo.getalljobs();
    }

    public List<PostJob> searchjobs(String title, String location){
        List<PostJob> searchjobs = repo.searchjobs(title, location);
        return searchjobs;
    }

}
