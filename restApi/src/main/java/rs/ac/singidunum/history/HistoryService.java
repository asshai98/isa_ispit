package rs.ac.singidunum.history;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.history.History;
import rs.ac.singidunum.history.HistoryRepo;

import java.util.List;
import java.util.Optional;

@Service
public class HistoryService {

    @Autowired
    HistoryRepo historyRepo;

    public List<History> fetchAllHistories(){ return historyRepo.findAll();}

    public Optional<History> fetchHistoriesById(int history_id){
        return historyRepo.findById(history_id);
    }
}
