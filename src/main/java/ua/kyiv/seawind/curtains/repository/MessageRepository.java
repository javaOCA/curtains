package ua.kyiv.seawind.curtains.repository;

import org.springframework.data.repository.CrudRepository;
import ua.kyiv.seawind.curtains.model.Message;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {
    List<Message> findByTag(String filter);
}

