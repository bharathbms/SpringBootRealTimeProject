package com.Project01.JobApp.repo;

import com.Project01.JobApp.model.PostJob;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Repository
public class JobRepo {

    List<PostJob> jobs = new ArrayList<PostJob>(
            Arrays.asList(
                    new PostJob("Java Developer", "Tech Corp", "New York", "Develop backend systems in Java and Spring Boot."),
                    new PostJob("Frontend Engineer", "Web Solutions", "San Francisco", "Build and maintain React-based user interfaces."),
                    new PostJob("Data Analyst", "Data Insights", "Chicago", "Analyze data trends and create reports.")
            )
    );

    public void addjob(PostJob postjob){
        jobs.add(postjob);
    }

    public List<PostJob> getalljobs(){
        return jobs;
    }

    public List<PostJob> searchjobs(String title, String location){
        List<PostJob> filteredjobs = jobs.stream()
                .filter(jobs-> jobs.getTitle().toLowerCase().contains(title.toLowerCase()))
                .filter(jobs->jobs.getLocation().toLowerCase().contains(location.toLowerCase()))
                .toList();
        return filteredjobs;
    }
}
